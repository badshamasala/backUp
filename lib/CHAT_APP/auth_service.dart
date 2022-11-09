import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/CHAT_APP/database_service.dart';
import 'package:flutter_application_1/CHAT_APP/loginpage.dart';
import 'package:flutter_application_1/CHAT_APP/sharedPref.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future registerUser(fullname, email, password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;
      final list =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);

      if (user != null) {
        await DatabaseService(uid: user.uid)
            .addUserData(fullname, email, password);
        return true;
      } else {
        print('error');
      }
    } catch (signUpError) {
      Fluttertoast.showToast(
          msg: signUpError.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future loginUser(email, password) async {
    try {
      User user = (await firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        return true;
      } else {
        print('error');
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future logout(context) async {
    try {
      await SharedPref.saveUserEmail("");
      await SharedPref.saveUserFullName("");
      await SharedPref.saveUserLoggedInStatus(false);
      await firebaseAuth.signOut();
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage12()),
          );
    } catch (e) {
      return null;
    }
  }
}
