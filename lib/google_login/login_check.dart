import 'package:flutter/material.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:provider/provider.dart';

class LoginCheck extends StatefulWidget {
  const LoginCheck({Key? key}) : super(key: key);

  @override
  State<LoginCheck> createState() => _LoginCheckState();
}

class _LoginCheckState extends State<LoginCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final provider =
                      Provider.of<Googleprovider>(context, listen: false);
                  print("----------------------------------");
                  await provider.googlelogin();
                },
                child: Text("Google Login")),
          ),
          ElevatedButton(
              onPressed: () async {
                final provider =
                    Provider.of<Googleprovider>(context, listen: false);
                print(
                    "asbjasbjasbjjasjbasbjasjbasjbasbjasjbasbj--------------------");
                await provider.logout();
              },
              child: Text("logout")),
        ],
      ),
    );
  }
}
