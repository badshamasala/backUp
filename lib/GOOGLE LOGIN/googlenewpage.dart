import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_application_1/homepage/homepage.dart';

class GooglePage1 extends StatelessWidget {
  const GooglePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return const HomePage();
            } else if (snapshot.hasError) {
              return const Center(child: Text('Something wrong'));
            } else {
              return const LoginPage();
            }
          }),
    );
  }
}
