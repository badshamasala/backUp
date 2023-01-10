// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/getx/gettimer.dart';
import 'package:flutter_application_1/globals/colors.dart';

import 'package:flutter_application_1/onboarding/phonenumber.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../homepage/widget_notification.dart';

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
  var usernameForPassword = TextEditingController();
  bool isbuttonactive = false;
  bool isbuttonactive2 = false;
  bool isloading = false;
  var status = "";

  /* @override
  void dispose() {
   
    
    super.dispose();
    usernameForPassword.dispose();
    username.dispose();
  } */

  var password = TextEditingController();
  bool obscure = true;
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SafeArea(
      child: Scaffold(
          /* appBar: AppBar(
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
          ), */
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
                            height: 20.h,
                            width: 20.w,
                          )),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          TextFormField(
                            cursorColor: primaryColorOfApp,
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
                              labelStyle: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10.sp),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      width: 0.5.sp)),
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
                            cursorColor: primaryColorOfApp,
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
                              labelStyle: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10.sp),
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
                                padding: const EdgeInsets.only(right: 8.0),
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
                                                      padding: EdgeInsets.only(
                                                          top: 15.sp),
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
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 2.w),
                                                            child: Text(
                                                              'Forgot Password',
                                                              style: TextStyle(
                                                                  color:
                                                                      customTextColor,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      12.sp),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    TextFormField(
                                                      /* onChanged: (value) {
                                                        usernameForPass = value;
                                                      }, */
                                                      controller:
                                                          usernameForPassword,
                                                      cursorColor:
                                                          primaryColorOfApp,
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
                                                              EdgeInsets.only(
                                                                  left: 4.w),
                                                          child: Text(
                                                            'select'.tr,
                                                            style: TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize:
                                                                    10.sp),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 4.h,
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
                                                                      Size(43.w,
                                                                          5.h),
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
                                                                      Size(43.w,
                                                                          5.h),
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
                                                              EdgeInsets.only(
                                                                  left: 4.w),
                                                          child: Text(
                                                            'To help keep your profile safe, myttube wants to make',
                                                            style: TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 9.sp),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.w),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'sure that it’s really you trying to password reset',
                                                            style: TextStyle(
                                                                color:
                                                                    customTextColor,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 9.sp),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.04,
                                                    ),
                                                    SizedBox(
                                                      height: 6.h,
                                                      width: double.infinity,
                                                      child: ElevatedButton(
                                                        onPressed:
                                                            email == true ||
                                                                    mobile ==
                                                                        true
                                                                ? () {
                                                                    final provider = Provider.of<
                                                                            Googleprovider>(
                                                                        context,
                                                                        listen:
                                                                            false);
                                                                    provider
                                                                        .checkUsername(
                                                                            usernameForPassword.text)
                                                                        .then(
                                                                      (value) {
                                                                        if (value ==
                                                                            true) {
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
                                                                                return StatefulBuilder(builder: (context, setState) {
                                                                                  return Padding(
                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                    child: Stack(
                                                                                      clipBehavior: Clip.none,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                            SizedBox(
                                                                                              height: 2.h,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'myttube',
                                                                                                  style: TextStyle(fontFamily: 'Satisfy', fontSize: 12.sp, color: primaryColorOfApp),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 2.h,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Password recovery',
                                                                                                  style: TextStyle(fontFamily: 'Poppins', fontSize: 15.sp, color: Colors.black),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Otp has been sent to +91 8689880061',
                                                                                                  style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, color: customTextColor),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: height * 0.05,
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  'Enter OTP',
                                                                                                  style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, color: customTextColor),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            PinCodeTextField(
                                                                                              autoFocus: true,
                                                                                              cursorHeight: 20,
                                                                                              appContext: context,
                                                                                              length: 6,
                                                                                              obscureText: false,
                                                                                              animationType: AnimationType.fade,
                                                                                              inputFormatters: [
                                                                                                FilteringTextInputFormatter.digitsOnly
                                                                                              ],
                                                                                              cursorColor: primaryColorOfApp,
                                                                                              keyboardType: TextInputType.number,
                                                                                              pinTheme: PinTheme(
                                                                                                borderWidth: 0.5,
                                                                                                shape: PinCodeFieldShape.box,
                                                                                                borderRadius: BorderRadius.circular(5),
                                                                                                inactiveColor: customTextColor,
                                                                                                activeColor: primaryColorOfApp,
                                                                                                selectedColor: customTextColor,
                                                                                                selectedFillColor: Colors.white,
                                                                                                inactiveFillColor: Colors.white,
                                                                                                fieldHeight: 40,
                                                                                                fieldWidth: 40,
                                                                                                activeFillColor: const Color(0xffDFEEFC),
                                                                                              ),
                                                                                              animationDuration: const Duration(milliseconds: 300),
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableActiveFill: true,
                                                                                              /* errorAnimationController: errorController,
  controller: textEditingController, */
                                                                                              onCompleted: (verificationCode) {
                                                                                                setState(() {
                                                                                                  checktoken = verificationCode;
                                                                                                });
                                                                                                /*  if (verificationCode
                                                                .length !=
                                                            6) {
                                                          setState(() {
                                                            check6digit = true;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            check6digit = false;
                                                          });
                                                        } */
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
                                                                                                print("Allowing to paste $text");
                                                                                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                                                                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                                                                                return true;
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
                                                                                              height: 6.h,
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
                                                                                                                      height: 6.h,
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
                                                                                                              positionCross(context)
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
                                                                                              height: height * 0.1,
                                                                                            ),
                                                                                          ]),
                                                                                        ),
                                                                                        positionCross(context)
                                                                                      ],
                                                                                    ),
                                                                                  );
                                                                                  /*    }); */
                                                                                });
                                                                              });
                                                                        } else {
                                                                          Fluttertoast.showToast(
                                                                              msg: "Couldn’t find your username ",
                                                                              backgroundColor: const Color(0xffED1B24),
                                                                              textColor: Colors.white,
                                                                              fontSize: 16.0);

                                                                          return;
                                                                        }
                                                                      },
                                                                    );
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
                                              positionCross(context)
                                            ],
                                          );
                                        });
                                      },
                                    ).then((value) =>
                                        {usernameForPassword.clear()});
                                  },
                                  child: Text(
                                    'forgot'.tr,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                        letterSpacing: 0),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 6.h,
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
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
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
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp),
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
                            height: 3.h,
                          ),
                          SizedBox(
                            height: 6.h,
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () async {
                                final provider = Provider.of<Googleprovider>(
                                    context,
                                    listen: false);
                                await provider.googlelogin();
                              },
                              style: OutlinedButton.styleFrom(
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
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
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
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
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
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8),
                              ),
                            ),
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
        if (value == true) {
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
