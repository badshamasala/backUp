import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

enum language {
  english,
  hindi,
  marathi,
  urud,
  telugu,
  bengali,
  gujrati,
  odia,
  kannada,
  tamil
}

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  GlobalKey<FormState> _formKey = GlobalKey();
  var phonecont = TextEditingController();

  language _site = language.english;
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: SvgPicture.asset('assets/mobileotp.svg')),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 25,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Enter Your Phone Number to Proceed Sign Up',
                    style: TextStyle(
                        fontFamily: 'Poppins', color: customTextColor),
                  )),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                // <-- SEE HERE
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0),
                                ),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter setState) {
                                  return Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Container(
                                              color: Colors.black,
                                              height: 5,
                                              width: 100,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text('Select your language'),
                                          const Divider(),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text(
                                              'English',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins'),
                                            ),
                                            trailing: Radio(
                                              value: language.english,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text(
                                              'Hindi',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins'),
                                            ),
                                            trailing: Radio(
                                              value: language.hindi,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Bengali',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.bengali,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Gujarati',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.gujrati,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Marathi',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.marathi,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Urdu',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.urud,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Odia (oria)',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.odia,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Kannada',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.kannada,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Tamil',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.tamil,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            leading: const Text('Telugu',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins')),
                                            trailing: Radio(
                                              value: language.telugu,
                                              groupValue: _site,
                                              onChanged: (language? value) {
                                                setState(() {
                                                  _site = value!;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned.fill(
                                          top: -36,
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                /*   width: 45,
                                  height: 45, */
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  );
                                });
                              },
                            );
                          },
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.globe,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Select your language',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                            ],
                          )),
                    ],
                  ),
                  TextField(
                    controller: phonecont,
                    textAlign: TextAlign.start,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    cursorColor: primaryColorOfApp,
                    decoration: InputDecoration(
                      labelText: 'Enter your 10 digit Mobile number*',
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 214, 213, 213),
                          fontFamily: 'Poppins',
                          fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff333333), width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff0087FF), width: 0.5)),
                      prefixText: '+91',
                      prefixStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      // hintText: 'Enter Your Username',
                      /*        contentPadding: const EdgeInsets.all(15), */
                      /*  border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            borderRadius: BorderRadius.circular(16)
                            ) */
                    ),
                    onChanged: (value) {
                      // do something
                    },
                  ),
                  /*  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff0087FF)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(14.0),
                          )),
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ), */
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    // height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet<dynamic>(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                              ),
                            ),
                            // isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: const Icon(
                                                      Icons.arrow_back)),
                                              const SizedBox(
                                                width: 65,
                                              ),
                                              const Text(
                                                'Enter OTP',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            'Otp has been sent to +91 8689880061',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.05,
                                          ),
                                          OtpTextField(
                                            filled: true,
                                            margin: EdgeInsets.only(right: 4.0),
                                            fieldWidth: 45,
                                            fillColor: Color(0xffDFEEFC),
                                            borderWidth: 1,
                                            focusedBorderColor:
                                                primaryColorOfApp,
                                            numberOfFields: 6,
                                            borderColor: primaryColorOfApp,
                                            //set to true to show as box or false to show as dash
                                            showFieldAsBox: true,
                                            //runs when a code is typed in
                                            onCodeChanged: (String code) {
                                              //handle validation or checks here
                                            },
                                            //runs when every textfield is filled
                                            onSubmit:
                                                (String verificationCode) {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          "Verification Code"),
                                                      content: Text(
                                                          'Code entered is $verificationCode'),
                                                    );
                                                  });
                                            }, // end onSubmit
                                          ),
                                          /* _buildOtp(), */
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Resen Otp in 30sec',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 15,
                                                    color: primaryColorOfApp),
                                              )),
                                          SizedBox(
                                            /*     height: 45, */
                                            width: double.infinity,
                                            // height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AccountType(
                                                            value:
                                                                phonecont.text,
                                                          )),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  /*      minimumSize: const Size(0.0, 40), */
                                                  // padding: EdgeInsets.symmetric(
                                                  //     horizontal: 40.0, vertical: 20.0),
                                                  backgroundColor:
                                                      const Color(0xff0087FF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0))),
                                              child: const Text(
                                                "Verify & Continue",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.2,
                                          ),
                                        ]),
                                  ),
                                   Positioned.fill(
                                              top: -36,
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    /*   width: 45,
                                  height: 45, */
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: Icon(
                                                        Icons.close,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ))
                                ],
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          /*        minimumSize: const Size(0.0, 40), */
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40.0, vertical: 20.0),
                          backgroundColor: const Color(0xff0087FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: UploadImage().radius())),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
