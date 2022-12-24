// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
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
    "icon": null,
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
                              fontSize: 13.sp),
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
                                  securityList[index]["icon"] == null
                                      ? Iconify(Carbon.email)
                                      : SvgPicture.asset(
                                          securityList[index]["icon"],
                                          height: 18,
                                          width: 18,
                                        ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    securityList[index]["label"],
                                    style: ProfileSelf().buildtextstyle(),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: customTextColor,
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 4.h,
                        );
                      },
                      itemCount: 5,
                    ),
                    SizedBox(
                      height: 5.h,
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
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffE2E2E2),
                              borderRadius: BorderRadius.circular(8)),
                          height: 5,
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        const Text(
                          'Login Activity',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'are you logged in ?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 8),
                        ),
                      ],
                    ),
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: height * 0.01,
                          );
                        },
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return SizedBox(
                            height: 40,
                            child: ListTile(
                              horizontalTitleGap: 0,
                              leading: SvgPicture.asset('assets/location.svg'),
                              title: Row(
                                children: const [
                                  Text(
                                    'Apple iphone',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    'Active Online',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xff038026),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              subtitle: const Text(
                                'Mumbai, Maharashtra November 30 at 12:30 pm',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    buildLoginHistory(context);
                                  },
                                  icon: const Icon(Icons.more_vert)),
                            ),
                          );
                        })),
                    SizedBox(
                      height: height * 0.1,
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
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Saved Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'App and websites',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Apple iphone',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*     fontWeight: FontWeight.bold, */
                                fontSize: 10),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff038026),
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 8),
                          ),
                          Text(
                            'Saved Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*                fontWeight: FontWeight.bold, */
                                fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Mumbai, Maharashtra, India',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 8),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            '@profile.username',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                /*   fontWeight: FontWeight.bold, */
                                fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 35,
                        child: TextFormField(
                          controller: password,
                          obscureText: obscure,
                          decoration: InputDecoration(
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: customTextColor, width: 0.5)),
                            suffixIcon: GestureDetector(
                              child: Icon(obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
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
                            onPressed: () {},
                            child: const Text('Change Password',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Other Multiple Devices Your Password Saved',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*       fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Windows',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*       fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff038026),
                                /*        fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                          Text(
                            'Saved Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Mumbai, Maharashtra, India  15 October 2022 at 10:30 am',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*   fontWeight: FontWeight.bold, */
                                fontSize: 9.4),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
                      )
                    ])),
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
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Last Change Password ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*     fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                          Text(
                            'October 30 2022',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 10),
                          ),
                          Text(
                            'at 08:30 pm',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*                fontWeight: FontWeight.bold, */
                                fontSize: 10),
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
                            'Change Your Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            ' Secure Your Profile ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*   fontWeight: FontWeight.bold, */
                                fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 35,
                        child: TextFormField(
                          controller: password,
                          obscureText: obscure,
                          decoration: InputDecoration(
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: customTextColor, width: 0.5)),
                            suffixIcon: GestureDetector(
                              child: Icon(obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 35,
                        child: TextFormField(
                          controller: password,
                          obscureText: obscure,
                          decoration: InputDecoration(
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: customTextColor, width: 0.5)),
                            suffixIcon: GestureDetector(
                              child: Icon(obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 35,
                        child: TextFormField(
                          controller: password,
                          obscureText: obscure,
                          decoration: InputDecoration(
                            errorStyle:
                                const TextStyle(fontSize: 8, height: 0.2),
                            labelText: 'New Confirm Password ',
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
                            suffixIcon: GestureDetector(
                              child: Icon(obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
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
                                minimumSize: const Size(140, 35),
                                /*    minimumSize: Size(32, 30), */
                                elevation: 0,
                                /* padding: EdgeInsets.zero, */
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                side: const BorderSide(
                                  color: Color(0xff0087FF),
                                ),
                                /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child: const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 12,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(135, 35),
                                /*  minimumSize: Size(32, 30), */
                                elevation: 0,
                                /* padding: EdgeInsets.zero, */
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                                /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                backgroundColor: primaryColorOfApp,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child: const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Text(
                                "Save Changes",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
                      )
                    ])),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Mobile',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Last Change Your Mobile Number ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*     fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'October 30 2022 at 08:30 pm',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        height: 48,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 7,
                              left: 0,
                              height: 40,
                              width: 288,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.5,
                                        color: const Color(0xff515253)),
                                    borderRadius: BorderRadius.circular(5)),
                                /*  width: 150,
                      height: 150, */
                                /*  color: Colors.green[300], */
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    const Icon(
                                      Icons.lock,
                                      color: Color(0xff737373),
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Text(
                                      '+91 8689880061',
                                      style: TextStyle(
                                          color: const Color(0xffC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.06),
                                    ),
                                    SizedBox(
                                      width: width * 0.27,
                                    ),
                                    const Icon(
                                      Icons.check_circle_outline,
                                      color: Color(0xff038026),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 10,
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'This contact won\'t be shared anyone or anywhere',
                            style: TextStyle(
                                color: customTextColor,
                                fontSize: 10,
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
                          const Text(
                            'Change your number anytime',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
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
                            child: const Text('Change ?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Verify again, Secure your Profile',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
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
                            child: const Text('Verify',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        height: height * 0.1,
                      )
                    ])),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Last Change Your Email ID',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*     fontWeight: FontWeight.bold, */
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'October 30 2022 at 08:30 pm',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                /*      fontWeight: FontWeight.bold, */
                                fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            errorStyle:
                                const TextStyle(fontSize: 8, height: 0.2),
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
                            suffixIcon: const Iconify(
                              Bx.edit,
                              color: Color(0xffc4c4c4),
                            ),
                            contentPadding: const EdgeInsets.all(15),
                          ),
                          onChanged: (value) {
                            // do something
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Your Email not verify',
                            style: TextStyle(
                                color: Color(0xffED1B24),
                                fontSize: 10,
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
                          const Text(
                            'Verify and Secure your Profile',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
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
                            child: const Text('Verify',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
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
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 0.5, color: const Color(0xff515253)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 100,
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
                      children: const [
                        Text(
                          'Oppo 11 Pro',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'Active Offline',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff038026),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'be careful ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff038026),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'are you sure, logged in by you ? ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(140, 35),
                              /*    minimumSize: Size(32, 30), */
                              elevation: 0,
                              /* padding: EdgeInsets.zero, */
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 12,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(135, 35),
                              /*  minimumSize: Size(32, 30), */
                              elevation: 0,
                              /* padding: EdgeInsets.zero, */
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                              /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                              backgroundColor: primaryColorOfApp,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'Poppins'),
                            ),
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
aboutProfile(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 168, 161, 161),
                        border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 168, 161, 161)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 5,
                    width: 100,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Color(0xff0087FF)),
                        ),
                        Iconify(
                          Bi.patch_check,
                          size: 15,
                          color: primaryColorOfApp,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            ListTile(
                                              minVerticalPadding: 10,
                                              horizontalTitleGap: 4,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: -3),
                                              dense: true,
                                              leading: const CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                              ),
                                              title: Row(
                                                children: const [
                                                  Text(
                                                    '@Nanncyjain23 ',
                                                    style: TextStyle(
                                                        color:
                                                            primaryColorOfApp,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  Iconify(
                                                    Bi.patch_check,
                                                    size: 15,
                                                    color: primaryColorOfApp,
                                                  ),
                                                ],
                                              ),
                                              subtitle: Text(
                                                '@m.rajan02',
                                                style: ProfileSelf()
                                                    .buildtextstyle(),
                                              ),
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'Information about this profile',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'this is viewer’s private profile ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'this profile created in 24-july-2018 ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'this profile created in india ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'this profile is verified  ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      ),
                                                      Iconify(
                                                        Bi.patch_check,
                                                        size: 15,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'this profile current rating is',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.green,
                                                        size: 17,
                                                      ),
                                                      Text(
                                                        '4.8',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        'how much would you like to ratings this profile?',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      RatingBar.builder(
                                                        itemSize: 20,
                                                        initialRating: 3,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: false,
                                                        itemCount: 5,
                                                        itemPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    4.0),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                          Icons.star,
                                                          color: Colors.green,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                elevation: 0,
                                                                minimumSize:
                                                                    const Size(
                                                                        120,
                                                                        35),
                                                                // padding: EdgeInsets.symmetric(
                                                                //     horizontal: 40.0, vertical: 20.0),
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xff0087FF),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0))),
                                                        child: Text(
                                                          "Submit",
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
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.2,
                                                  ),
                                                ],
                                              ),
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
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
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
                              );
                            });
                          });
                    },
                    title: Text(
                      'About profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/setabout.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/hearticon.svg',
                              height: 18,
                              width:
                                  18, /*  color: value1 ? Colors.red : Colors.black */
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text('my favourties profile',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: value1
                                          ? const Color(0xff0087FF)
                                          : Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: const CircleBorder(),
                            value: value1,
                            onChanged: (value1) {
                              print('object');
                              setState(() {
                                value1 = value1!;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/friendicon.svg',
                              height: 18,
                              width:
                                  18, /*           color: value1 ? Colors.red : Colors.black */
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text('my close friends',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: value1
                                          ? const Color(0xff0087FF)
                                          : Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: const CircleBorder(),
                            value: value2,
                            onChanged: (value2) {
                              setState(() {
                                value2 = value2!;
                              });
                            }),
                      ),
                    ],
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
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
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE2E2E2),
                                                border: Border.all(
                                                  width: 0.5,
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 5,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 18.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'share to ',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                children: [
                                                  const Text(
                                                    'send to chat-box ',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 8),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Image.asset(
                                                    'assets/logo.png',
                                                    height: 22,
                                                    width: 22,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  const Text(
                                                    'send to group ',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 8),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/privacygroup.svg',
                                                    height: 22,
                                                    width: 22,
                                                  ),
                                                ],
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  final box =
                                                      context.findRenderObject()
                                                          as RenderBox?;
                                                  Share.share('aasd',
                                                      subject: 'axaa',
                                                      sharePositionOrigin: box!
                                                              .localToGlobal(
                                                                  Offset.zero) &
                                                          box.size);
                                                },
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      'share to',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/settingshare.svg',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          SizedBox(
                                              height: 40,
                                              child: TextFormField(
                                                  decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Color(
                                                                    0xff333333),
                                                                width: 0.5)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Color(
                                                                    0xff0087FF),
                                                                width: 0.5)),
                                                labelText: 'Search',
                                              ))),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: 3,
                                              itemBuilder: ((context, index) {
                                                return ListTile(
                                                  minVerticalPadding: 10,
                                                  horizontalTitleGap: 4,
                                                  visualDensity:
                                                      const VisualDensity(
                                                          vertical: -3),
                                                  dense: true,
                                                  leading: const CircleAvatar(
                                                    radius: 20,
                                                    backgroundImage: NetworkImage(
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                  ),
                                                  title: Text(
                                                    'Rajan Mistry-1 ',
                                                    style: ProfileSelf()
                                                        .buildtextstyle(),
                                                  ),
                                                  subtitle: Text(
                                                    '@m.rajan02',
                                                    style: ProfileSelf()
                                                        .buildtextstyle(),
                                                  ),
                                                  trailing: OutlinedButton(
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                              elevation: 0,
                                                              minimumSize:
                                                                  const Size(
                                                                      80, 30),
                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              side:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xff0087FF),
                                                              ),
                                                              backgroundColor:
                                                                  Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Send',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 10),
                                                      )),
                                                );
                                              })),
                                          SizedBox(
                                            height: height * 0.2,
                                          )
                                        ]),
                                  ),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'share this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/shareicon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          /*  isScrollControlled: true, */
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
                                    child: Column(
                                        /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                                        children: [
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE2E2E2),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: const Color(
                                                        0xffE2E2E2)),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 5,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Notifications',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff0087FF)),
                                              ),
                                              Iconify(
                                                Bi.patch_check,
                                                size: 15,
                                                color: primaryColorOfApp,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            /* color: Colors.red, */
                                            height: 48,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 7,
                                                  left: 0,
                                                  height: 40,
                                                  width: 280,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color: const Color(
                                                                0xff515253)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    /*  width: 150,
                height: 150, */
                                                    /*  color: Colors.green[300], */
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Row(
                                                            children: const [
                                                              Text(
                                                                '26548 rank ',
                                                                style: TextStyle(
                                                                    color:
                                                                        primaryColorOfApp,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '489659984 ',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                'Points',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 8.0),
                                                          child: Image.asset(
                                                              'assets/earnpoints.png'),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 30,
                                                  width: 70,
                                                  height: 10,
                                                  child: Container(
                                                    /*   width: 200,
                height: 150, */
                                                    color: Colors.white,
                                                    child: const Text(
                                                      'Earn Points This Profile ',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'Today',
                                                style: TextStyle(
                                                    color: primaryColorOfApp,
                                                    fontFamily: 'Poppins'),
                                              ),
                                              SizedBox(
                                                width: width * 0.03,
                                              ),
                                              const Text(
                                                '13 Dec 2020',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8),
                                              )
                                            ],
                                          ),
                                          const Divider(),
                                          SizedBox(
                                            /* color: Colors.red, */
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 7,
                                                  left: 0,
                                                  height: 140,
                                                  width: 280,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color: const Color(
                                                                0xff515253)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    /*  width: 150,
                height: 150, */
                                                    /*  color: Colors.green[300], */
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: const [
                                                              Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: const [
                                                              Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: const [
                                                              Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 210,
                                                  width: 55,
                                                  height: 12,
                                                  child: Container(
                                                    /*   width: 200,
                height: 150, */
                                                    color: Colors.white,
                                                    child: const Text(
                                                      '@profile-ID',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 115,
                                                  width: 30,
                                                  height: 10,
                                                  child: Container(
                                                    /*   width: 200,
                height: 150, */
                                                    color: Colors.white,
                                                    child: const Text(
                                                      'Points ',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 20,
                                                  width: 25,
                                                  height: 10,
                                                  child: Container(
                                                    /*   width: 200,
                height: 150, */
                                                    color: Colors.white,
                                                    child: const Text(
                                                      'Rank',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'earn points this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: const Iconify(
                      EmojioneMonotone.wrapped_gift,
                      color: customTextColor,
                      size: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          /*  isScrollControlled: true, */
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  '@Nanncyjain23',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                                Iconify(
                                                  Bi.patch_check,
                                                  size: 15,
                                                  color: primaryColorOfApp,
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'this profile joined multiple group ',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'only showing public group ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.03,
                                            ),
                                            ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 3,
                                                itemBuilder: ((context, index) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    'this is public group',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                ],
                                                              ),
                                                              Text(
                                                                  'you can join this group ',
                                                                  style: ProfileSelf()
                                                                      .buildtextstyle()),
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  'Shopping Center',
                                                                  style: ProfileSelf()
                                                                      .buildtextstyle()),
                                                              const Text(
                                                                '@see-groups',
                                                                style: TextStyle(
                                                                    color:
                                                                        primaryColorOfApp,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      )
                                                    ],
                                                  );
                                                })),
                                          ])),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'group join? this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/privacygroup.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      setState(() {
                        urlvariable = true;
                      });
                    },
                    title: Text(
                      'copy URL this profile',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color:
                              urlvariable ? primaryColorOfApp : customTextColor,
                          fontSize: 10),
                    ),
                    leading: SvgPicture.asset(
                      'assets/urlicon.svg',
                      color: urlvariable ? primaryColorOfApp : customTextColor,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image(
                                                          image:
                                                              const AssetImage(
                                                            'assets/logo.png',
                                                          ),
                                                          height:
                                                              height * 0.055,
                                                          width: width * 0.12,
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      Text(
                                                        'myttube',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xff0087FF),
                                                          fontFamily: 'Satisfy',
                                                          fontSize:
                                                              width * 0.08,
                                                          shadows: const [
                                                            Shadow(
                                                              blurRadius: 5.0,
                                                              color: Color(
                                                                  0xff000000),
                                                              /* offset: Offset(
                                                                                      1.0,
                                                                                      1.0), */
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  OutlinedButton(
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                              elevation: 0,
                                                              side: const BorderSide(
                                                                  width: 0.5,
                                                                  color:
                                                                      primaryColorOfApp),
                                                              minimumSize:
                                                                  const Size(
                                                                      80, 30),
                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'follow',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 10),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 250,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: primaryColorOfApp,
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  shape: BoxShape.rectangle),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(30.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                primaryColorOfApp,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        shape:
                                                            BoxShape.rectangle),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: const [
                                                          Iconify(
                                                            Bi.qr_code,
                                                            size: 140,
                                                          ),
                                                          Text(
                                                            '@Nanncyjain23',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    primaryColorOfApp,
                                                                fontSize: 20),
                                                          )
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28.0),
                                              child: Row(
                                                children: const [
                                                  Text(
                                                    'LOGIN:',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    'https://myttube.com',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: const [
                                                      Icon(
                                                        Icons.download,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                      Text('download QR code')
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/shareicon.svg',
                                                        height: 18,
                                                        width: 18,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                      const Text(
                                                          'share QR code')
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.2,
                                            )
                                          ])),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'QR Code this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: const Iconify(
                      Bi.qr_code_scan,
                      size: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  '@Nanncyjain23',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                                Iconify(
                                                  Bi.patch_check,
                                                  size: 15,
                                                  color: primaryColorOfApp,
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'report this profile ',
                                                  style: buildTextDesign(null,
                                                      null, FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 11.0),
                                                  child: SvgPicture.asset(
                                                    'assets/blockicon.svg',
                                                    height: 18,
                                                    width: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'what do you want to do?',
                                                  style: buildTextDesign(
                                                      11.0, null, null),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'harassment message',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Report Post, Message, Comments',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Copyrights',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'intellectual property defamation',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            SizedBox(
                                              width: double.infinity,
                                              child: OutlinedButton(
                                                onPressed: () {
                                                  /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                },
                                                style: OutlinedButton.styleFrom(
                                                    side: const BorderSide(
                                                      color: Color(0xff0087FF),
                                                    ),
                                                    /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                    backgroundColor:
                                                        primaryColorOfApp,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0))),
                                                child: const Text(
                                                  "report",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                      /*  fontSize: 18, */
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.1,
                                            )
                                          ])),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'Report this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/reporticon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  '@Nanncyjain23',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                                Iconify(
                                                  Bi.patch_check,
                                                  size: 15,
                                                  color: primaryColorOfApp,
                                                ),
                                              ],
                                            ),
                                            const Divider(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'are you sure block this profile?',
                                                  style: buildTextDesign(null,
                                                      null, FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 11.0),
                                                  child: SvgPicture.asset(
                                                    'assets/blockicon.svg',
                                                    height: 18,
                                                    width: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'why you blocking this profile?',
                                                  style: buildTextDesign(
                                                      11.0, null, null),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'harassment message',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'hateful speech',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'adult content',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'fake account',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                OutlinedButton(
                                                  onPressed: () {
                                                    /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          minimumSize:
                                                              const Size(
                                                                  120, 37),
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xff0087FF),
                                                          ),
                                                          /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                          backgroundColor:
                                                              primaryColorOfApp,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: const Text(
                                                    "Block",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                        /*  fontSize: 18, */
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {
                                                    /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xff0087FF),
                                                          ),
                                                          /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: const Text(
                                                    "Block & report",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            primaryColorOfApp,
                                                        /*  fontSize: 18, */
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.1,
                                            )
                                          ])),
                                  positionCross(context)
                                ],
                              );
                            });
                          });
                    },
                    title: Text(
                      'Block this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/blockicon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  )
                ],
              ),
              positionCross(context)
            ],
          );
        });
      });
}
