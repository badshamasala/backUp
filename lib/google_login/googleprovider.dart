// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/all_api_url/api_list.dart';
import 'package:flutter_application_1/chat_app/shared_preference.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class Googleprovider extends ChangeNotifier {
  final googlesignin = GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googlelogin() async {
    try {
      final googleuser = await googlesignin.signIn();

      if (googleuser == null) {
        return;
      }

      _user = googleuser;
      final googleauth = await googleuser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleauth.accessToken, idToken: googleauth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
    } on PlatformException catch (e) {
      Fluttertoast.showToast(msg: 'Something went wrong');

      print('Error --- ${e.toString()}');
      return false;
    }

    notifyListeners();
  }

  Future loginmethod(String value1, String value2, context) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.loginApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          /*      "api_key": "myttube123456", */
          "username": value1,
          "password": value2
        }),
      );
      var jsondata = jsonDecode(response.body);
      print(response.body);

      var status = jsondata["id"];
      var token = jsondata["token"];
      await SharedPref.saveToken(token);
      print(status);

      if (response.statusCode == 200) {
        return true;
      } else {
        Fluttertoast.showToast(
            msg: 'Check Your username and Password',
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future otpmethod(dynamic mobileno) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.sendOtp),
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

      if (status == true) {
        return token;
      } else {
        Fluttertoast.showToast(
            msg: "Wrong OTP",
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future checkUsername(dynamic username) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.verifyUsername),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "user_id": username,
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response-- ${response.body}');

      var status = jsondata[0]["status"];
      print('Status - $status');

      if (response.statusCode == 200) {
        return status;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future checkMobileno(dynamic mobile) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.verifyMobileno),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "mobile": mobile,
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response-- ${response.body}');

      var status = jsondata[0]["status"];
      print('Status - $status');

      if (response.statusCode == 200) {
        return status;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future checkEmailId(dynamic email) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.verifyEmail),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "email": email,
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response-- ${response.body}');

      var status = jsondata[0]["status"];
      print('Status - $status');

      if (response.statusCode == 200) {
        return status;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future editPassword(username, password) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.editpassword),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "user_id": username,
          "password": password,
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response-- ${response.body}');

      var status = jsondata[0]["status"];
      print('Status - $status');

      if (response.statusCode == 200) {
        return status;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future registerUser(mobileno, username, password, fullname, email) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.userRegistration),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "mobile_no": mobileno,
          "acc_type": "Viewer",
          "user_id": username,
          "password": password,
          "full_name": fullname,
          "email": email,
          "show_all": true
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response-- ${response.body}');

      var status = jsondata[0]["status"];
      print('Status - $status');

      if (response.statusCode == 200) {
        return status;
      } else {
        print('error');
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future logout() async {
    await googlesignin.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
