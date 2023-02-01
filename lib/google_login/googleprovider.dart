// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/add_post/hashTag.dart';
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

  dynamic profileImage;
  Future loginmethod(String value1, String value2) async {
    try {
      final response =
          await http.post(Uri.parse(ApiUrl.loginApi), headers: <String, String>{
        /* 'Content-Type': 'application/json; charset=UTF-8', */
      }, body: /* jsonEncode( */ {
        /*      "api_key": "myttube123456", */
        "username": value1,
        "password": value2
      } /* ), */
              );
      print(
          "Value1--------------------------------------------------------------$value1");
      print(
          "Value2--------------------------------------------------------------$value2");
      var jsondata = jsonDecode(response.body);
      print(
          "Response-----------------------------------------------------------${response.body}");

      var userId = jsondata["userId"];
      var fullName = jsondata["fullName"];
      profileImage = jsondata["profile_path"];
      var token = jsondata["token"];
      print(
          "123456------------------------------------------------------------------------------$profileImage");

      if (response.statusCode == 200) {
        await SharedPref.savemytubeUsername(userId);
        await SharedPref.savemytubeFullname(fullName);
        await SharedPref.savemytubeProfileImage(profileImage);
        await SharedPref.saveToken(token);
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
    notifyListeners();
  }

  dynamic follower;
  dynamic following;
  dynamic bio;
  dynamic profileBanner;
  dynamic profileRating;
  dynamic isProfileVerifed;
  getUserBioBanner() async {
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc1MjQwODUwLCJleHAiOjE2NzU4NDU2NTAsImlhdCI6MTY3NTI0MDg1MH0.pv02Pe7tHoOYesKXBTAw6GrkmpRcl_YTxV-WgZHeNdU'
    };
    var request = http.MultipartRequest(
        'GET', Uri.parse('https://api.myttube.com/api/profile/get-profile-id'));
    request.fields.addAll({'api_key': 'myttube123456', 'signup_id': '10097'});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    var jsondata = await jsonDecode(await response.stream.bytesToString());
    follower = jsondata["follower"];
    following = jsondata["following"];
    bio = jsondata["bio"];
    profileBanner = jsondata["profile_banner"];
    profileRating = jsondata["profile_rating"];
    isProfileVerifed = jsondata["is_profile_verifed"];
    print(jsondata["follower"]);

    if (response.statusCode == 200) {
      /* print(await response.stream.bytesToString()); */
    } else {
      print(response.reasonPhrase);
    }
    notifyListeners();
  }

  postImageMethod(listimage) async {
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEiLCJuYmYiOjE2NzM4NDU4MTYsImV4cCI6MTY3NDQ1MDYxNiwiaWF0IjoxNjczODQ1ODE2fQ.tnP8Cj1xDNUKvmXYotw4DAGodOt4cNVZFq1tnCHpNW4'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://api.myttube.com/api/Post/add-post'));
    request.fields.addAll({
      'api_key': 'myttube123456',
      'signup_master_id': '2',
      'post_type': 'image',
      'short_description': 'rashidbadsha',
      'long_description': 'masala',
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
    for (var img in listimage) {
      request.files
          .add(await http.MultipartFile.fromPath('multiple_files', img));
      print("--------------------------");
    }
    print("post done----------------------------------------");
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("ho gaya----------------------------------------");
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  bool isloading = false;

  postVideoMethod(video) async {
    print("-------------------Api se Pehel-----------------------------");
    var token = await SharedPref.getToken();
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0NDU0NjkwLCJleHAiOjE2NzUwNTk0OTAsImlhdCI6MTY3NDQ1NDY5MH0.f4sGel40WAQecA94YLbXTrvN1FySUQs0riRkVMknpEg'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://api.myttube.com/api/Post/add-post'));
    request.fields.addAll({
      'api_key': 'myttube123456',
      'signup_master_id': '2',
      'post_type': 'video',
      'short_description': 'rashidbadsha',
      'long_description': 'masala',
      'has_tag': 'flutter',
      'mention_profile': 'saifs377',
      'url_link': 'https://localhost:44328/api/Post/add-post',
      'url_music': 'https://localhost:44328/api/Post/add-post',
      'location': 'Mumbai',
      'schedule_date': '10-08-2023',
      'partner_id': '1',
      'restricted_mode': 'true',
    });
    print("-------------------Api ke Baad-----------------------------");
    print(
        "Path Check-----------------------------------------------------------$video");
    request.files.add(await http.MultipartFile.fromPath('single_file', video));
    print("1----------------------------------------");
    request.headers.addAll(headers);
    print("2----------------------------------------");
    isloading = true;
    http.StreamedResponse response = await request.send().whenComplete(() {
      isloading = false;
    });
    print("3----------------------------------------");
    if (response.statusCode == 200) {
      print("4----------------------------------------");
      print(await response.stream.bytesToString());
      print("5----------------------------------------");
    } else {
      print(response.reasonPhrase);
    }
    notifyListeners();
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
/*   shhjsd(){
    final respose = 
  } */

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

  Future newrRegisterMethod(mobileno, username, password, fullname, email,
      accountType, genderkiValue, image) async {
    print("vfgfgfgfy");
    var request =
        http.MultipartRequest('POST', Uri.parse(ApiUrl.userRegistration));
    request.fields.addAll({
      'api_key': 'myttube123456',
      "mobile_no": mobileno,
      "acc_type": accountType,
      "user_id": username,
      "password": password,
      "full_name": fullname,
      "email": email,
      "show_all": "true",
      "register_type": "manual",
      "signup_language": "english",
      "gender": genderkiValue,
      "dob": "12-10-2002",
      "dd": "10",
      "mm": "2002",
      "yy": "male",
      "age_group": "21-45",
    });
    print("Mobilemo---------$mobileno");
    print("Accounttype--------$accountType");
    print("Username----------------$username");
    print("Password---------------$password");
    print("Full name---------------$fullname");
    print("Email-----------------------$email");
    print("Gender---------------------$genderkiValue");
    print("Image---------------------$image");
    request.files.add(await http.MultipartFile.fromPath('profile_img', image));

    http.StreamedResponse response = await request.send();
    var jsondata = jsonDecode(await response.stream.bytesToString());

    print('JsonData-- $jsondata');
    /*  print('Response-- $response'); */

    var status = jsondata["status"];
    print('Status - $status');
    if (response.statusCode == 200) {
      /* print("--------------------------------------${await response.stream.bytesToString()}"); */
      return status;
    } else {
      print(response.reasonPhrase);
    }
  }

  /* Future registerUser(mobileno, username, password, fullname, email,
      accountType, genderkiValue) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.userRegistration),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "api_key": "myttube123456",
          "mobile_no": mobileno,
          "acc_type": accountType,
          "user_id": username,
          "password": password,
          "full_name": fullname,
          "email": email,
          "show_all": true,
          "register_type": "manual",
          "signup_language": "english",
          "gender": genderkiValue,
          "dob": "15-10-2002",
          "dd": "10",
          "mm": "2002",
          "yy": "male",
          "age_group": "21-45",
          "profile_img": "image",
        }),
      );
      var jsondata = jsonDecode(response.body);
      print('Response.body-- ${response.body}');
      print('JsonData-- $jsondata');
      print('Response-- $response');

      var status = jsondata["status"];
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
  } */

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
