// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

dynamic groupseenonline;

var everyone = 'Everyone';
var followers = 'Followers';
var following = 'Following';
var off = 'Off';
var sourceLocation = const LatLng(19.0715252, 72.8692906);
List securityList = [
  {
    "label": "Login Activity",
    "icon": "assets/loginActivity.svg",
  },
  {
    "label": "Saved Password",
    "icon": "assets/savePassword.svg",
  },
  {
    "label": "Password",
    "icon": "assets/securepass.svg",
  },
  {
    "label": "Mobile",
    "icon": "assets/mobile1.svg",
  },
  {
    "label": "Email",
    "icon": "assets/email.svg",
  }
];

buildsecurity(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Iconify(
                              Mdi.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Security',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == 5) {
                          return SizedBox(
                            height: 10.h,
                          );
                        } else {
                          return InkWell(
                            onTap: () {
                              if (index == 0) {
                                buildloginActivity(context);
                              } else if (index == 1) {
                                buildSavePassword(context);
                              } else if (index == 2) {
                                buildPassword(context);
                              } else if (index == 3) {
                                buildMobile(context);
                              } else if (index == 4) {
                                buildEmail(context);
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    index == 3
                                        ? SizedBox(
                                            width: 1.w,
                                          )
                                        : SizedBox(
                                            width: 0,
                                          ),
                                    SvgPicture.asset(
                                      securityList[index]["icon"],
                                      height: index == 4 ? 2.h : 3.h,
                                      width: index == 4 ? 2.w : 3.w,
                                      fit: BoxFit.cover,
                                    ),
                                    index == 2
                                        ? SizedBox(width: 4.w)
                                        : index == 3
                                            ? SizedBox(width: 4.5.w)
                                            : index == 4
                                                ? SizedBox(width: 4.w)
                                                : SizedBox(
                                                    width: 3.w,
                                                  ),
                                    Text(
                                      securityList[index]["label"],
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 11.sp),
                                    ),
                                  ],
                                ),
                                Iconify(
                                  Eva.arrow_right_fill,
                                  size: 15.sp,
                                  color: customTextColor,
                                )
                              ],
                            ),
                          );
                        }
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 3.5.h,
                        );
                      },
                      itemCount: 6,
                    ),
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

buildloginActivity(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Iconify(
                              Mdi.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Login Activity',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'are you logged in ?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 8.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 3.h,
                          );
                        },
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/location.svg',
                                    height: 3.h,
                                    width: 3.w,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Apple iphone',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: customTextColor,
                                                fontSize: 10.sp),
                                          ),
                                          Text(
                                            'Active Online',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xff038026),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Mumbai, Maharashtra November 30 at 12:30 pm',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: customTextColor,
                                            fontSize: 8.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    buildLoginHistory(context);
                                  },
                                  icon: Icon(
                                    Icons.more_vert,
                                    size: 15.sp,
                                  )),
                            ],
                          );
                        })),
                    SizedBox(
                      height: 12.h,
                    )
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

buildSavePassword(context) {
  var password = TextEditingController();
  bool obscure = true;
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Iconify(
                                Mdi.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Saved Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'App and websites',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Apple iphone',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10.sp),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Active',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xff038026),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Saved Password',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                          /*    SizedBox(
                            height: height * 0.01,
                          ), */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Mumbai, Maharashtra, India',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    /*      fontWeight: FontWeight.bold, */
                                    fontSize: 8.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '@profile.username',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          TextFormField(
                            cursorColor: primaryColorOfApp,
                            controller: password,
                            obscureText: obscure,
                            decoration: InputDecoration(
                              isDense: true,
                              errorStyle:
                                  const TextStyle(fontSize: 8, height: 0.2),
                              labelText: 'password',
                              labelStyle: const TextStyle(
                                  color: Color(0xffC4C4C4),
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
                              suffixIconConstraints: BoxConstraints(),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(),
                                    onPressed: () {
                                      setState(() {
                                        obscure = !obscure;
                                      });
                                    },
                                    icon: Icon(
                                      obscure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color(0xffe2e2e2),
                                    )),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                            ),
                            onChanged: (value) {
                              // do something
                            },
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                    /* minimumSize: Size(100, 5), */
                                    elevation: 0,
                                    visualDensity:
                                        const VisualDensity(vertical: -4),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                onPressed: () {
                                  buildPassword(context);
                                },
                                child: Text('Change Password',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Other Multiple Devices Your Password Saved',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    /*       fontWeight: FontWeight.bold, */
                                    fontSize:
                                        MediaQuery.of(context).size.height > 667
                                            ? 10.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Windows',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor,
                                              /*       fontWeight: FontWeight.bold, */
                                              fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Active',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xff038026),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Saved Password',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor,
                                              /*      fontWeight: FontWeight.bold, */
                                              fontSize: 12.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mumbai, Maharashtra, India  15 October 2022 at 10:30 am',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor,
                                              /*   fontWeight: FontWeight.bold, */
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                              separatorBuilder: ((context, index) {
                                return SizedBox(
                                  height: 3.h,
                                );
                              }),
                              itemCount: 3),
                          SizedBox(
                            height: height * 0.1,
                          )
                        ])),
                  ],
                ),
                positionCross(context)
              ],
            ),
          );
        });
      });
}

