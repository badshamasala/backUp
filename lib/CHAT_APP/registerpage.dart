// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT_APP/auth_service.dart';
import 'package:flutter_application_1/CHAT_APP/chathomepage.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool isloading = false;
  AuthService authService = AuthService();
  String fullname = '';
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
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'fullname',
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(5))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter full name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        fullname = value;
                      });
                    },
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
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        register();
                      },
                      child: const Text('Register'))
                ],
              ),
            ),
    );
  }

  register() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isloading = true;
      });

      await authService.registerUser(fullname, email, password)
          .then((value) async {
        if (value == true) {
            await SharedPref.saveUserLoggedInStatus(true);
          await SharedPref.saveUserEmail(email);
          await SharedPref.saveUserFullName(fullname);
        
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chathomepage()),
          );
          setState(() {
            isloading = false;
          });
        } else {
          setState(() {
            isloading = false;
          });
        }
      });
    }
  }
}
