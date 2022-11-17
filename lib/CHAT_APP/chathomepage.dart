import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT_APP/auth_service.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';

class Chathomepage extends StatefulWidget {
  const Chathomepage({Key? key}) : super(key: key);

  @override
  State<Chathomepage> createState() => _ChathomepageState();
}

class _ChathomepageState extends State<Chathomepage> {
  final _useremail = "";
  var _userpassword = "";
  var _userfullname = "";
  var _usermobile = "";
  var _userUsername = "";
  @override
  void initState() {
    super.initState();
    getmytubeMobile();
    getmytubeUsername();
    getmytubePassword();
    getmytubeFullname();
    getUserEmail();
  }

  getmytubeMobile() async {
    await SharedPref.getmytubeMobileno().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _usermobile = value;
        });
      }
    });
  }

  getmytubeUsername() async {
    await SharedPref.getmytubeUsername().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _userUsername = value;
        });
      }
    });
  }

  getmytubePassword() async {
    await SharedPref.getmytubePassword().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _userpassword = value;
        });
      }
    });
  }

  getmytubeFullname() async {
    await SharedPref.getmytubeFullname().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _userfullname = value;
        });
      }
    });
  }

  getUserEmail() async {
    await SharedPref.getmytubeEmail().then((value) {
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
          const Text('axaxaxaxa'),
          Text(_usermobile),
          Text(_userUsername),
          Text(_userpassword),
          Text(_userfullname),
          Text(_useremail),
          ElevatedButton(
              onPressed: () {
                authService.logout(context);
              },
              child: const Text('logout'))
        ],
      ),
    );
  }
}
