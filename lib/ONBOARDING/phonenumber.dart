// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool check10number = true;
  bool mobilekivalue = true;
  bool check6digit = true;
  bool otplodaing = false;
  var phonecont = TextEditingController();
  dynamic phonekanumber;
  var token = "";
  var checktoken = "";

  final GetUpdateSeconds getkar = Get.put(GetUpdateSeconds());

  @override
  void dispose() {
    super.dispose();
    phonecont.dispose();
  }

  bool status = true;
  bool iconchupa = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/mobileotp.svg',
                      height: height * 0.3,
                      width: width * 0.2,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Enter Your Phone Number to Proceed Sign Up',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          selectlanguagemethod(context);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/globemap.svg',
                              height: 12,
                              width: 12,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
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
                SizedBox(
                  height: height * 0.08,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autofocus: true,
                  controller: phonecont,
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
                  cursorHeight: 20,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: '8888888888',
                    hintStyle: const TextStyle(color: Color(0xffc4c4c4)),

                    prefix: SizedBox(
                      width: 60,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/indianflag1.png',
                            height: 20,
                            width: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
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
                    prefixIconConstraints: const BoxConstraints(),
                    labelText: 'Enter your 10 digit Mobile number*',
                    labelStyle: const TextStyle(
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
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10.0,
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

                    if (value.length != 10) {
                      setState(() {
                        check10number = true;
                      });
                    } else {
                      setState(() {
                        check10number = false;
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
                  height: 6.h,
                  child: ElevatedButton(
                    onPressed: check10number
                        ? null
                        : () async {
                            final provider = Provider.of<Googleprovider>(
                                context,
                                listen: false);
                            /* provider.checkMobileno(phonekanumber).then(
                              (value) async {
                                if (value == true) {
                                  setState(() {
                                    otplodaing = true;
                                  });
                                  await Fluttertoast.showToast(
                                          msg: "Mobile no. Already Exist",
                                          backgroundColor: Colors.black,
                                          textColor: Colors.white,
                                          fontSize: 16.0)
                                      .then((value) {
                                    setState(() {
                                      otplodaing = false;
                                    });
                                  });

                                  return;
                                } else { */
                            setState(() {
                              otplodaing = true;
                            });
                            token = await provider
                                .otpmethod(phonekanumber)
                                .whenComplete(() {
                              otplodaing = false;
                              getkar.startTimer();
                              phonecont.clear();
                              showModalBottomSheet(
                                  /*     isDismissible: false, */
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
                                    /*   return GetBuilder<HomeController>(
                                      builder: (controller) { */
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
                                                    SizedBox(
                                                      height: height * 0.01,
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffE2E2E2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
                                                      height: 5,
                                                      width: 100,
                                                    ),
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                              Icons.arrow_back,
                                                              color:
                                                                  primaryColorOfApp,
                                                            )),
                                                        SizedBox(
                                                          width: 23.w,
                                                        ),
                                                        Center(
                                                          child: Text(
                                                            'Enter OTP',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      'OTP has been sent to +91 $phonekanumber',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.05,
                                                    ),
                                                    /*   GetBuilder< HomeController>(
                                                          builder:(controller) {
                                                        return */
                                                    /*  Obx((() =>
                                                          PinFieldAutoFill(
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done,
                                                            controller: controller
                                                                .otpEditingController,
                                                            decoration:
                                                                UnderlineDecoration(
                                                              textStyle: const TextStyle(
                                                                  fontSize:
                                                                      16,
                                                                  color: Colors
                                                                      .blue),
                                                              colorBuilder:
                                                                  const FixedColorBuilder(
                                                                Colors
                                                                    .transparent,
                                                              ),
                                                              bgColorBuilder:
                                                                  FixedColorBuilder(
                                                                Colors.grey
                                                                    .withOpacity(
                                                                        0.2),
                                                              ),
                                                            ),
                                                            currentCode:
                                                                controller
                                                                    .messageOtpCode
                                                                    .value,
                                                            onCodeSubmitted:
                                                                (code) {},
                                                            onCodeChanged:
                                                                (code) {
                                                              controller
                                                                  .messageOtpCode
                                                                  .value = code!;
                                                              controller
                                                                  .countdownController
                                                                  .pause();
                                                              if (code.length ==
                                                                  6) {
                                                                // To perform some operation
                                                              }
                                                            },
                                                          ))), */
                                                    /* }), */
                                                    PinCodeTextField(
                                                      cursorHeight: 20,
                                                      appContext: context,
                                                      length: 6,
                                                      obscureText: false,
                                                      animationType:
                                                          AnimationType.fade,
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      cursorColor:
                                                          primaryColorOfApp,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      pinTheme: PinTheme(
                                                        borderWidth: 0.5,
                                                        shape: PinCodeFieldShape
                                                            .box,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        inactiveColor:
                                                            customTextColor,
                                                        activeColor:
                                                            primaryColorOfApp,
                                                        selectedColor:
                                                            customTextColor,
                                                        selectedFillColor:
                                                            Colors.white,
                                                        inactiveFillColor:
                                                            Colors.white,
                                                        fieldHeight: 40,
                                                        fieldWidth: 40,
                                                        activeFillColor:
                                                            Color(0xffDFEEFC),
                                                      ),
                                                      animationDuration:
                                                          Duration(
                                                              milliseconds:
                                                                  300),
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableActiveFill: true,
                                                      /* errorAnimationController: errorController,
  controller: textEditingController, */
                                                      onCompleted:
                                                          (verificationCode) {
                                                        setState(() {
                                                          checktoken =
                                                              verificationCode;
                                                        });
                                                        if (verificationCode
                                                                .length !=
                                                            6) {
                                                          setState(() {
                                                            check6digit = true;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            check6digit = false;
                                                          });
                                                        }
                                                      },
                                                      /*   onSubmitted:
                                                          (verificationCode) {
                                                        setState(() {
                                                          checktoken =
                                                              verificationCode;
                                                        });
                                                        if (verificationCode
                                                                .length !=
                                                            6) {
                                                          setState(() {
                                                            check6digit = true;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            check6digit = false;
                                                          });
                                                        }
                                                      }, */
                                                      onChanged: (value) {
                                                        setState(() {
                                                          checktoken = token;
                                                        });
                                                      },
                                                      beforeTextPaste: (text) {
                                                        print(
                                                            "Allowing to paste $text");
                                                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                                        return true;
                                                      },
                                                    ),
                                                    /*   OtpTextField(
                                                      onCodeChanged: (value) {
                                                        setState(() {
                                                          checktoken = token;
                                                        });
                                                      },
                                                      autoFocus: true,
                                                      filled: true,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 3.0),
                                                      fieldWidth: 44,
                                                      fillColor: const Color(
                                                          0xffDFEEFC),
                                                      borderWidth: 0.5,
                                                      focusedBorderColor:
                                                          primaryColorOfApp,
                                                      numberOfFields: 6,
                                                      enabledBorderColor:
                                                          customTextColor,
                                                      borderColor:
                                                          customTextColor,
                                                      showFieldAsBox: true,
                                                      onSubmit:
                                                          (verificationCode) {
                                                        setState(() {
                                                          checktoken =
                                                              verificationCode;
                                                        });
                                                        if (verificationCode
                                                                .length !=
                                                            6) {
                                                          setState(() {
                                                            check6digit = true;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            check6digit = false;
                                                          });
                                                        }
                                                      },
                                                    ), */
                                                    SizedBox(
                                                      height: height * 0.01,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        GetBuilder<
                                                            GetUpdateSeconds>(
                                                          builder: (controller) =>
                                                              TextButton(
                                                                  onPressed: getkar
                                                                          .timerkhatam1
                                                                      ? null
                                                                      : () async {
                                                                          final provider = Provider.of<Googleprovider>(
                                                                              context,
                                                                              listen: false);
                                                                          token =
                                                                              await provider.otpmethod(phonekanumber);
                                                                          print(
                                                                              'badshamasala');
                                                                          getkar
                                                                              .nayamethod();
                                                                        },
                                                                  child: GetBuilder<
                                                                      GetUpdateSeconds>(
                                                                    builder:
                                                                        (controller) =>
                                                                            Text(
                                                                      getkar.timerkhatam1
                                                                          ? 'Resend OTP in ${getkar.seconds} Sec'
                                                                          : 'Resend OTP',
                                                                      style: const TextStyle(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              primaryColorOfApp),
                                                                    ),
                                                                  )),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 6.h,
                                                      width: double.infinity,
                                                      // height: 50,
                                                      child: ElevatedButton(
                                                        onPressed: check6digit
                                                            ? null
                                                            : () {
                                                                if (token ==
                                                                    checktoken) {
                                                                  getkar
                                                                      .methodAfterNavigation();
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) => AccountType(
                                                                                value: phonekanumber,
                                                                              ))).then((value) {
                                                                    print(
                                                                        '--------badsha-------------');
                                                                    /*   getkar.methodAfterNavigation(); */
                                                                    Navigator.pop(
                                                                        context);
                                                                  });
                                                                } else {
                                                                  Fluttertoast.showToast(
                                                                      msg:
                                                                          "Wrong OTP",
                                                                      backgroundColor:
                                                                          Colors
                                                                              .black,
                                                                      textColor:
                                                                          Colors
                                                                              .white,
                                                                      fontSize:
                                                                          16.0);
                                                                }
                                                              },
                                                        style: ElevatedButton.styleFrom(
                                                            elevation: 0,
                                                            backgroundColor:
                                                                const Color(
                                                                    0xff0087FF),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0))),
                                                        child: const Text(
                                                          "Verify & Continue",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.1,
                                                    ),
                                                  ]),
                                            ),
                                            Positioned.fill(
                                                top: -36,
                                                child: Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: InkWell(
                                                    onTap: () {
                                                      print('badsha');
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
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
                                                        child: Icon(
                                                          Icons.close,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      );
                                    });
                                  }).then((value) {
                                setState(() {
                                  check10number = true;
                                });
                              });
                            });
                            /* }
                              },
                            ); */
                          },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xff0087FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: const UploadImage().radius())),
                    child: otplodaing
                        ? CircularProgressIndicator(
                            strokeWidth: 3,
                            color: Colors.white,
                          )
                        : Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
