// ignore_for_file: unused_field
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/accounttype.dart';
import 'package:flutter_application_1/account_type/formfill.dart';
import 'package:flutter_application_1/globals/app_theme_widget.dart';

import 'package:flutter_application_1/new_folder/archive_check.dart';
import 'package:flutter_application_1/new_folder/create_folder.dart';
import 'package:flutter_application_1/new_folder/gotodashboard.dart';
import 'package:flutter_application_1/new_folder/history1.dart';
import 'package:flutter_application_1/new_folder/rewardcollection.dart';
import 'package:flutter_application_1/new_folder/saved1.dart';
import 'package:flutter_application_1/ONBOARDING/start_page.dart';
import 'package:flutter_application_1/people_profile/about_profile.dart';
import 'package:flutter_application_1/poll/createpoll.dart';
import 'package:flutter_application_1/poll/createpoll2.dart';
import 'package:flutter_application_1/poll/dswdswd.dart';
import 'package:flutter_application_1/promote/newCheck.dart';
import 'package:flutter_application_1/promote/promote.dart';
import 'package:flutter_application_1/promote/promote2.dart';

import 'package:flutter_application_1/share/tag_friend.dart';
import 'package:flutter_application_1/share/chat_screen1.dart';
import 'package:flutter_application_1/text_post/post_text.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/checkcount1.dart';

import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/share/interaction.dart';
import 'package:flutter_application_1/share/localestring.dart';
import 'package:flutter_application_1/homepage/rewards_point.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'homepage/checkcount.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  /* Stripe.publishableKey =
      'pk_test_51M9mJrSIrNH5UrZHRmyRLLHDVaQaI8pPKBmnq53pnCRxYQauwgEl0nDbyClMVVnBT9ehNfs10DV26QHGCShqwZ9P00orFyOx8b'; */
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
        ChangeNotifierProvider(create: (_) => GetCountImage()),
        ChangeNotifierProvider(create: (_) => CreatePollProvider()),
        ChangeNotifierProvider(create: (_) => ChangeColorProvider()),
        ChangeNotifierProvider(create: (_) => PromoteProvider()),
        ChangeNotifierProvider(create: (_) => RadioProvider()),
  
        /*      ChangeNotifierProvider(create: (_) => ThemeProvider()), */
        /*     ChangeNotifierProvider(create: (_) => ProviderUpdateSeconds()), */
      ],
      child: /* Get */ ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          builder: (context, child) {
            final themeProvider = Provider.of<ThemeProvider>(context);

            return Sizer(builder: (context, orientation, deviceType) {
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

                  home: HomePage() /* LoginPage12() */
                  /*IntroScreen()*/ /* _isLoggedIn
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
            });
          }),
    );
  }
}
