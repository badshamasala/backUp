// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/app_theme_widget.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

var abc = "";

class _LoginPageState extends State<LoginPage> {
  bool email = false;
  bool mobile = false;

  var phonecont = TextEditingController();
  dynamic phonekanumber;
  var token = "";
  var checktoken = "";
  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    username.addListener(() {
      final isbuttonactive = username.text.isNotEmpty;

      setState(() {
        this.isbuttonactive = isbuttonactive;
      });
    });
  }

  final GetUpdateSeconds getkar = Get.put(GetUpdateSeconds());
  var username = TextEditingController();
  bool isbuttonactive = false;
  bool isbuttonactive2 = false;
  bool isloading = false;
  var status = "";

  var password = TextEditingController();
  bool obscure = true;
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Switch.adaptive(
                value: themeProvider.isDarkMode,
                onChanged: (value) {
                  setState(() {});
                  final provider =
                      Provider.of<ThemeProvider>(context, listen: false);
                  provider.toggleTheme(value);
                }),
          ),
          body: isloading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: primaryColorOfApp,
                ))
              : SingleChildScrollView(
                  /* reverse: true, */
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.09,
                          ),
                          Center(
                              child: SvgPicture.asset(
                            'assets/new.svg',
                            height: 155,
                            width: 155,
                          )),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter username';
                              }
                              return null;
                            },
                            controller: username,
                            decoration: InputDecoration(
                              isDense: true,
                              errorStyle:
                                  const TextStyle(fontSize: 8, height: 0.2),
                              labelText: 'username'.tr,
                              labelStyle: const TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      width: 0.5)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: customTextColor, width: 0.5)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xffED1B24), width: 0.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: const UploadImage().radius(),
                                  borderSide: const BorderSide(
                                      color: Color(0xff0087FF), width: 0.5)),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10.0),
                            ),
                            onChanged: (value) {
                              // do something
                            },
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscuringCharacter: '*',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              } else if (value.length < 3) {
                                return 'Password should be minimum 3 characters';
                              }
                              return null;
                            },
                            controller: password,
                            obscureText: obscure,
                            decoration: InputDecoration(
                              isDense: true,
                              errorStyle:
                                  const TextStyle(fontSize: 8, height: 0.2),
                              labelText: 'password'.tr,
                              labelStyle: const TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xffED1B24), width: 0.5)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: customTextColor, width: 0.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: const UploadImage().radius(),
                                  borderSide: const BorderSide(
                                      color: Color(0xff0087FF), width: 0.5)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      width: 0.5)),
                              suffixIconConstraints: const BoxConstraints(),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: GestureDetector(
                                  child: Icon(
                                      obscure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Theme.of(context).primaryColor),
                                  onTap: () {
                                    setState(() {
                                      obscure = !obscure;
                                    });
                                  },
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10.0),
                            ),
                            onChanged: (value) {
                              // do something
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                      builder: (context) {
                                        return StatefulBuilder(builder:
                                            (BuildContext context,
                                                StateSetter setState) {
                                          return Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 15.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          IconButton(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              constraints:
                                                                  const BoxConstraints(),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon: const Icon(
                                                                Icons
                                                                    .arrow_back,
                                                                color:
                                                                    primaryColorOfApp,
                                                              )),
                                                          const Text(
                                                            'Forgot Password',
                                                            style: TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    TextFormField(
                                                      decoration:
                                                          buildInputdecoration(
                                                              'username'.tr),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            'select'.tr,
                                                            style: const TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 8),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.04,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        OutlinedButton(
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                                  minimumSize:
                                                                      const Size(
                                                                          139,
                                                                          35),
                                                                  /*    minimumSize: Size(32, 30), */
                                                                  elevation: 0,
                                                                  /* padding: EdgeInsets.zero, */
                                                                  tapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  side: BorderSide(
                                                                      color: email
                                                                          ? const Color(
                                                                              0xff0087FF)
                                                                          : const Color(
                                                                              0xff333333),
                                                                      width:
                                                                          0.5),
                                                                  /*  padding:
                                                            EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          const UploadImage()
                                                                              .radius())),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(1.0),
                                                            child: Text(
                                                              "email".tr,
                                                              style: TextStyle(
                                                                  color: email
                                                                      ? const Color(
                                                                          0xff0087FF)
                                                                      : const Color(
                                                                          0xff333333),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins'),
                                                            ),
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              email = true;
                                                              mobile = false;
                                                            });
                                                          },
                                                        ),
                                                        OutlinedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              mobile = true;
                                                              email = false;
                                                            });
                                                          },
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                                  minimumSize:
                                                                      const Size(
                                                                          139,
                                                                          35),
                                                                  /*  minimumSize: Size(32, 30), */
                                                                  elevation: 0,
                                                                  /* padding: EdgeInsets.zero, */
                                                                  tapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  side: BorderSide(
                                                                      color: mobile
                                                                          ? const Color(
                                                                              0xff0087FF)
                                                                          : const Color(
                                                                              0xff333333),
                                                                      width:
                                                                          0.5),
                                                                  /*   padding:
                                                            EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          const UploadImage()
                                                                              .radius())),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(1.0),
                                                            child: Text(
                                                              "mobile".tr,
                                                              style: TextStyle(
                                                                  color: mobile
                                                                      ? const Color(
                                                                          0xff0087FF)
                                                                      : const Color(
                                                                          0xff333333),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins'),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            'keep'.tr,
                                                            style: const TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 9),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.04,
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                      width: double.infinity,
                                                      child: ElevatedButton(
                                                        onPressed:
                                                            email == true ||
                                                                    mobile ==
                                                                        true
                                                                ? () {
                                                                    showModalBottomSheet(
                                                                        /*     isDismissible: false, */
                                                                        isScrollControlled:
                                                                            true,
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          // <-- SEE HERE
                                                                          borderRadius:
                                                                              BorderRadius.vertical(
                                                                            top:
                                                                                Radius.circular(20.0),
                                                                          ),
                                                                        ),
                                                                        // isScrollControlled: true,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          /*   return GetBuilder<HomeController>(
                                        builder: (controller) { */
                                                                          return StatefulBuilder(builder:
                                                                              (context, setState) {
                                                                            return Padding(
                                                                              padding: MediaQuery.of(context).viewInsets,
                                                                              child: Stack(
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          IconButton(
                                                                                              onPressed: () {
                                                                                                Navigator.pop(context);
                                                                                              },
                                                                                              icon: const Icon(Icons.arrow_back)),
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
                                                                                        margin: const EdgeInsets.only(right: 4.0),
                                                                                        fieldWidth: 45,
                                                                                        fillColor: const Color(0xffDFEEFC),
                                                                                        borderWidth: 1,
                                                                                        focusedBorderColor: primaryColorOfApp,
                                                                                        numberOfFields: 6,
                                                                                        borderColor: primaryColorOfApp,
                                                                                        showFieldAsBox: true,
                                                                                        onSubmit: (verificationCode) {
                                                                                          /*     setState(() {
                                                          checktoken =
                                                              verificationCode;
                                                        });
                                                        if (verificationCode
                                                                .length ==
                                                            6) {
                                                          setState(() {
                                                            check6digit = false;
                                                          });
                                                        }
                                                        if (verificationCode
                                                                .length <
                                                            6) {
                                                          setState(() {
                                                            check6digit = true;
                                                          });
                                                        } */
                                                                                        },
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: height * 0.01,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          GetBuilder<GetUpdateSeconds>(
                                                                                            builder: (controller) => TextButton(
                                                                                                onPressed: getkar.timerkhatam1
                                                                                                    ? null
                                                                                                    : () async {
                                                                                                        final provider = Provider.of<Googleprovider>(context, listen: false);
                                                                                                        token = await provider.otpmethod(phonekanumber);
                                                                                                        print('badshamasala');
                                                                                                        getkar.nayamethod();
                                                                                                      },
                                                                                                child: GetBuilder<GetUpdateSeconds>(
                                                                                                  builder: (controller) => Text(
                                                                                                    getkar.timerkhatam1 ? 'Resend OTP in ${getkar.seconds} Sec' : 'Resend OTP',
                                                                                                    style: const TextStyle(fontFamily: 'Poppins', fontSize: 10, color: primaryColorOfApp),
                                                                                                  ),
                                                                                                )),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 40,
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
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: Stack(
                                                                                                      clipBehavior: Clip.none,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                                                                                            child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                                              SizedBox(
                                                                                                                height: height * 0.03,
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: const [
                                                                                                                  Text(
                                                                                                                    'Verified',
                                                                                                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 15, color: primaryColorOfApp),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: height * 0.03,
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                children: const [
                                                                                                                  Text(
                                                                                                                    'Your OTP has been verified ',
                                                                                                                    style: TextStyle(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      fontSize: 12,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: height * 0.02,
                                                                                                              ),
                                                                                                              TextFormField(
                                                                                                                decoration: buildInputdecoration('Enter New Password'),
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: height * 0.015,
                                                                                                              ),
                                                                                                              TextFormField(
                                                                                                                decoration: buildInputdecoration('Confirm Password'),
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: height * 0.02,
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                width: double.infinity,
                                                                                                                height: 40,
                                                                                                                child: ElevatedButton(
                                                                                                                  onPressed: () {},
                                                                                                                  style: ElevatedButton.styleFrom(
                                                                                                                      elevation: 0,
                                                                                                                      /* minimumSize: const Size(0.0, 40), */
                                                                                                                      // padding: EdgeInsets.symmetric(
                                                                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                                                                      backgroundColor: const Color(0xff0087FF),
                                                                                                                      shape: RoundedRectangleBorder(borderRadius: const UploadImage().radius())),
                                                                                                                  child: const Text(
                                                                                                                    "Confirm",
                                                                                                                    style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                              SizedBox(
                                                                                                                height: height * 0.1,
                                                                                                              ),
                                                                                                            ])),
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
                                                                                                                    border: Border.all(color: Colors.white, width: 2),
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: const Padding(
                                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                                    child: Icon(
                                                                                                                      Icons.close,
                                                                                                                      color: Colors.white,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ))
                                                                                                      ],
                                                                                                    ),
                                                                                                  );
                                                                                                });

                                                                                            /*   } else {
                                                                          Fluttertoast.showToast(
                                                                              msg: "Wrong OTP",
                                                                              backgroundColor: Colors.black,
                                                                              textColor: Colors.white,
                                                                              fontSize: 16.0);
                                                                        } */
                                                                                          },
                                                                                          style: ElevatedButton.styleFrom(
                                                                                              elevation: 0,
                                                                                              /*      minimumSize: const Size(0.0, 40), */
                                                                                              // padding: EdgeInsets.symmetric(
                                                                                              //     horizontal: 40.0, vertical: 20.0),
                                                                                              backgroundColor: const Color(0xff0087FF),
                                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0))),
                                                                                          child: const Text(
                                                                                            "Verify & Continue",
                                                                                            style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
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
                                                                                            print('badsha');
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Container(
                                                                                            /*   width: 45,
                                                                          height: 45, */
                                                                                            decoration: BoxDecoration(
                                                                                              border: Border.all(color: Colors.white, width: 2),
                                                                                              shape: BoxShape.circle,
                                                                                            ),
                                                                                            child: const Padding(
                                                                                              padding: EdgeInsets.all(4.0),
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
                                                                            /*    }); */
                                                                          });
                                                                        });
                                                                  }
                                                                : null,
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
                                                        child: Text(
                                                          "confirm".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  width * 0.045,
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
                                                  ],
                                                ),
                                              ),
                                              Positioned.fill(
                                                  top: -36,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: InkWell(
                                                      onTap: () {
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
                                                              EdgeInsets.all(
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
                                    );
                                  },
                                  child: Text(
                                    'forgot'.tr,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () async {
                                login();
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  /* minimumSize: const Size(0.0, 40), */
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 40.0, vertical: 20.0),
                                  backgroundColor: const Color(0xff0087FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          const UploadImage().radius())),
                              child: Text(
                                "login".tr,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Theme.of(context).bottomAppBarColor,
                                height: height * 0.001,
                                width: width * 0.38,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: Text(
                                  'or'.tr,
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                color: Theme.of(context).bottomAppBarColor,
                                height: height * 0.001,
                                width: width * 0.38,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                /*        final provider = Provider.of<Googleprovider>(
                                    context,
                                    listen: false);
                                await provider.googlelogin(); */
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  elevation: 0,
                                  side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 0.7),
                                  /*   minimumSize: const Size(0, 40), */
                                  /*  padding: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 20.0), */
                                  backgroundColor:
                                      Theme.of(context).backgroundColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          const UploadImage().radius())),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/google.png',
                                      height: 28,
                                    ),
                                    Text(
                                      "continue".tr,
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .bottomAppBarColor,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.02),
                                child: Text(
                                  "dont".tr,
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhoneNumber()),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 0.7),
                                  /*  padding: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 20.0), */
                                  backgroundColor:
                                      Theme.of(context).backgroundColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          const UploadImage().radius())),
                              child: Text(
                                "signup".tr,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }

  login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isloading = true;
      });
      print('rashid');
      final provider = Provider.of<Googleprovider>(context, listen: false);
      await provider
          .loginmethod(username.text, password.text, context)
          .then((value) async {
        if (value == "True") {
          setState(() {
            isloading = false;
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        } else {
          setState(() {
            isloading = false;
          });
        }
      });
    }
  }

  buildInputdecoration(String labeltext) {
    return InputDecoration(
      isDense: true,
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: customTextColor, fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
    );
  }
}
