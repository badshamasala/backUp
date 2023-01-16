// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/all_api_url/api_list.dart';
import 'package:flutter_application_1/chat_app/shared_preference.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final UserStore getkar = Get.put(UserStore());

class Googleprovider extends ChangeNotifier {
  final googlesignin = GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  final db = FirebaseFirestore.instance;
  Future googlelogin() async {
    try {
      final user = await googlesignin.signIn();
      if (user == null) return;
      _user = user;
      final googleauth = await user.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleauth.accessToken, idToken: googleauth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
      /* if (user != null) {
        print("---------------------------");
        final googleauth = await user.authentication;

        final credential = GoogleAuthProvider.credential(
            accessToken: googleauth.accessToken, idToken: googleauth.idToken);

        await FirebaseAuth.instance.signInWithCredential(credential);

       /*  String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? "";
        UserLoginResponseEntity userProfile = UserLoginResponseEntity();

        userProfile.displayName = displayName;
        userProfile.email = email;
        userProfile.accessToken = id;
        userProfile.photoUrl = photoUrl;

        getkar.saveProfile(userProfile);
        var userbase = await db
            .collection("users")
            .withConverter(
              fromFirestore: UserData.fromFirestore,
              toFirestore: (UserData userdata, options) =>
                  userdata.toFirestore(),
            )
            .where("id", isEqualTo: id)
            .get();
        if (userbase.docs.isEmpty) {
          final data = UserData(
              id: id,
              name: displayName,
              email: email,
              photourl: photoUrl,
              location: "",
              fcmtoken: "",
              addtime: Timestamp.now().toString());
          await db
              .collection("users")
              .withConverter(
                fromFirestore: UserData.fromFirestore,
                toFirestore: (UserData userdata, options) =>
                    userdata.toFirestore(),
              )
              .add(data);
        }
        Fluttertoast.showToast(msg: 'login Success');
        Get.to(() => Homechat()); */
      } */
    } catch (e) {
      Fluttertoast.showToast(msg: 'Something went wrong');

      print('Error --- ${e.toString()}');
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
  newmethod(pick) async {
    var headers = {
  'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEiLCJuYmYiOjE2NzM4NDU4MTYsImV4cCI6MTY3NDQ1MDYxNiwiaWF0IjoxNjczODQ1ODE2fQ.tnP8Cj1xDNUKvmXYotw4DAGodOt4cNVZFq1tnCHpNW4'
};
var request = http.MultipartRequest('POST', Uri.parse('https://api.myttube.com/api/Post/add-post'));
request.fields.addAll({
  'api_key': 'myttube123456',
  'signup_master_id': '2',
  'post_type': 'image',
  'short_description': 'test',
  'long_description': 'test',
  'has_tag': 'flutter',
  'mention_profile': 'saifs377',
  'url_link': 'https://localhost:44328/api/Post/add-post',
  'url_music': 'https://localhost:44328/api/Post/add-post',
  'location': 'Mumbai',
  'schedule_date': '10-08-2023',
  'partner_id': '1',
  'restricted_mode': 'true',
  'single_file': ''
});
request.files.add(await http.MultipartFile.fromPath('multiple_files', pick.toString()));
/* request.files.add(await http.MultipartFile.fromPath('multiple_files', '/C:/Users/ADMIN/Pictures/Screenshots/Screenshot (6).png')); */
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

  }

  Future addPost( pickedImages) async {
    try {
      var token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEiLCJuYmYiOjE2NzM4NDU4MTYsImV4cCI6MTY3NDQ1MDYxNiwiaWF0IjoxNjczODQ1ODE2fQ.tnP8Cj1xDNUKvmXYotw4DAGodOt4cNVZFq1tnCHpNW4";
      final response = await http.post(
        Uri.parse(ApiUrl.addPost),
        headers: <String, String>{
          /*     'Content-Type': 'multipart/form-data', */
          'Authorization': 'Bearer $token'
        },
        body: /* jsonEncode( */ {
          "api_key": "myttube123456",
          "signup_master_id": "2",
          "post_type": "image",
          "short_description": "test",
          "long_description": "test",
          "has_tag": "flutter",
          "mention_profile": "saifs377",
          "url_link": "https://localhost:44328/api/Post/add-post",
          "url_music": "https://localhost:44328/api/Post/add-post",
          "location": "Mumbai",
          "schedule_date": "10-08-2023",
          "partner_id": "1",
          "restricted_mode": "true",
          "multiple_files": pickedImages,
          "single_file": "image",
        } /* ) */,
      );

      var jsondata = jsonDecode(response.body);
      /*      print(response.body); */
      print(jsondata);

      if (response.statusCode == 200) {
        return true;
      } else {
        Fluttertoast.showToast(
            msg: 'Something Went Wrong',
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

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  final _isLogin = false.obs;

  String token = '';
  final _profile = UserLoginResponseEntity().obs;

  bool get isLogin => _isLogin.value;
  UserLoginResponseEntity get profile => _profile.value;

  bool get hasToken => token.isNotEmpty;
  String STORAGE_USER_PROFILE_KEY = "";
  String STORAGE_USER_TOKEN_KEY = "";

  @override
  void onInit() async {
    super.onInit();
    SharedPreferences sf = await SharedPreferences.getInstance();
    token = sf.getString(STORAGE_USER_TOKEN_KEY)!;
    var profileOffline = sf.getString(STORAGE_USER_PROFILE_KEY);

    if (profileOffline!.isNotEmpty) {
      _isLogin.value = true;
      _profile(UserLoginResponseEntity.fromJson(jsonDecode(profileOffline)));
    }
  }

  Future<void> setToken(String value) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    sf.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  Future<void> saveProfile(UserLoginResponseEntity profile) async {
    _isLogin.value = true;
    SharedPreferences sf = await SharedPreferences.getInstance();
    sf.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
    setToken(profile.accessToken!);
  }
}

class UserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  String? email;
  String? photoUrl;

  UserLoginResponseEntity(
      {this.accessToken, this.displayName, this.email, this.photoUrl});

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        email: json["email"],
        photoUrl: json["photoUrl"],
      );
  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "email": email,
        "photoUrl": photoUrl
      };
}

class UserData {
  String? id;
  String? name;
  String? email;
  String? photourl;
  String? location;
  String? fcmtoken;
  String? addtime;

  UserData({
    this.id,
    this.name,
    this.email,
    this.photourl,
    this.location,
    this.fcmtoken,
    this.addtime,
  });

  factory UserData.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserData(
      id: data?["id"],
      name: data?["name"],
      email: data?["email"],
      photourl: data?["photourl"],
      location: data?["location"],
      fcmtoken: data?["fcmtoken"],
      addtime: data?["addtime"],
    );
  }
  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (email != null) "id": email,
      if (photourl != null) "id": photourl,
      if (location != null) "id": location,
      if (fcmtoken != null) "id": fcmtoken,
      if (addtime != null) "id": addtime,
    };
  }
}
