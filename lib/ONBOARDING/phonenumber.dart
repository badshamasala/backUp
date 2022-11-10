import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  GlobalKey<FormState> _formKey = GlobalKey();

  bool check10number = true;
  bool check6digit = true;
  var phonecont = TextEditingController();
  dynamic phonekanumber;

/*   FocusNode focusNode = FocusNode(); */

  /*  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  } */

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
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffE2E2E2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                height: 5,
                                                width: 100,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Choose Language',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: primaryColorOfApp,
                                                      fontSize: 15))
                                            ],
                                          ),
                                          Divider(),
                                          ListView.separated(
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return ListTile(
                                                  minVerticalPadding: 10,
                                                  horizontalTitleGap: 0.0,
                                                  visualDensity:
                                                      const VisualDensity(
                                                          vertical: -3),
                                                  dense: true,
                                                  leading: Text(
                                                    Slider1()
                                                        .locale[index]
                                                            ['language']
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  trailing: Radio(
                                                      value: Slider1()
                                                          .locale[index]
                                                              ['locale']
                                                          .toString(),
                                                      groupValue:
                                                          Slider1().groupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          Slider1().groupValue =
                                                              Slider1()
                                                                  .locale[index]
                                                                      ['locale']
                                                                  .toString();
                                                          Slider1().updatmethod(
                                                              Slider1()
                                                                  .locale[index]
                                                                      ['locale']
                                                                  .toString());
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      }),
                                                );
                                              },
                                              separatorBuilder:
                                                  (context, index) {
                                                return Divider(
                                                  height: 2,
                                                );
                                              },
                                              itemCount:
                                                  Slider1().locale.length),
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
                  TextFormField(
                    autofillHints: [AutofillHints.telephoneNumberDevice],
                    autofocus: true,
                    /*  focusNode: focusNode, */
                    /* validator: (value) {
                      if (value!.length == 10) {
                        setState(() {
                          check10number = false;
                        });
                      }
                    }, */

                    /*    controller: phonecont, */
                    textAlign: TextAlign.start,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    cursorColor: primaryColorOfApp,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                      FilteringTextInputFormatter.deny(RegExp(r'^1+')),
                      FilteringTextInputFormatter.deny(RegExp(r'^2+')),
                      FilteringTextInputFormatter.deny(RegExp(r'^3+')),
                      FilteringTextInputFormatter.deny(RegExp(r'^4+')),
                      FilteringTextInputFormatter.deny(RegExp(r'^5+')),
                    ],
                    decoration: InputDecoration(
                      hintText: '8888888888',
                      hintStyle: TextStyle(color: Color(0xffc4c4c4)),
                      /* isDense: true, */
                      prefixIcon: Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/indianflag1.png',
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "+91",
                                  style: TextStyle(
                                      color: /*  focusNode.hasFocus
                                          ? */
                                          Colors.black,
                                      /* : Color(0xffc4c4c4), */
                                      fontFamily: 'Poppins',
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 0, minHeight: 0),
                      labelText: 'Enter your 10 digit Mobile number*',
                      labelStyle: TextStyle(
                          color: /* focusNode.hasFocus
                              ? */
                              Colors.black /* : Color(0xffc4c4c4) */,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color(0xff333333), width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              color: Color(0xff0087FF), width: 0.5)),
                      /*     prefixText: '+91', */
                      /*     prefixIconColor: Color(0xffc4c4c4c), */
                      /* prefixStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 15), */
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
                      phonekanumber = value;
                      if (value.length == 10) {
                        setState(() {
                          check10number = false;
                        });
                      } else if (value.length < 10) {
                        setState(() {
                          check10number = true;
                        });
                      }
                      // do something
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    // height: 50,
                    child: ElevatedButton(
                      onPressed: check10number
                          ? null
                          : () async {
                              final provider = Provider.of<Googleprovider>(
                                  context,
                                  listen: false);
                              await provider
                                  .otpmethod(phonekanumber)
                                  .whenComplete(() {
                                showModalBottomSheet(
                                    isDismissible: false,
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
                                      return StatefulBuilder(
                                          builder: (context, setState) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              icon: const Icon(Icons
                                                                  .arrow_back)),
                                                          const SizedBox(
                                                            width: 65,
                                                          ),
                                                          const Text(
                                                            'Enter OTP',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Otp has been sent to +91 $phonekanumber',
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
                                                        margin: EdgeInsets.only(
                                                            right: 4.0),
                                                        fieldWidth: 45,
                                                        fillColor:
                                                            Color(0xffDFEEFC),
                                                        borderWidth: 1,
                                                        focusedBorderColor:
                                                            primaryColorOfApp,
                                                        numberOfFields: 6,
                                                        borderColor:
                                                            primaryColorOfApp,
                                                        //set to true to show as box or false to show as dash
                                                        showFieldAsBox: true,
                                                        //runs when a code is typed in
                                                        onCodeChanged:
                                                            (String value) {
                                                          //handle validation or checks here
                                                        },
                                                        //runs when every textfield is filled
                                                        onSubmit: (String
                                                            verificationCode) {
                                                          if (verificationCode
                                                                  .length ==
                                                              6) {
                                                            setState(() {
                                                              check6digit =
                                                                  false;
                                                            });
                                                          }
                                                          if (verificationCode
                                                                  .length <
                                                              6) {
                                                            setState(() {
                                                              check6digit =
                                                                  true;
                                                            });
                                                          }

                                                          /* showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    "Verification Code"),
                                                                content: Text(
                                                                    'Code entered is $verificationCode'),
                                                              );
                                                            }); */
                                                        }, // end onSubmit
                                                      ),
                                                      /* _buildOtp(), */
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                'Resen Otp in 30sec',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        10,
                                                                    color:
                                                                        primaryColorOfApp),
                                                              )),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        /*     height: 45, */
                                                        width: double.infinity,
                                                        // height: 50,
                                                        child: ElevatedButton(
                                                          onPressed: check6digit
                                                              ? null
                                                              : () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (context) =>
                                                                            AccountType(
                                                                              value: phonecont.text,
                                                                            )),
                                                                  );
                                                                },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  elevation: 0,
                                                                  /*      minimumSize: const Size(0.0, 40), */
                                                                  // padding: EdgeInsets.symmetric(
                                                                  //     horizontal: 40.0, vertical: 20.0),
                                                                  backgroundColor:
                                                                      const Color(
                                                                          0xff0087FF),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                          child: const Text(
                                                            "Verify & Continue",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.2,
                                                      ),
                                                    ]),
                                              ),
                                              /* Positioned.fill(
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
                                                )), */
                                            ],
                                          ),
                                        );
                                      });
                                    });
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
