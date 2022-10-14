import 'package:flutter/material.dart';
import 'package:flutter_application_1/accounttype.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
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
                  const Center(
                      child:
                          Image(image: AssetImage('assets/mobilelogin.png'))),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff0087FF),
                          fontSize: 25,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                      child: Text(
                    'Enter Your Phone Number to Proceed Sign Up',
                    style: TextStyle(fontFamily: 'Poppins'),
                  )),
                  const SizedBox(
                    height: 20,
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
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Container(
                                          color: Colors.black,
                                          height: 5,
                                          width: 100,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text('choose language'),
                                      const Divider(),
                                      ListTile(
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
                                        dense: true,
                                        leading: const Text(
                                          'English',
                                          style:
                                              TextStyle(fontFamily: 'Poppins'),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
                                        dense: true,
                                        leading: const Text(
                                          'Hindi',
                                          style:
                                              TextStyle(fontFamily: 'Poppins'),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
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
                                  );
                                });
                              },
                            );
                          },
                          child: const Text(
                            'Choose language',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Colors.black),
                          )),
                      const FaIcon(
                        FontAwesomeIcons.globe,
                        size: 15,
                      )
                    ],
                  ),
                  IntlPhoneField(
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
                  ),
                  const SizedBox(
                    height: 10,
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
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon:
                                                  const Icon(Icons.arrow_back)),
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
                                        numberOfFields: 6,
                                        borderColor: const Color(0xFF0087FF),
                                        //set to true to show as box or false to show as dash
                                        showFieldAsBox: true,
                                        //runs when a code is typed in
                                        onCodeChanged: (String code) {
                                          //handle validation or checks here
                                        },
                                        //runs when every textfield is filled
                                        onSubmit: (String verificationCode) {
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
                                          child: const Text(
                                            'Resen Otp in 30sec',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                            ),
                                          )),
                                      SizedBox(
                                        height: 45,
                                        width: double.infinity,
                                        // height: 50,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AccountType()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: const Size(0.0, 40),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  const Color(0xff0087FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0))),
                                          child: const Text(
                                            "Verify & Continue",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.35,
                                      ),
                                    ]),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0.0, 40),
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40.0, vertical: 20.0),
                          backgroundColor: const Color(0xff0087FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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

  /* Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 65,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.green),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  } */

  /* Widget _buildOtp() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _textFieldOTP(first: true, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: false),
          _textFieldOTP(first: false, last: true),
        ],
      ),
    );
  } */
}
