// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT_APP/auth_service.dart';
import 'package:flutter_application_1/CHAT_APP/chathomepage.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';

class LoginPage12 extends StatefulWidget {
  const LoginPage12({super.key});

  @override
  State<LoginPage12> createState() => _LoginPage12State();
}

class _LoginPage12State extends State<LoginPage12> {
  final _formKey = GlobalKey<FormState>();
  bool isloading = false;
  AuthService authService = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(5))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(
                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please Enter a valid Email';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(5))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return StatefulBuilder(
                                      builder: (context, setState) {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                labelText: 'Email',
                                                border: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                        color: Colors.black,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please Enter Email";
                                              } else if (!RegExp(
                                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                  .hasMatch(value)) {
                                                return 'Please Enter a valid Email';
                                              }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                email = value;
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              FirebaseAuth.instance
                                                  .sendPasswordResetEmail(
                                                      email: email);
                                            },
                                            child: const Text('Change Password'))
                                      ],
                                    );
                                  });
                                });
                          },
                          child: const Text('Forgot Password'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: const Text('login'))
                ],
              ),
            ),
    );
  }

  login() async {
    if (_formKey.currentState!.validate()) {
    /*   setState(() {
        isloading = true;
      }); */

     /*  await authService.loginUser(email, password).then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(email); */
          await SharedPref.saveUserEmail(email);
          await SharedPref.saveUserPassword(password);
          await SharedPref.saveUserLoggedInStatus(true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chathomepage()),
          );
          /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chathomepage()),
          );
          setState(() {
            isloading = false;
          });
        } else {
          setState(() {
            isloading = false;
          });
        }
      }); */
    }
  }
}
