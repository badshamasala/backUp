/* import 'package:cloud_firestore/cloud_firestore.dart';
/* import 'package:firebase_chat/common/entities/user.dart'; */

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['openid']);

class SignInController extends GetxController {
  SignInController();

  final db = FirebaseFirestore.instance;

  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
   
/* 
        UserLoginResponseEntity(); ththh =  */
      }
    } catch (e) {}
  }
} */
