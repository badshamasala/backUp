import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Googleprovider extends ChangeNotifier {
  final googlesignin = GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googlelogin() async {
    try {
      final googleuser = await googlesignin.signIn();

      if (googleuser == null) return;

      _user = googleuser;
      final googleauth = await googleuser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleauth.accessToken, idToken: googleauth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Something went wrong');
      print(e.toString());
    }

    notifyListeners();
  }

  Future loginmethod(String value1, String value2, context) async {
    final response = await http.post(
      Uri.parse('http://103.69.242.42:8080/TestAPI/Auth.svc/authenticateUser'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          {"api_key": "myttube123456", "user_id": value1, "password": value2}),
    );
    var jsondata = jsonDecode(response.body);
    print(response.body);

    var status = jsondata[0]["status"];
    print(status);

    if (status == "True") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future otpmethod(dynamic mobileno) async {
    final response = await http.post(
      Uri.parse('http://103.69.242.42:8080/TestAPI/message.svc/sendOTP'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "api_key": "myttube123456",
        "mobile_no": mobileno,
      }),
    );
    var jsondata = jsonDecode(response.body);
    print(response.body);

    var status = jsondata[0]["status"];
    print(status);
    var token = jsondata[0]["token"];
    print(token);
    dynamic saveotp;

   


    Future<String?> getUserOtp() async {
      SharedPreferences sf = await SharedPreferences.getInstance();
      return sf.getString(saveotp);
    }

    if (status == true) {
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future logout() async {
    await googlesignin.disconnect();
    FirebaseAuth.instance.signOut();
  }
}

class SharedPref {
  dynamic saveotp;
  Future saveUserOtp(String token) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(saveotp, token);
  }
}
