// ignore_for_file: unused_field
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/addphoto1.dart';

import 'package:flutter_application_1/add_post/hashTag.dart';
import 'package:flutter_application_1/add_post/mention_user.dart';
import 'package:flutter_application_1/getx/check.dart';
import 'package:flutter_application_1/globals/app_theme_widget.dart';
import 'package:flutter_application_1/archive_post/history1.dart';
import 'package:flutter_application_1/homepage/giftsend.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/onboarding/loginpage.dart';
import 'package:flutter_application_1/onboarding/slider.dart';
import 'package:flutter_application_1/poll/createpoll.dart';
import 'package:flutter_application_1/poll/prac.dart';
import 'package:flutter_application_1/poll/payment_success.dart';
import 'package:flutter_application_1/profile_self/getVideoList.dart';
import 'package:flutter_application_1/promote/promote.dart';
import 'package:flutter_application_1/promote/promote2.dart';
import 'package:flutter_application_1/share/tag_friend.dart';
import 'package:flutter_application_1/share/chat_screen1.dart';
import 'package:flutter_application_1/text_post/post_text.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:flutter_application_1/share/localestring.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'poll/successfully_posted.dart';
import 'profile_self/getimagelist.dart';

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

/*   final Future<FirebaseApp> _initialization = Firebase.initializeApp(); */
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
        ChangeNotifierProvider(create: (_) => GiftProvider()),
        ChangeNotifierProvider(create: (_) => Filterprovider()),
        ChangeNotifierProvider(create: (_) => HashtagProvider()),
        ChangeNotifierProvider(create: (_) => MentionProvider()),

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
                    return LoginCheck();
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
