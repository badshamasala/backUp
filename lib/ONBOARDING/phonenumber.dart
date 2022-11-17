
// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GETX/smsautofill.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool check10number = true;
  bool check6digit = true;
  bool otplodaing = false;
  var phonecont = TextEditingController();
  dynamic phonekanumber;
  var token = "";
  var checktoken = "";

  final GetUpdateSeconds getkar = Get.put(GetUpdateSeconds());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

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
                  const Center(
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
                  const Center(
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
                            selectlanguagemethod(context);
                           
                          },
                          child: Row(
                            children: const [
                              FaIcon(
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
                    /* autofillHints: [AutofillHints.telephoneNumberDevice], */
                    autofocus: true,
                    /*  focusNode: focusNode, */
                    /* validator: (value) {
                      if (value!.length == 10) {
                        setState(() {
                          check10number = false;
                        });
                      }
                    }, */

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
                    decoration: InputDecoration(
                      hintText: '8888888888',
                      hintStyle: const TextStyle(color: Color(0xffc4c4c4)),
                      /* isDense: true, */
                      prefixIcon: SizedBox(
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
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 0, minHeight: 0),
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
                              /*   setState(() {
                                otplodaing = true;
                              }); */
                              /*  final provider = Provider.of<Googleprovider>(
                                  context,
                                  listen: false); */
                              /* token = await provider
                                  .otpmethod(phonekanumber)
                                  .whenComplete(() {
                                otplodaing = false;
                                getkar.startTimer(); */
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
                                    return GetBuilder<HomeController>(
                                        builder: (controller) {
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
                                                        style: const TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 15,
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

                                                      OtpTextField(
                                                        filled: true,
                                                        margin: const EdgeInsets.only(
                                                            right: 4.0),
                                                        fieldWidth: 45,
                                                        fillColor:
                                                            const Color(0xffDFEEFC),
                                                        borderWidth: 1,
                                                        focusedBorderColor:
                                                            primaryColorOfApp,
                                                        numberOfFields: 6,
                                                        borderColor:
                                                            primaryColorOfApp,
                                                        showFieldAsBox: true,
                                                        onSubmit:
                                                            (verificationCode) {
                                                          setState(() {
                                                            checktoken =
                                                                verificationCode;
                                                          });
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
                                                        },
                                                      ),
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
                                                                            final provider =
                                                                                Provider.of<Googleprovider>(context, listen: false);
                                                                            token =
                                                                                await provider.otpmethod(phonekanumber);
                                                                            print('badshamasala');
                                                                            getkar.nayamethod();
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
                                                                                10,
                                                                            color:
                                                                                primaryColorOfApp),
                                                                      ),
                                                                    )),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        /*     height: 45, */
                                                        width: double.infinity,
                                                        // height: 50,
                                                        child: ElevatedButton(
                                                          onPressed:
                                                              /* check6digit
                                                                    ? null
                                                                    : */
                                                              () {
                                                            /*  if (token ==
                                                                            checktoken) { */
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AccountType(
                                                                            value:
                                                                                phonecont.text,
                                                                          )),
                                                            );
                                                            /*   } else {
                                                                          Fluttertoast.showToast(
                                                                              msg: "Wrong OTP",
                                                                              backgroundColor: Colors.black,
                                                                              textColor: Colors.white,
                                                                              fontSize: 16.0);
                                                                        } */
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
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 2),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets
                                                                  .all(4.0),
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
                                    });
                                  });
                              /*     }); */
                            },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          /*        minimumSize: const Size(0.0, 40), */
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40.0, vertical: 20.0),
                          backgroundColor: const Color(0xff0087FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: const UploadImage().radius())),
                      child: const Text(
                        /*  otplodaing ? 'Loading...' : */ "Continue",
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
