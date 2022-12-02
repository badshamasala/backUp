// ignore_for_file: unused_field
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';
import 'package:flutter_application_1/GLOBALS/app_theme_widget.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:flutter_application_1/ONBOARDING/lsts_check_sms.dart';
import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_application_1/ONBOARDING/start_page.dart';
import 'package:flutter_application_1/SHARE/atrompost.dart';
import 'package:flutter_application_1/SHARE/expandale_button_check.dart';
import 'package:flutter_application_1/SHARE/mapPractise.dart';
import 'package:flutter_application_1/SHARE/neu_button.dart';
import 'package:flutter_application_1/SHARE/screenshot_image.dart';
import 'package:flutter_application_1/SHARE/stripe_payment.dart';
import 'package:flutter_application_1/SHARE/tag_friend.dart';
import 'package:flutter_application_1/chat_screen1.dart';
import 'package:flutter_application_1/homepage/chat_screen.dart';
import 'package:flutter_application_1/homepage/chatmytube.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/localestring.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'SHARE/new_image_picker.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Stripe.publishableKey = 'pk_test_51M9mJrSIrNH5UrZHRmyRLLHDVaQaI8pPKBmnq53pnCRxYQauwgEl0nDbyClMVVnBT9ehNfs10DV26QHGCShqwZ9P00orFyOx8b';
  runApp(MyApp());
}

/* class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
} */

class /* _ */ MyApp /* State */ extends /* State<MyApp> */ StatelessWidget {
/*   bool _isLoggedIn = false; */

  /* @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    getUserLoggedInStatus();
  } */

  /* getUserLoggedInStatus() async {
    await SharedPref.getUserLoggedInStatus().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {
          _isLoggedIn = value;
        });
      }
    });
  } */

  /* final Future<FirebaseApp> _initialization = Firebase.initializeApp(); */
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Googleprovider()),
        ChangeNotifierProvider(create: (_) => TagFriendProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        /*      ChangeNotifierProvider(create: (_) => ThemeProvider()), */
        /*     ChangeNotifierProvider(create: (_) => ProviderUpdateSeconds()), */
      ],
      child: /* Get */ ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          builder: (context, child) {
            final themeProvider = Provider.of<ThemeProvider>(context);
            return GetMaterialApp(
                themeMode: themeProvider.themeMode,
                theme: AppTheme.lighttheme,
                darkTheme: AppTheme.darktheme,
                translations: LocalString(),
                locale: const Locale('en', 'US'),
                debugShowCheckedModeBanner: false,
                /* darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.dark, */
                title: 'Flutter Demo',

                /*   supportedLocales: L10n.all,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
        ], */

                home: UploadImage() /* LoginPage12() */
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
                );
          }),
    );
  }
}
