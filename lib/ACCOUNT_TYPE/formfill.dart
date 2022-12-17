// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/upload_brand.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/upload_public.dart';

import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Formfill extends StatefulWidget {
  final value1;
  final value2;
  final value3;
  final value;
  const Formfill({
    Key? key,
    this.value1,
    this.value2,
    this.value3,
    this.value,
  }) : super(key: key);

  @override
  State<Formfill> createState() => _FormfillState();
}

class _FormfillState extends State<Formfill> {
  final _formKey = GlobalKey<FormState>();
  bool obscure = true;
  bool emailshow = false;
  String username = "";
  String fullname = "";
  String password = "";
  String email = "";
  bool status = true;
  bool iconchupa = false;
  bool borderstatus = true;

  bool isloading = false;
  bool focus = false;

  TextEditingController usernamecontroller = TextEditingController();

  late FocusNode fullNamefocusNode;
  late FocusNode userNamefocusNode;
  late FocusNode passWordfocusNode;
  late FocusNode emailfocusNode;

  @override
  void initState() {
    super.initState();
    fullNamefocusNode = FocusNode();
    userNamefocusNode = FocusNode();
    passWordfocusNode = FocusNode();
    emailfocusNode = FocusNode();

    // listen to focus changes
    /*   focusNode.addListener(() {
    
      setState(() {
        focus = true;
      });
    }); */
  }

