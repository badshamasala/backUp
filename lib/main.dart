import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googlenewpage.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_application_1/SHARE/shareprofile.dart';

import 'package:flutter_application_1/homepage/homepage.dart';

import 'package:flutter_application_1/ONBOARDING/startPage.dart';
import 'package:flutter_application_1/interaction.dart';
import 'package:flutter_application_1/listcheck.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Googleprovider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Dem',
        theme: ThemeData(
          primarySwatch: Colors.blue,
       
        ),
        /*  supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'EG'),
          Locale('hi', 'IN'),
          Locale('es', 'EC'),
        ], */

// Returns a locale which will be used by the app
        /* localeResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).
          return supportedLocales.first;
        }, */
        home: HomePage(),
        //home: GooglePage1(),
      ),
    );
  }
}