buildPassword(context) {
  var password = TextEditingController();
  bool obscure = true;
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Iconify(
                                Mdi.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Last Change Password ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 10.sp),
                            ),
                            Text(
                              'October 30 2022 at 08:30 pm',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 8.sp),
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
                              'Change Your Password',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  /*      fontWeight: FontWeight.bold, */
                                  fontSize: 13.sp),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Secure Your Profile ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  /*   fontWeight: FontWeight.bold, */
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          cursorColor: primaryColorOfApp,
                          /*  controller: password, */
                          obscureText: obscure,
                          decoration: InputDecoration(
                            isDense: true,
                            errorStyle:
                                const TextStyle(fontSize: 8, height: 0.2),
                            labelText: 'Current Password',
                            labelStyle: const TextStyle(
                                color: Color(0xffC4C4C4),
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
                            suffixIconConstraints: BoxConstraints(),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: Icon(
                                    obscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xffe2e2e2)),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          cursorColor: primaryColorOfApp,
                          /*         controller: password, */
                          obscureText: obscure,
                          decoration: InputDecoration(
                            isDense: true,
                            errorStyle:
                                const TextStyle(fontSize: 8, height: 0.2),
                            labelText: 'New Password',
                            labelStyle: const TextStyle(
                                color: Color(0xffC4C4C4),
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
                            suffixIconConstraints: BoxConstraints(),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: Icon(
                                    obscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xffe2e2e2)),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          cursorColor: primaryColorOfApp,
                          /*     controller: password, */
                          obscureText: obscure,
                          decoration: InputDecoration(
                            isDense: true,
                            errorStyle:
                                const TextStyle(fontSize: 8, height: 0.2),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(
                                color: Color(0xffC4C4C4),
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
                            suffixIconConstraints: BoxConstraints(),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: Icon(
                                    obscure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0xffe2e2e2)),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size(42.w, 5.h),
                                  elevation: 0,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  side: const BorderSide(
                                    color: Color(0xff0087FF),
                                  ),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(42.w, 5.h),
                                  elevation: 0,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  backgroundColor: primaryColorOfApp,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              child: Text(
                                "Save Changes",
                                style: TextStyle(
                                    fontSize: 12.sp, fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.1,
                        )
                      ]),
                    ),
                  ],
                ),
                positionCross(context)
              ],
            ),
          );
        });
      });
}

buildMobile(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Iconify(
                                Mdi.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Mobile',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Last Change Your Mobile Number ',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        /*     fontWeight: FontWeight.bold, */
                                        fontSize: 12.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'October 30 2022 at 08:30 pm',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        /*      fontWeight: FontWeight.bold, */
                                        fontSize: 8.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: SizedBox(
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
                                        border: Border.all(
                                            width: 0.5.sp,
                                            color: customTextColor),
                                        borderRadius:
                                            BorderRadius.circular(5.sp)),
                                    child: Row(
                                      /*   mainAxisSize: MainAxisSize.max, */
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              '+91 8689880061',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xffE2E2E2),
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
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.w, top: 2.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'This contact won\'t be shared anyone or anywhere',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 9.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Change your number anytime',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    alignment: Alignment.bottomLeft,
                                    /* minimumSize: Size(100, 5), */
                                    elevation: 0,
                                    visualDensity:
                                        const VisualDensity(vertical: -4),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                onPressed: () {},
                                child: Text('Change ?',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Verify again, Secure your Profile',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    alignment: Alignment.bottomLeft,
                                    /* minimumSize: Size(100, 5), */
                                    elevation: 0,
                                    visualDensity:
                                        const VisualDensity(vertical: -4),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                onPressed: () {},
                                child: Text('Verify',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ],
                ),
                positionCross(context)
              ],
            ),
          );
        });
      });
}

buildEmail(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Iconify(
                                Mdi.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Last Change Your Email ID',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*     fontWeight: FontWeight.bold, */
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'October 30 2022 at 08:30 pm',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 9.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      TextFormField(
                        cursorColor: primaryColorOfApp,
                        decoration: InputDecoration(
                          isDense: true,
                          errorStyle: const TextStyle(fontSize: 8, height: 0.2),
                          labelText: 'email id',
                          labelStyle: const TextStyle(
                              color: Color(0xffC4C4C4),
                              fontFamily: 'Poppins',
                              fontSize: 12),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: primaryColorOfApp, width: 0.5)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: customTextColor, width: 0.5)),
                          suffixIconConstraints: BoxConstraints(),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset(
                              'assets/pentosquare.svg',
                              height: 2.5.h,
                              width: 4.5.w,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                        ),
                        onChanged: (value) {
                          // do something
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Your Email not verify',
                            style: TextStyle(
                                color: Color(0xffED1B24),
                                fontSize: 10.sp,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Verify and Secure your Profile',
                            style: TextStyle(
                                color: customTextColor,
                                fontSize: 10.sp,
                                fontFamily: 'Poppins'),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                /* minimumSize: Size(100, 5), */
                                elevation: 0,
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {},
                            child: Text('Verify',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.2,
                      )
                    ])),
                positionCross(context)
              ],
            ),
          );
        });
      });
}

buildLoginHistory(context) {
  Size size;
  double height;
  size = MediaQuery.of(context).size;
  height = size.height;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 0.5, color: const Color(0xff515253)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 15.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: sourceLocation, zoom: 14.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Oppo 11 Pro',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Active',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color(0xff038026),
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Offline',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'New Delhi 15 October 2022 at 10:30 am',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 8.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'be careful',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff038026),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'are you sure, logged in by you ? ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 11.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(44.w, 5.h),
                              elevation: 0,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: customTextColor,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(44.w, 5.h),
                              elevation: 0,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: primaryColorOfApp,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: Text(
                            "Log Out",
                            style: TextStyle(
                                fontSize: 12.sp, fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

buildTextDesign(fontsize, color, fontWeight) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontsize,
      color: color,
      fontWeight: fontWeight);
}

bool valueofswitch = true;

bool emailid = false;
bool emailid1 = false;
bool urlvariable = false;
var groupemail;

List items = [
  'item1',
  'item2',
  'item3',
];
String? value;
bool private = false;
bool public = false;
bool rewards = false;
bool value1 = false;
bool value2 = false;

