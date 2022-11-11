import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT_APP/auth_service.dart';
import 'package:flutter_application_1/CHAT_APP/sharedPref.dart';

class Chathomepage extends StatefulWidget {
  const Chathomepage({Key? key}) : super(key: key);

  @override
  State<Chathomepage> createState() => _ChathomepageState();
}

class _ChathomepageState extends State<Chathomepage> {
  var _useremail = "";
  var _userpassword = "";
  @override
  void initState() {
    super.initState();
    getUserEmail();
    getUserPassword();
  }

  getUserEmail() async {
    await SharedPref.getUserEmail().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _useremail = value;
        });
      }
    });
  }

  getUserPassword() async {
    await SharedPref.getUserPassword().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _userpassword = value;
        });
      }
    });
  }

  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(''),
      ),
      body: Column(
        children: [
          Text('axaxaxaxa'),
          Text(_useremail),
          Text(_userpassword),
          ElevatedButton(
              onPressed: () {
                authService.logout(context);
              },
              child: Text('logout'))
        ],
      ),
    );
  }
}
