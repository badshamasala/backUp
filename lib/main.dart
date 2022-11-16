import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/CHAT_APP/chathomepage.dart';
import 'package:flutter_application_1/CHAT_APP/loginpage.dart';
import 'package:flutter_application_1/CHAT_APP/sharedPref.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';

import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_application_1/SHARE/googlemaps1.dart';
import 'package:flutter_application_1/forloppractise.dart';
import 'package:flutter_application_1/homepage/ads.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/checkimage1.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/homepage/self_profile.dart';
import 'package:flutter_application_1/homepage/verification1.dart';

import 'package:flutter_application_1/localestring.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await SharedPref.getUserLoggedInStatus().then((value) {
    /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _isLoggedIn = value;
        });
      }
    });
  }

  /* final Future<FirebaseApp> _initialization = Firebase.initializeApp(); */
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Googleprovider()),
    /*     ChangeNotifierProvider(create: (_) => ProviderUpdateSeconds()), */
      ],
      child: GetMaterialApp(
          translations: LocalString(),
          locale: Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          /*   supportedLocales: L10n.all,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
      ], */

          home: HomePage() /* LoginPage12() */
             /*  IntroScreen() */ /* _isLoggedIn
              ? Chathomepage()
              : LoginPage12() */ /* FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('Error');
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return RegisterPage();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ), */
          //home: GooglePage1(),
          ),
    );
  }
}
