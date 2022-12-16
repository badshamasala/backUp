// ignore_for_file: prefer_typing_uninitialized_variables



import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/formfill.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:sizer/sizer.dart';

class AccountType extends StatefulWidget {
  final value;
  const AccountType({super.key, this.value});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic groupvalues;

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              TextFormField(
                enabled: false,
                initialValue: '+91 ${widget.value}',
                decoration: InputDecoration(
                  isDense: true,
                  prefixStyle: TextStyle(
                      color: const Color(0xffe2e2e2),
                      fontFamily: 'Poppins',
                      fontSize: 18.sp),
                  prefix: Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                    ),
                    child: Row(
                      children: [
                        const Iconify(
                          Bxs.lock_alt,
                          color: Color(0xffE2E2E2),
                        ),
                        Text('+91 ${widget.value}')
                      ],
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 8.sp),
                    child: Iconify(
                      AntDesign.check_circle_outlined,
                      color: Color(0xff08A434),
                      size: 20.sp,
                    ),
                  ),
                  suffixIconConstraints: const BoxConstraints(),
                  prefixIconConstraints: const BoxConstraints(),
                  labelText: 'Your 10 digit Mobile number is verified',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                          color: Color(0xff333333), width: 0.5)),
                  labelStyle: const TextStyle(
                      color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10.0,
                  ),
                ),
              ),
              /* Container(
                color: Colors.red,
                height: 48,
                child: Stack(
                  children: [
                    Positioned(
                      top: 7,
                      left: 0,
                      height: 35,
                      width: 288,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(5)),
                        /*  width: 150,
                height: 150, */
                        /*  color: Colors.green[300], */
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                const Iconify(
                                  Bxs.lock_alt,
                                  color: Color(0xffE2E2E2),
                                  size: 19,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  '+91 ${widget.value}',
                                  style: TextStyle(
                                      color: const Color(0xffE2E2E2),
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.059),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Iconify(
                                AntDesign.check_circle_outlined,
                                color: Color(0xff08A434),
                                size: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 15,
                      width: 170,
                      height: 13,
                      child: Container(
                        /*   width: 200,
                height: 150, */
                        color: Colors.white,
                        child: const Text(
                          'Your 10 digit Mobile number is verified',
                          style: TextStyle(
                              color: Color(0xff515253),
                              fontSize: 10,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
              ), */
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.05, top: height * 0.01),
                child: Row(
                  children: [
                    Text(
                      'This contact won\'t be shared anyone or anywhere',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10.sp,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select type of account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can change this anytime ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13.sp,
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value1 ? primaryColorOfApp : Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Viewer or private',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                          Transform.scale(
                            scale: 1.3,
                            child: Radio(
                              splashRadius: 0,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value1,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = true;
                                  value2 = false;
                                  value3 = false;
                                  groupvalues = value1;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value2 ? primaryColorOfApp : Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Business or Brand',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                          Transform.scale(
                            scale: 1.3,
                            child: Radio(
                              splashRadius: 0,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value2,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = false;
                                  value2 = true;
                                  value3 = false;
                                  groupvalues = value2;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,
                        color: value3 ? primaryColorOfApp : Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'creator or public figure',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                          Transform.scale(
                            scale: 1.3,
                            child: Radio(
                              splashRadius: 0,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value3,
                              groupValue: groupvalues,
                              onChanged: (val) {
                                setState(() {
                                  value1 = false;
                                  value2 = false;
                                  value3 = true;
                                  groupvalues = value3;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '#content-excellent for Entertainment,',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                      Text(
                        'collect points, surprise gift and more',
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.09),
                child: Row(
                  children: [
                    Text('You have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04)),
                    TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          'login',
                          style: TextStyle(
                              color: Color(
                                0xff0087FF,
                              ),
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        'I accepted ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: const Color(0xff515253),
                            fontSize: width * 0.03),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: const Text(
                          'terms of services ',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: const Text('privacy policy',
                            style: TextStyle(fontSize: 11)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: const Text('Licence agreement',
                            style: TextStyle(fontSize: 11)),
                      ),
                      const Text(
                        ' &',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xff0087FF),
                        ),
                        child: const Text('read more',
                            style: TextStyle(fontSize: 11)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: double.infinity,
                height: 6.h,
                child: ElevatedButton(
                  onPressed: groupvalues == null
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Formfill(
                                      value1: value1,
                                      value2: value2,
                                      value3: value3,
                                      value: widget.value,
                                    )),
                          );
                          /*  /* setState(() { */
                    if (value1 == false || value2== false || value3 ==false) {
                      Fluttertoast.showToast(
                          msg: "Invalid Credentials",
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } else {
                    /* value1 == false ? null :  value2  == false ? null : */ Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Formfill(
                                  value1: value1,
                                  value2: value2,
                                  value3: value3,
                                )),
                      );
                    } */
                          /* if (groupvalues == value1) {
                        /* var value1 = 'Private'; */
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Formfill(
                                    value1: value1,
                                    value2: value2,
                                    value3: value3,
                                  )),
                        );
                      } */ /* else if (groupvalues == value2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormfillBrand()),
                        );
                      } */ /*  else if (groupvalues == value3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormfillPublic()),
                        );
                      } */
                          /*     }); */
                        },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      /*     minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0))),
                  child: Text(
                    "Confirm & Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.045,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
