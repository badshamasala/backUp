import 'package:flutter/material.dart';
import 'package:flutter_application_1/CHAT_APP/auth_service.dart';

class Chathomepage extends StatefulWidget {
  const Chathomepage({Key? key}) : super(key: key);

  @override
  State<Chathomepage> createState() => _ChathomepageState();
}

class _ChathomepageState extends State<Chathomepage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
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
