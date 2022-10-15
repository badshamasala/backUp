
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/dropdown.dart';

import 'package:flutter_application_1/ACCOUNT_TYPE/formfill.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_application_1/practise.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/startPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _)=> ValidationProvider())
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AccountType(),
      ),
    );
  }
}