  @override
  void dispose() {
    fullNamefocusNode.dispose();
    userNamefocusNode.dispose();
    passWordfocusNode.dispose();
    emailfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width, height = size.height;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              /*     reverse: true, */
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      buildstacknumber(),
                      sizedbox1(),
                      TextFormField(
                        focusNode: fullNamefocusNode,
                        cursorColor: primaryColorOfApp,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          fullname = value;
                        },
                        decoration: buildInputdecoration(widget.value1
                            ? 'Enter Your Full Name'
                            : widget.value2
                                ? 'Enter Your Brand Name'
                                : 'Enter Your Name or Comunity'),
                      ),
                      sizedbox(),
                      TextFormField(
                        focusNode: userNamefocusNode,
                        cursorColor: primaryColorOfApp,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        /*      controller: usernamecontroller, */
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              iconchupa = true;
                            });
                          } else {
                            setState(() {
                              iconchupa = false;
                            });
                          }
                          username = value;
                          final provider = Provider.of<Googleprovider>(context,
                              listen: false);
                          provider.checkUsername(username).then(
                            (value) {
                              if (value == true) {
                                // THIS IS A MISTAKE BY ME WHEN I AM CALLING THE API IN ONCHANGED.............
                                //THE TOAST MESSAGE IS KEEP ON COMING IT SHOULD ONLY COME ONCE........
                                /*    Fluttertoast.showToast(
                              msg: "User Already Exist",
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0); */
                                setState(() {
                                  status = false;
                                });
                                return;
                              } else {
                                /*   Fluttertoast.showToast(
                              msg: "UserName is Available",
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0); */
                                setState(() {
                                  status = true;
                                });
                                return;
                              }
                            },
                          );
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Username'; /* showTopSnackBar(
                        context,
                        CustomSnackBar.info(
                          message: "Please Enter username",
                        ),
                      ); */
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefix: const Text(
                              '@',
                              style: TextStyle(
                                color: primaryColorOfApp,
                              ),
                            ),
                            suffixIconConstraints: const BoxConstraints(),
                            isDense: true,
                            errorText: iconchupa
                                ? status
                                    ? 'This Username is available '
                                    : 'Choose other username, this username is not available'
                                : null,
                            focusedErrorBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    color: status
                                        ? primaryColorOfApp
                                        : Colors.red)),
                            errorBorder: OutlineInputBorder(
                                //<-- SEE HERE
                                borderSide: BorderSide(
                                    color: status
                                        ? primaryColorOfApp
                                        : Colors.red)),
                            suffixIcon: iconchupa
                                ? status
                                    ? Padding(
                                        padding: EdgeInsets.only(right: 8.sp),
                                        child: Iconify(
                                          AntDesign.check_circle_outlined,
                                          color: const Color(0xff08A434),
                                          size: 20.sp,
                                        ),
                                      )
                                    : const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.check_circle_outline_outlined,
                                          color: Colors.red,
                                        ),
                                      )
                                : null,
                            labelText: 'Enter Your Username',
                            errorStyle: TextStyle(
                                fontSize: 8,
                                height: 0.2,
                                color: status ? Colors.green : Colors.red),
                            labelStyle: TextStyle(
                                color: userNamefocusNode.hasFocus
                                    ? customTextColor
                                    : const Color(0xffc4c4c4),
                                fontFamily: 'Poppins',
                                fontSize: 12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: primaryColorOfApp, width: 0.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: customTextColor, width: 0.5)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: primaryColorOfApp,
                                ),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      sizedbox(),
                      TextFormField(
                        focusNode: passWordfocusNode,
                        cursorColor: primaryColorOfApp,
                        obscuringCharacter: '*',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Password';
                          } else if (value.length < 6) {
                            return 'Password Should be Atleat Six characters';
                          }
                          return null;
                        },
                        obscureText: obscure,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIconConstraints: const BoxConstraints(),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: passWordfocusNode.hasFocus
                                  ? customTextColor
                                  : const Color(0xffc4c4c4),
                              fontFamily: 'Poppins',
                              fontSize: 12),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          errorStyle: const TextStyle(fontSize: 8, height: 0.2),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: primaryColorOfApp, width: 0.5)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: customTextColor, width: 0.5)),
                          /* enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xff333333), width: 1)),
                    */
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              child: Icon(
                                obscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 20.sp,
                                color: obscure
                                    ? const Color(0xff515253)
                                    : const Color(0xffDADADA),
                              ),
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                          ),
                          // hintText: 'Enter Password',
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        ),
                      ),
                      sizedbox(),
                      TextFormField(
                          focusNode: emailfocusNode,
                          cursorColor: primaryColorOfApp,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email";
                            } else if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Please Enter a valid Email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                          },
                          decoration:
                              buildInputdecoration1('Enter Your Email')),
                      Padding(
                        padding: EdgeInsets.only(top: 4.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.04),
                              child: Text(
                                "Show your email contact info everyone",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: width * 0.03),
                              ),
                            ),
                            Transform.scale(
                              scale: 1.2.sp,
                              child: Checkbox(
                                  activeColor: primaryColorOfApp,
                                  shape: const CircleBorder(),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: emailshow,
                                  onChanged: ((value) {
                                    setState(() {
                                      emailshow = value!;
                                    });
                                  })),
                            )
                          ],
                        ),
                      ),
                      sizedbox1(),
                      SizedBox(
                        width: double.infinity,
                        height: 6.h,
                        child: ElevatedButton(
                          onPressed: () {
                            /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UploadImage()),
                          ); */
                            registrationmethod();
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
                            "Confirm & Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
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

  buildstacknumber() {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Column(
      children: [
        SizedBox(
          height: 5.6.h,
          child: Stack(
            children: [
              Positioned(
                top: 1.h,
                height: 4.5.h,
                width: 90.w,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5.sp, color: customTextColor),
                      borderRadius: BorderRadius.circular(5.sp)),
                  child: Row(
                    /*   mainAxisSize: MainAxisSize.max, */
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Iconify(
                            Bxs.lock_alt,
                            color: const Color(0xffE2E2E2),
                            size: 19.sp,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            '+91 ${widget.value}',
                            style: TextStyle(
                                color: const Color(0xffE2E2E2),
                                fontFamily: 'Poppins',
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: Iconify(
                          AntDesign.check_circle_outlined,
                          color: const Color(0xff08A434),
                          size: 19.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 5.w,
                height: 2.h,
                child: Container(
                  color: Colors.white,
                  child: Text(
                    'Your 10 digit Mobile number is verified',
                    style: TextStyle(
                        color: customTextColor,
                        fontSize: 8.5.sp,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.w, top: 0.5.h),
          child: Row(
            children: [
              Text(
                'This contact won\'t be shared anyone or anywhere',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 8.sp,
                    color: customTextColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Change your number anytime',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhoneNumber()),
                    );
                  },
                  child: Text(
                    'Change?',
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: 'Poppins',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        widget.value1
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Fill the details',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              color: customTextColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enjoy the entertainment world \nGet the bonus points',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              color: customTextColor),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : widget.value2
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Fill the details',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  color: customTextColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'grow your business in the world',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: const Color(0xff515253)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Fill the details',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  color: const Color(0xff515253)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'grow your fame in the world',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: const Color(0xff515253)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
      ],
    );
  }

  sizedbox() {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * 0.04,
    );
  }

  sizedbox1() {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * 0.04,
    );
  }

  buildInputdecoration(String labeltext) {
    return InputDecoration(
        isDense: true,
        labelText: labeltext,
        errorStyle: const TextStyle(fontSize: 8, height: 0.2),
        labelStyle: TextStyle(
            color: fullNamefocusNode.hasFocus
                ? customTextColor
                : const Color(0xffc4c4c4),
            fontFamily: 'Poppins',
            fontSize: 12),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: customTextColor, width: 0.5)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5),
            borderRadius: BorderRadius.circular(5)));
  }

  buildInputdecoration1(String labeltext) {
    return InputDecoration(
        isDense: true,
        labelText: labeltext,
        errorStyle: const TextStyle(fontSize: 8, height: 0.2),
        labelStyle: TextStyle(
            color:
                emailfocusNode.hasFocus ? customTextColor : const Color(0xffc4c4c4),
            fontFamily: 'Poppins',
            fontSize: 12),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: customTextColor, width: 0.5)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5),
            borderRadius: BorderRadius.circular(5)));
  }

  registrationmethod() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isloading = true;
      });

      final provider = Provider.of<Googleprovider>(context, listen: false);

      await provider.checkEmailId(email).then((value) async {
        if (value == true) {
          /*setState(() {
            isloading = true;
          }); */
          await Fluttertoast.showToast(
                  msg: "Email Id. Already Exist",
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0)
              .then((value) {
            setState(() {
              isloading = false;
            });
          });

          return;
        } else {
          setState(() {
            isloading = false;
          });
          if (widget.value1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UploadImage(
                        value1: widget.value,
                        value2: username,
                        value3: password,
                        value4: fullname,
                        value5: email,
                      )),
            );
          } else if (widget.value2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UploadBrand()));
          } else if (widget.value3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UploadPublic()));
          }
          /* Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UploadImage(
                      value1: widget.value,
                      value2: username,
                      value3: password,
                      value4: fullname,
                      value5: email,
                    )),
          ); */
        }
      });

      /* provider
          .registerUser(widget.value, username, password, fullname, email)
          .then(
        (value) async {
          if (value == "True") {
            await SharedPref.savemytubeMobileno(widget.value);
            await SharedPref.savemytubeUsername(username);
            await SharedPref.savemytubePassword(password);
            await SharedPref.savemytubeFullname(fullname);
            await SharedPref.savemytubeEmail(email);
            Fluttertoast.showToast(
                msg: "User has been created",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0);
            setState(() {
              isloading = false;
            });

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chathomepage()),
            );
            return;
          } else {
            Fluttertoast.showToast(
                msg: "Something Went Wrong ",
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            setState(() {
              isloading = false;
            });
            return;
          }
        },
      ); */

      /*     if (widget.value1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UploadImage()),
                            );
                          } else if (widget.value2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UploadBrand()));
                          } else if (widget.value3) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UploadPublic()));
                          } */
    } /* else {} */
  }
}
