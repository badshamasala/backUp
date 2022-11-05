import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googlenewpage.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/arcticons.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/bytesize.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/et.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mingcute.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ProfileSelf extends StatefulWidget {
  ProfileSelf({super.key});

  @override
  State<ProfileSelf> createState() => _ProfileSelfState();

  dynamic groupvalue;

  var hindi = 'Hindi';
  var english = 'English';

  var bengali = 'Bengali';
  var gujarati = 'Gujarati';
  var marathi = 'Marathi';
  var urdu = 'Urdu';
  var odia = 'Odia';
  var kannada = 'Kannada';
  var tamil = 'Tamil';
  var telugu = 'Telugu';
  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';

  buildStory(BuildContext context) {
    dynamic groupseenonline;

    var everyone = 'Everyone';
    var followers = 'Followers';
    var following = 'Following';
    var off = 'Off';
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Story',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 150,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 124,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers & Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 83,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Showig Your Story',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 150,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 124,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers & Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 163,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Like, Comments & Share Your Story',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      )
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildActivityStatus(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
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
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE2E2E2),
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
                                  padding: EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Activity Status',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            /* color: Colors.red, */
                            height: 200,
                            child: Stack(children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                height: 165,
                                width: 288,
                                child: Container(
                                  decoration: BoxDecoration(
                                      /* color: Colors.yellow, */
                                      border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff515253)),
                                      borderRadius: BorderRadius.circular(10)),
                                  /*  width: 150,
                  height: 150, */
                                  /*  color: Colors.green[300], */
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Everyone",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: everyone,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = everyone;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "OFF",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: off,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = off;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 20,
                                width: 130,
                                height: 10,
                                child: Container(
                                  /*   width: 200,
                  height: 150, */
                                  color: Colors.white,
                                  child: const Text(
                                    'Profile Active Seen & Online ',
                                    style: TextStyle(
                                        color: Color(0xff515253),
                                        fontSize: 10,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildShowRewardpoint(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
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
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE2E2E2),
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
                                  padding: EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Show Reward Points',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            /* color: Colors.red, */
                            height: 200,
                            child: Stack(children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                height: 165,
                                width: 288,
                                child: Container(
                                  decoration: BoxDecoration(
                                      /* color: Colors.yellow, */
                                      border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff515253)),
                                      borderRadius: BorderRadius.circular(10)),
                                  /*  width: 150,
                  height: 150, */
                                  /*  color: Colors.green[300], */
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Everyone",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: everyone,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = everyone;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "OFF",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: off,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = off;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 20,
                                width: 90,
                                height: 10,
                                child: Container(
                                  /*   width: 200,
                  height: 150, */
                                  color: Colors.white,
                                  child: const Text(
                                    'Show Reward Points',
                                    style: TextStyle(
                                        color: Color(0xff515253),
                                        fontSize: 10,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildMention(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
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
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE2E2E2),
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
                                  padding: EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                '@Mension',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            /* color: Colors.red, */
                            height: 200,
                            child: Stack(children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                height: 165,
                                width: 288,
                                child: Container(
                                  decoration: BoxDecoration(
                                      /* color: Colors.yellow, */
                                      border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff515253)),
                                      borderRadius: BorderRadius.circular(10)),
                                  /*  width: 150,
                  height: 150, */
                                  /*  color: Colors.green[300], */
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Everyone",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: everyone,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = everyone;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "OFF",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: off,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = off;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 20,
                                width: 90,
                                height: 12,
                                child: Container(
                                  /*   width: 200,
                  height: 150, */
                                  color: Colors.white,
                                  child: const Text(
                                    '@mention you from',
                                    style: TextStyle(
                                        color: Color(0xff515253),
                                        fontSize: 10,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildTag(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
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
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE2E2E2),
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
                                  padding: EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Tag',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            /* color: Colors.red, */
                            height: 200,
                            child: Stack(children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                height: 165,
                                width: 288,
                                child: Container(
                                  decoration: BoxDecoration(
                                      /* color: Colors.yellow, */
                                      border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff515253)),
                                      borderRadius: BorderRadius.circular(10)),
                                  /*  width: 150,
                  height: 150, */
                                  /*  color: Colors.green[300], */
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Everyone",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: everyone,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = everyone;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "OFF",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: off,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = off;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 20,
                                width: 70,
                                height: 12,
                                child: Container(
                                  /*   width: 200,
                  height: 150, */
                                  color: Colors.white,
                                  child: const Text(
                                    '@Tag you from',
                                    style: TextStyle(
                                        color: Color(0xff515253),
                                        fontSize: 10,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildSendmeGift(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
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
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffE2E2E2),
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
                                  padding: EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                'Send me GIFT',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          Divider(),
                          Container(
                            /* color: Colors.red, */
                            height: 200,
                            child: Stack(children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                height: 165,
                                width: 288,
                                child: Container(
                                  decoration: BoxDecoration(
                                      /* color: Colors.yellow, */
                                      border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xff515253)),
                                      borderRadius: BorderRadius.circular(10)),
                                  /*  width: 150,
                  height: 150, */
                                  /*  color: Colors.green[300], */
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Everyone",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: everyone,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = everyone;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              })
                                        ],
                                      ),
                                      Divider(
                                        height: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "OFF",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: off,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = off;
                                                });
                                              })
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: 20,
                                width: 90,
                                height: 12,
                                child: Container(
                                  /*   width: 200,
                  height: 150, */
                                  color: Colors.white,
                                  child: const Text(
                                    'Recieved Gift From',
                                    style: TextStyle(
                                        color: Color(0xff515253),
                                        fontSize: 10,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
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
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      foregroundColor: const Color(0xff0087FF),
                                    ),
                                    child: const Text(
                                      'terms of services ',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                  const Text(
                                    '& ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff515253),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
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
                                  Text(
                                    'and ',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xff515253),
                                        fontSize: width * 0.03),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      foregroundColor: const Color(0xff0087FF),
                                    ),
                                    child: const Text('license agreement',
                                        style: TextStyle(fontSize: 11)),
                                  ),
                                  const Text(
                                    ' &',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xff515253),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      foregroundColor: const Color(0xff0087FF),
                                    ),
                                    child: const Text('read more',
                                        style: TextStyle(fontSize: 11)),
                                  ),
                                ],
                              ),
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
                          /*   width: 45,
                                  height: 45, */
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildGroups(context) {
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
            return Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Groups',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 90,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Public Groups Show ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 120,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Public Groups Added You ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 120,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 84,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 135,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Public Groups Before Add You ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.04,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildLivePrivacy(context) {
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Live',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 135,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Live Video-Join Request from',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 140,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Live Video-Send Notification to ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 120,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 54,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "People",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 85,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Block People From ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.04,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildChatBoxPrivacy(context) {
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Chat-Box',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 95,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Chat-Request from',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 80,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Add Group Chat',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildPostPhotoVideo(context) {
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Post-Photo & Video',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1,
                      ),
                      Container(
                        height: 193,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 110,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Show Your Post & Video',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 193,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 100,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Like Your Post & Video',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 193,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 110,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Share Your Post & Video',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildComments(context) {
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Comments',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 90,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Comments Allow From',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        height: 150,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 100,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          /* isScrollControlled: true, */
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
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15.0),
                                                    child: Column(
                                                        /* mainAxisSize: MainAxisSize.min, */
                                                        children: [
                                                          SizedBox(
                                                            height:
                                                                height * 0.03,
                                                          ),
                                                          Row(
                                                            children: [
                                                              IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      BoxConstraints(),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  icon: Icon(
                                                                    Icons
                                                                        .arrow_back,
                                                                    color:
                                                                        primaryColorOfApp,
                                                                  )),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              Text(
                                                                'People',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        customTextColor,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              8),
                                                                      labelText:
                                                                          'Search profile Name',
                                                                      labelStyle: const TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10),
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff333333),
                                                                              width:
                                                                                  1)),
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff0087FF),
                                                                              width:
                                                                                  1)),
                                                                      /*    prefixIcon: Icon(Icons.search), */
                                                                      hintText:
                                                                          'Searh Username')),
                                                          ListView.builder(
                                                              shrinkWrap: true,
                                                              itemCount: 4,
                                                              itemBuilder:
                                                                  ((context,
                                                                      index) {
                                                                return ListTile(
                                                                  minVerticalPadding:
                                                                      10,
                                                                  horizontalTitleGap:
                                                                      4,
                                                                  visualDensity:
                                                                      const VisualDensity(
                                                                          vertical:
                                                                              -3),
                                                                  dense: true,
                                                                  leading:
                                                                      CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  title: Text(
                                                                    'Rajan Mistry-1 ',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  subtitle:
                                                                      Text(
                                                                    '@m.rajan02',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  trailing: OutlinedButton(
                                                                      style: OutlinedButton.styleFrom(
                                                                          elevation: 0,
                                                                          minimumSize: const Size(80, 30),
                                                                          // padding: EdgeInsets.symmetric(
                                                                          //     horizontal: 40.0, vertical: 20.0),
                                                                          backgroundColor: primaryColorOfApp,
                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                      onPressed: () {},
                                                                      child: Text(
                                                                        'Block',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 10),
                                                                      )),
                                                                );
                                                              }))
                                                        ]),
                                                  ),
                                                  Positioned.fill(
                                                      top: -36,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            /*   width: 45,
                                  height: 45, */
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Colors
                                                                    .white,
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "People",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          /* isScrollControlled: true, */
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
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15.0),
                                                    child: Column(
                                                        /* mainAxisSize: MainAxisSize.min, */
                                                        children: [
                                                          SizedBox(
                                                            height:
                                                                height * 0.03,
                                                          ),
                                                          Row(
                                                            children: [
                                                              IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      BoxConstraints(),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  icon: Icon(
                                                                    Icons
                                                                        .arrow_back,
                                                                    color:
                                                                        primaryColorOfApp,
                                                                  )),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              Text(
                                                                'Followers',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        customTextColor,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              8),
                                                                      labelText:
                                                                          'Search profile Name',
                                                                      labelStyle: const TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10),
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff333333),
                                                                              width:
                                                                                  1)),
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff0087FF),
                                                                              width:
                                                                                  1)),
                                                                      /*    prefixIcon: Icon(Icons.search), */
                                                                      hintText:
                                                                          'Searh Username')),
                                                          ListView.builder(
                                                              shrinkWrap: true,
                                                              itemCount: 3,
                                                              itemBuilder:
                                                                  ((context,
                                                                      index) {
                                                                return ListTile(
                                                                  minVerticalPadding:
                                                                      10,
                                                                  horizontalTitleGap:
                                                                      4,
                                                                  visualDensity:
                                                                      const VisualDensity(
                                                                          vertical:
                                                                              -3),
                                                                  dense: true,
                                                                  leading:
                                                                      CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  title: Text(
                                                                    'Rajan Mistry-1 ',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  subtitle:
                                                                      Text(
                                                                    '@m.rajan02',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  trailing: OutlinedButton(
                                                                      style: OutlinedButton.styleFrom(
                                                                          elevation: 0,
                                                                          minimumSize: const Size(80, 30),
                                                                          // padding: EdgeInsets.symmetric(
                                                                          //     horizontal: 40.0, vertical: 20.0),
                                                                          backgroundColor: primaryColorOfApp,
                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                      onPressed: () {},
                                                                      child: Text(
                                                                        'Block',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 10),
                                                                      )),
                                                                );
                                                              }))
                                                        ]),
                                                  ),
                                                  Positioned.fill(
                                                      top: -36,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            /*   width: 45,
                                  height: 45, */
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Colors
                                                                    .white,
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Followers",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          /* isScrollControlled: true, */
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
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15.0),
                                                    child: Column(
                                                        /* mainAxisSize: MainAxisSize.min, */
                                                        children: [
                                                          SizedBox(
                                                            height:
                                                                height * 0.03,
                                                          ),
                                                          Row(
                                                            children: [
                                                              IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      BoxConstraints(),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  icon: Icon(
                                                                    Icons
                                                                        .arrow_back,
                                                                    color:
                                                                        primaryColorOfApp,
                                                                  )),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              Text(
                                                                'Following',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        customTextColor,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                          ),
                                                          Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              8),
                                                                      labelText:
                                                                          'Search profile Name',
                                                                      labelStyle: const TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              10),
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff333333),
                                                                              width:
                                                                                  1)),
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff0087FF),
                                                                              width:
                                                                                  1)),
                                                                      /*    prefixIcon: Icon(Icons.search), */
                                                                      hintText:
                                                                          'Searh Username')),
                                                          ListView.builder(
                                                              shrinkWrap: true,
                                                              itemCount: 3,
                                                              itemBuilder:
                                                                  ((context,
                                                                      index) {
                                                                return ListTile(
                                                                  minVerticalPadding:
                                                                      10,
                                                                  horizontalTitleGap:
                                                                      4,
                                                                  visualDensity:
                                                                      const VisualDensity(
                                                                          vertical:
                                                                              -3),
                                                                  dense: true,
                                                                  leading:
                                                                      CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  title: Text(
                                                                    'Rajan Mistry-1 ',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  subtitle:
                                                                      Text(
                                                                    '@m.rajan02',
                                                                    style: ProfileSelf()
                                                                        .buildtextstyle(),
                                                                  ),
                                                                  trailing: OutlinedButton(
                                                                      style: OutlinedButton.styleFrom(
                                                                          elevation: 0,
                                                                          minimumSize: const Size(80, 30),
                                                                          // padding: EdgeInsets.symmetric(
                                                                          //     horizontal: 40.0, vertical: 20.0),
                                                                          backgroundColor: primaryColorOfApp,
                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                      onPressed: () {},
                                                                      child: Text(
                                                                        'Block',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize: 10),
                                                                      )),
                                                                );
                                                              }))
                                                        ]),
                                                  ),
                                                  Positioned.fill(
                                                      top: -36,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            /*   width: 45,
                                  height: 45, */
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Colors
                                                                    .white,
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Text(
                                              "Following",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff515253),
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.03),
                                            ),
                                          ),
                                          Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 103,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Block Comments From ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: height * 0.04,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildaddresspage(context) {
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
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 168, 161, 161),
                          border: Border.all(
                              width: 0.5,
                              color: Color.fromARGB(255, 168, 161, 161)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 100,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 25,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'add your address/location',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                        height: 40,
                        child: TextFormField(
                            decoration:
                                WidgetProfilePage().buildInputdecoration(
                          Icon(Icons.search),
                          'Search Location',
                          null,
                          'Search Location',
                        ))),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                        height: 40,
                        child: TextFormField(
                            decoration:
                                WidgetProfilePage().buildInputdecoration(
                          null,
                          'Enter Street Village',
                          null,
                          'Enter Street Village',
                        ))),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                        height: 40,
                        child: TextFormField(
                            decoration:
                                WidgetProfilePage().buildInputdecoration(
                          null,
                          'Enter Road LandMark',
                          null,
                          'Enter Road LandMark',
                        ))),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select city',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select state',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select city',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                        SizedBox(
                            width: 140,
                            height: 30,
                            child: TextFormField(
                                decoration:
                                    WidgetProfilePage().buildInputdecoration(
                              null,
                              'Pin Code',
                              null,
                              'Pin Code',
                            ))),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SizedBox(
                      width: double.infinity,
                      // height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          /*   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GooglePage1()),
                        ); */
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            /*     minimumSize: const Size(0.0, 40), */
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 40.0, vertical: 20.0),
                            backgroundColor: const Color(0xff0087FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ]),
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
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildprofilepage(context) {
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
                              color: Color(0xffE2E2E2),
                              borderRadius: BorderRadius.circular(8)),
                          height: 5,
                          width: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 25,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      /* color: Colors.red, */
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
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: TextFormField(
                                        enabled: username,
                                        decoration: InputDecoration(
                                          labelText: username ? '' : '',
                                          suffixIcon: Icon(Icons.check_circle),
                                          border: InputBorder.none,
                                        )),
                                  )),
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
                                'Your Username',
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
                    Container(
                      height: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          cancel
                              ? TextButton(
                                  style: TextButton.styleFrom(
                                      /* minimumSize: Size(100, 5), */
                                      elevation: 0,
                                      visualDensity:
                                          VisualDensity(vertical: -4),
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  onPressed: () {
                                    setState(() {
                                      username = false;
                                      cancel = false;
                                    });
                                  },
                                  child: Text('cancel?',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: primaryColorOfApp,
                                          fontSize: 10)),
                                )
                              : TextButton(
                                  style: TextButton.styleFrom(
                                      /* minimumSize: Size(100, 5), */
                                      elevation: 0,
                                      visualDensity:
                                          VisualDensity(vertical: -4),
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  onPressed: () {
                                    setState(() {
                                      username = true;
                                      cancel = true;
                                    });
                                  },
                                  child: Text('Change?',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: primaryColorOfApp,
                                          fontSize: 10)),
                                ),
                        ],
                      ),
                    ),
                    Container(
                      /* color: Colors.red, */
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
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 210,
                                          child: TextFormField(
                                              enabled: fullname,
                                              decoration: InputDecoration(
                                                labelText: '',
                                                border: InputBorder.none,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Container(
                                            child: full1
                                                ? IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = false;
                                                        full1 = false;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    ))
                                                : IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = true;
                                                        full1 = true;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 30,
                            width: 70,
                            height: 10,
                            child: Container(
                              color: Colors.white,
                              child: const Text(
                                'Your Full Name',
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
                    Container(
                      /* color: Colors.red, */
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
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 210,
                                          child: TextFormField(
                                              enabled: bio,
                                              decoration: InputDecoration(
                                                labelText: '',
                                                border: InputBorder.none,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Container(
                                            child: bio1
                                                ? IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = false;
                                                        bio1 = false;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    ))
                                                : IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = true;
                                                        bio1 = true;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 30,
                            width: 20,
                            height: 10,
                            child: Container(
                              color: Colors.white,
                              child: const Text(
                                'Bio',
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              male = false;
                              female = true;
                              other = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.zero,
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                                color: male
                                    ? Colors.transparent
                                    : const Color.fromARGB(255, 200, 226, 249),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 0.7,
                                    color: male
                                        ? const Color(0xff515253)
                                        : const Color(0xff0087FF))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.male,
                                    color: male
                                        ? const Color(0xff515253)
                                        : const Color(0xff0087FF),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    'male',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: width * 0.05,
                                        color: male
                                            ? const Color(0xff515253)
                                            : const Color(0xff0087FF)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              female = false;
                              male = true;
                              other = true;
                            });
                          },
                          child: Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                                color: female
                                    ? Colors.transparent
                                    : const Color.fromARGB(255, 247, 212, 214),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 0.7,
                                    color: female
                                        ? const Color(0xff515253)
                                        : const Color(0xffF96A70))),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.female,
                                  color: female
                                      ? const Color(0xff515253)
                                      : const Color(0xffF96A70),
                                ),
                                Text(
                                  'female',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.05,
                                      color: female
                                          ? const Color(0xff515253)
                                          : const Color(0xffF96A70)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              other = false;
                              male = true;
                              female = true;
                            });
                          },
                          child: Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                                color: other
                                    ? Colors.transparent
                                    : const Color.fromARGB(255, 232, 203, 246),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 0.7,
                                    color: other
                                        ? const Color(0xff515253)
                                        : const Color(0xff56027D))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.transgender,
                                    size: 17,
                                    color: other
                                        ? const Color(0xff515253)
                                        : const Color(0xff56027D),
                                  ),
                                ),
                                Text(
                                  'other',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.05,
                                      color: other
                                          ? const Color(0xff515253)
                                          : const Color(0xff56027D)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      /* color: Colors.red, */
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
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 210,
                                          child: TextFormField(
                                              enabled: bio,
                                              decoration: InputDecoration(
                                                labelText: '',
                                                border: InputBorder.none,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Container(
                                            child: bio1
                                                ? IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = false;
                                                        bio1 = false;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    ))
                                                : IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    constraints:
                                                        BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = true;
                                                        bio1 = true;
                                                      });
                                                    },
                                                    icon: Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 30,
                            width: 60,
                            height: 10,
                            child: Container(
                              color: Colors.white,
                              child: const Text(
                                'Date of Birth',
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
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: customTextColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Dont show to anyone",
                                  style: TextStyle(
                                      color: const Color(0xff515253),
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.03),
                                ),
                              ),
                              Switch.adaptive(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: primaryColorOfApp,
                                  value: valueofswitch,
                                  onChanged: (valueofswitch) {
                                    setState(() {
                                      this.valueofswitch = valueofswitch;
                                    });
                                  })
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Show my email id followers ",
                                  style: TextStyle(
                                      color: const Color(0xff515253),
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.03),
                                ),
                              ),
                              Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  groupValue: groupemail,
                                  value: emailid,
                                  onChanged: (val) {
                                    setState(() {
                                      emailid = true;
                                      emailid1 = false;
                                      groupemail = emailid;
                                    });
                                  })
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Show my email id  everyone",
                                  style: TextStyle(
                                      color: const Color(0xff515253),
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.03),
                                ),
                              ),
                              Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  groupValue: groupemail,
                                  value: emailid1,
                                  onChanged: (value) {
                                    setState(() {
                                      emailid = false;
                                      emailid1 = true;
                                      groupemail = emailid1;
                                    });
                                  })
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          buildaddresspage(context);
                          /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color(0xff0087FF), width: 0.5),
                            /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Add Your Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: primaryColorOfApp,
                              /*  fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
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
                                color: Color(0xff0087FF), width: 0.5),
                            /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Change Interest",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: primaryColorOfApp,
                              /*  fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(140, 35),
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
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
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
                              minimumSize: Size(135, 35),
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
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: const Text(
                              "Save Changes",
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ]),
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
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildsettingpage(context) {
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
                                color: Color(0xffE2E2E2),
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
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          /*  popmethod(); */
                          buildprofilepage(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setprofile.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Profile',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          /*     popmethod(); */
                          WidgetNotification().buildnotificationpage(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setnotification.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Notifications',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setfolo.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'followers & following monetize ',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
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
                              builder: (context) {
                                return DefaultTabController(
                                  length: 2,
                                  child: StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter setState) {
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
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xffE2E2E2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        height: 5,
                                                        width: 100,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          constraints:
                                                              BoxConstraints(),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          icon: Icon(
                                                            Icons.arrow_back,
                                                            color:
                                                                primaryColorOfApp,
                                                          )),
                                                      SizedBox(
                                                        width: width * 0.01,
                                                      ),
                                                      Text(
                                                        'Permission set',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  TabBar(
                                                    /* controller: tabController, */
                                                    indicatorSize:
                                                        TabBarIndicatorSize.tab,
                                                    indicatorPadding:
                                                        EdgeInsets.zero,
                                                    labelColor:
                                                        Color(0xff0087FF),
                                                    unselectedLabelColor:
                                                        Color(0xff333333),
                                                    tabs: [
                                                      Tab(
                                                        height: 20,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Actived',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 12),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Tab(
                                                        height: 20,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'New Add',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 12),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 260,
                                                    child: TabBarView(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0),
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffe2e2e2),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Column(
                                                                    children: [
                                                                      ListTile(
                                                                        minVerticalPadding:
                                                                            10,
                                                                        horizontalTitleGap:
                                                                            0.0,
                                                                        visualDensity:
                                                                            const VisualDensity(vertical: -3),
                                                                        dense:
                                                                            true,
                                                                        leading:
                                                                            CircleAvatar(
                                                                          radius:
                                                                              20,
                                                                          backgroundImage:
                                                                              NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                        ),
                                                                        title:
                                                                            Text(
                                                                          'Rajan Mistry-1 ',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          '@m.rajan02',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                      ),
                                                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                      Text(
                                                                        'this profile use admin access, post, all access your profile, like you',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                8,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                customTextColor),
                                                                      ),
                                                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 16.0),
                                                                            child:
                                                                                Text(
                                                                              'Admin ',
                                                                              style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                          TextButton(
                                                                              style: TextButton.styleFrom(
                                                                                padding: EdgeInsets.zero,
                                                                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              ),
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
                                                                                    builder: ((context) {
                                                                                      return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                                                                        return Stack(
                                                                                          clipBehavior: Clip.none,
                                                                                          children: [
                                                                                            Padding(
                                                                                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                                                                                child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                                                  SizedBox(
                                                                                                    height: height * 0.04,
                                                                                                  ),
                                                                                                  Container(
                                                                                                    decoration: BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.circular(5)),
                                                                                                    child: Column(
                                                                                                      children: [
                                                                                                        ListTile(
                                                                                                          minVerticalPadding: 10,
                                                                                                          horizontalTitleGap: 0.0,
                                                                                                          visualDensity: const VisualDensity(vertical: -3),
                                                                                                          dense: true,
                                                                                                          leading: CircleAvatar(
                                                                                                            radius: 20,
                                                                                                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                                                                          ),
                                                                                                          title: Text(
                                                                                                            'Rajan Mistry-1 ',
                                                                                                            style: ProfileSelf().buildtextstyle(),
                                                                                                          ),
                                                                                                          subtitle: Text(
                                                                                                            '@m.rajan02',
                                                                                                            style: ProfileSelf().buildtextstyle(),
                                                                                                          ),
                                                                                                        ),
                                                                                                        /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                                                        Row(
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: const EdgeInsets.only(left: 25.0),
                                                                                                              child: Text(
                                                                                                                'are you sure remove this profile ? ',
                                                                                                                style: TextStyle(fontSize: 8, fontFamily: 'Poppins', color: customTextColor),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                                                        Row(
                                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                                padding: const EdgeInsets.only(left: 16.0),
                                                                                                                child: TextButton(
                                                                                                                    style: TextButton.styleFrom(
                                                                                                                      padding: EdgeInsets.zero,
                                                                                                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                    ),
                                                                                                                    onPressed: () {},
                                                                                                                    child: Text('Cancel', style: TextStyle(color: customTextColor, fontSize: 10)))),
                                                                                                            TextButton(
                                                                                                                style: TextButton.styleFrom(
                                                                                                                  padding: EdgeInsets.zero,
                                                                                                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                ),
                                                                                                                onPressed: () {},
                                                                                                                child: Text('Remove', style: TextStyle(color: Colors.red, fontSize: 10)))
                                                                                                          ],
                                                                                                        )
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  SizedBox(
                                                                                                    height: height * 0.05,
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
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsets.all(4.0),
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
                                                                                    }));
                                                                              },
                                                                              child: Text('Remove', style: TextStyle(color: Colors.red, fontSize: 10)))
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.01,
                                                                ),
                                                                Container(
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffe2e2e2),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Column(
                                                                    children: [
                                                                      ListTile(
                                                                        minVerticalPadding:
                                                                            10,
                                                                        horizontalTitleGap:
                                                                            0.0,
                                                                        visualDensity:
                                                                            const VisualDensity(vertical: -3),
                                                                        dense:
                                                                            true,
                                                                        leading:
                                                                            CircleAvatar(
                                                                          radius:
                                                                              20,
                                                                          backgroundImage:
                                                                              NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                                        ),
                                                                        title:
                                                                            Text(
                                                                          'Rajan Mistry-1 ',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          '@m.rajan02',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                      ),
                                                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 25.0),
                                                                            child:
                                                                                Text(
                                                                              'this profile, post, video & reply message #Content',
                                                                              style: TextStyle(fontSize: 8, fontFamily: 'Poppins', color: Color(0xffF44336)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 16.0),
                                                                            child:
                                                                                Text(
                                                                              'Manager',
                                                                              style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                          TextButton(
                                                                              style: TextButton.styleFrom(
                                                                                padding: EdgeInsets.zero,
                                                                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              ),
                                                                              onPressed: () {},
                                                                              child: Text('Remove', style: TextStyle(color: Colors.red, fontSize: 10)))
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 20),
                                                              /*   padding: const EdgeInsets.only(
                                                            top: 18.0), */
                                                              child:
                                                                  TextFormField(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.of(context)
                                                                            .pop();
                                                                        showModalBottomSheet(
                                                                            /*  isScrollControlled: true, */
                                                                            shape:
                                                                                const RoundedRectangleBorder(
                                                                              // <-- SEE HERE
                                                                              borderRadius: BorderRadius.vertical(
                                                                                top: Radius.circular(20.0),
                                                                              ),
                                                                            ),
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (BuildContext context) {
                                                                              return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                                                                return Stack(
                                                                                  clipBehavior: Clip.none,
                                                                                  children: [
                                                                                    Padding(
                                                                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                                                                        child: Column(
                                                                                            /* mainAxisSize:
                                                                                      MainAxisSize
                                                                                          .min, */
                                                                                            children: [
                                                                                              SizedBox(
                                                                                                height: height * 0.01,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(top: 18.0),
                                                                                                child: Row(
                                                                                                  children: [
                                                                                                    IconButton(
                                                                                                        padding: EdgeInsets.zero,
                                                                                                        constraints: BoxConstraints(),
                                                                                                        onPressed: () {
                                                                                                          Navigator.of(context).pop();
                                                                                                        },
                                                                                                        icon: Icon(
                                                                                                          Icons.arrow_back,
                                                                                                          color: primaryColorOfApp,
                                                                                                        )),
                                                                                                    SizedBox(
                                                                                                      width: 250,
                                                                                                      child: TextFormField(
                                                                                                          decoration: InputDecoration(
                                                                                                              isDense: true, // Added this
                                                                                                              contentPadding: EdgeInsets.all(8),
                                                                                                              labelText: 'Search profile Name',
                                                                                                              labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 10),
                                                                                                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
                                                                                                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
                                                                                                              /*    prefixIcon: Icon(Icons.search), */
                                                                                                              hintText: 'Searh Username')),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              ListTile(
                                                                                                minVerticalPadding: 10,
                                                                                                horizontalTitleGap: 0.0,
                                                                                                visualDensity: const VisualDensity(vertical: -3),
                                                                                                dense: true,
                                                                                                leading: CircleAvatar(
                                                                                                  radius: 20,
                                                                                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                                                                ),
                                                                                                title: Text(
                                                                                                  'Rajan Mistry-1 ',
                                                                                                  style: ProfileSelf().buildtextstyle(),
                                                                                                ),
                                                                                                subtitle: Text(
                                                                                                  '@m.rajan02',
                                                                                                  style: ProfileSelf().buildtextstyle(),
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                width: double.infinity,
                                                                                                // height: 50,
                                                                                                child: ElevatedButton(
                                                                                                  onPressed: () {
                                                                                                    showModalBottomSheet(
                                                                                                        /* isScrollControlled: true, */
                                                                                                        shape: const RoundedRectangleBorder(
                                                                                                          // <-- SEE HERE
                                                                                                          borderRadius: BorderRadius.vertical(
                                                                                                            top: Radius.circular(20.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                        context: context,
                                                                                                        builder: (BuildContext context) {
                                                                                                          return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                                                                                            return Stack(
                                                                                                              clipBehavior: Clip.none,
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                                                                                                    child: Column(/* mainAxisSize: MainAxisSize.min, */ children: [
                                                                                                                      SizedBox(
                                                                                                                        height: height * 0.01,
                                                                                                                      ),
                                                                                                                      ListTile(
                                                                                                                        minVerticalPadding: 10,
                                                                                                                        horizontalTitleGap: 0.0,
                                                                                                                        visualDensity: const VisualDensity(vertical: -3),
                                                                                                                        dense: true,
                                                                                                                        leading: CircleAvatar(
                                                                                                                          radius: 20,
                                                                                                                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                                                                        ),
                                                                                                                        title: Text(
                                                                                                                          'Rajan Mistry-1 ',
                                                                                                                          style: ProfileSelf().buildtextstyle(),
                                                                                                                        ),
                                                                                                                        subtitle: Text(
                                                                                                                          '@m.rajan02',
                                                                                                                          style: ProfileSelf().buildtextstyle(),
                                                                                                                        ),
                                                                                                                        trailing: OutlinedButton(
                                                                                                                            style: OutlinedButton.styleFrom(
                                                                                                                                elevation: 0,
                                                                                                                                /*     minimumSize: const Size(0.0, 40), */
                                                                                                                                // padding: EdgeInsets.symmetric(
                                                                                                                                //     horizontal: 40.0, vertical: 20.0),
                                                                                                                                backgroundColor: const Color(0xffFFFFFF),
                                                                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                                                            onPressed: () {},
                                                                                                                            child: Text(
                                                                                                                              'Accepted',
                                                                                                                              style: TextStyle(fontFamily: 'Poppins', color: customTextColor, fontSize: 10),
                                                                                                                            )),
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        children: [
                                                                                                                          Text('@Profile.Username007 accepted your request',
                                                                                                                              style: TextStyle(
                                                                                                                                fontFamily: 'Poppins',
                                                                                                                                color: customTextColor,
                                                                                                                                fontSize: 10,
                                                                                                                              )),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      Divider(),
                                                                                                                      Row(
                                                                                                                        children: [
                                                                                                                          Text('you can permission to ',
                                                                                                                              style: TextStyle(
                                                                                                                                fontFamily: 'Poppins',
                                                                                                                                color: customTextColor,
                                                                                                                                fontSize: 10,
                                                                                                                              )),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: height * 0.01,
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        children: [
                                                                                                                          Text('Select One Option ',
                                                                                                                              style: TextStyle(
                                                                                                                                fontFamily: 'Poppins',
                                                                                                                                color: customTextColor,
                                                                                                                                fontSize: 10,
                                                                                                                              )),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: height * 0.01,
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Column(
                                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'Admin',
                                                                                                                                    style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'access all: Post, share, like, comments, repost & live',
                                                                                                                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 8),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                          Radio(
                                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                              groupValue: groupemail,
                                                                                                                              value: emailid,
                                                                                                                              onChanged: (val) {
                                                                                                                                setState(() {
                                                                                                                                  groupemail = emailid;
                                                                                                                                });
                                                                                                                              })
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: height * 0.03,
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Column(
                                                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Row(
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'Manager ',
                                                                                                                                    style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                              Row(
                                                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                children: [
                                                                                                                                  Text(
                                                                                                                                    'Post Photo & Videos',
                                                                                                                                    style: ProfileSelf().buildtextstyle(),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                          Radio(
                                                                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                              groupValue: groupemail,
                                                                                                                              value: emailid,
                                                                                                                              onChanged: (val) {
                                                                                                                                setState(() {
                                                                                                                                  groupemail = emailid;
                                                                                                                                });
                                                                                                                              })
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            'You can set limitation',
                                                                                                                            style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontSize: 10),
                                                                                                                          ),
                                                                                                                          TextButton(
                                                                                                                              style: TextButton.styleFrom(
                                                                                                                                padding: EdgeInsets.zero,
                                                                                                                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                                              ),
                                                                                                                              onPressed: () {
                                                                                                                                WidgetProfilePage().buildgotoset(context);
                                                                                                                              },
                                                                                                                              child: Row(
                                                                                                                                children: [
                                                                                                                                  Text('GO TO SET', style: TextStyle(color: primaryColorOfApp, fontSize: 10)),
                                                                                                                                  Iconify(
                                                                                                                                    Eva.arrow_right_fill,
                                                                                                                                    size: 15,
                                                                                                                                  )
                                                                                                                                ],
                                                                                                                              ))
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: height * 0.04,
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                          width: double.infinity,
                                                                                                                          child: ElevatedButton(
                                                                                                                              style: ElevatedButton.styleFrom(
                                                                                                                                  elevation: 0,
                                                                                                                                  /*     minimumSize: const Size(0.0, 40), */
                                                                                                                                  // padding: EdgeInsets.symmetric(
                                                                                                                                  //     horizontal: 40.0, vertical: 20.0),
                                                                                                                                  backgroundColor: const Color(0xff0087FF),
                                                                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                                                              onPressed: () {},
                                                                                                                              child: Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Poppins'))))
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
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsets.all(4.0),
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
                                                                                                  style: ElevatedButton.styleFrom(
                                                                                                      elevation: 0,
                                                                                                      /*     minimumSize: const Size(0.0, 40), */
                                                                                                      // padding: EdgeInsets.symmetric(
                                                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                                                      backgroundColor: const Color(0xff0087FF),
                                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                                  child: const Text(
                                                                                                    "Send Request",
                                                                                                    style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Poppins'),
                                                                                                  ),
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
                                                                                              /*   width: 45,
                                  height: 45, */
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(color: Colors.white, width: 2),
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(4.0),
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
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true, // Added this
                                                                        contentPadding:
                                                                            EdgeInsets.all(8),
                                                                        labelText:
                                                                            'Search profile Name',
                                                                        labelStyle: const TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                10),
                                                                        enabledBorder: OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
                                                                        focusedBorder: OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
                                                                        prefixIcon:
                                                                            Icon(Icons.search),
                                                                        hintText:
                                                                            'Searh Username',
                                                                        /*  contentPadding:
                                                              const EdgeInsets.all(
                                                                  15), */
                                                                        /*  border:
                                                                      OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color: Color(
                                                                                0xff0087FF),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                                  5) */
                                                                      ))),
                                                        ]),
                                                  )
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
                                            ))
                                      ],
                                    );
                                  }),
                                );
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setpermision.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Permission set',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
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
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Container(
                                            color: Colors.black,
                                            height: 5,
                                            width: 100,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text('Select your language'),
                                        const Divider(),
                                        ListTile(
                                          visualDensity:
                                              VisualDensity(vertical: -3),
                                          dense: true,
                                          leading: const Text(
                                            'English',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          trailing: Radio(
                                            value: english,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = english;
                                              });
                                            },
                                          ),
                                        ),
                                        ListTile(
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          leading: const Text(
                                            'Hindi',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          trailing: Radio(
                                            value: hindi,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = hindi;
                                              });
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
                                            value: bengali,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = bengali;
                                              });
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
                                            value: gujarati,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = gujarati;
                                              });
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
                                            value: marathi,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = marathi;
                                              });
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
                                            value: urdu,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = urdu;
                                              });
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
                                            value: odia,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = odia;
                                              });
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
                                            value: kannada,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = kannada;
                                              });
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
                                            value: tamil,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = tamil;
                                              });
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
                                            value: telugu,
                                            groupValue: groupvalue,
                                            onChanged: (value) {
                                              setState(() {
                                                groupvalue = telugu;
                                              });
                                            },
                                          ),
                                        ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setlang.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'language',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setchat2.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Chat-box (message)',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.campaign_outlined,
                                size: 17,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Ads',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Iconify(Bi.patch_check, size: 15),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '@Verification',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                              Iconify(
                                Bi.patch_check,
                                size: 10,
                                color: primaryColorOfApp,
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
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
                                    (BuildContext context,
                                        StateSetter setState) {
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
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffE2E2E2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
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
                                                        padding:
                                                            EdgeInsets.all(0),
                                                        constraints:
                                                            BoxConstraints(),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        icon: Icon(
                                                          Icons.arrow_back,
                                                          color:
                                                              primaryColorOfApp,
                                                        )),
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    Text(
                                                      'Privacy',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              customTextColor),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                            'assets/setprofile.svg',
                                                            height: 18,
                                                            width: 18),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text('Private Profile',
                                                            style:
                                                                buildtextstyle()),
                                                      ],
                                                    ),
                                                    Switch.adaptive(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        activeColor:
                                                            primaryColorOfApp,
                                                        value: valueofswitch,
                                                        onChanged:
                                                            (valueofswitch) {
                                                          setState(() {
                                                            this.valueofswitch =
                                                                valueofswitch;
                                                          });
                                                        })
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildActivityStatus(
                                                        context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/profileactivityicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Activity Status',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildShowRewardpoint(
                                                        context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/digitalicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Show Reward Points',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildGroups(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/privacygroup.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Groups ',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildComments(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/commenticon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Comments',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildPostPhotoVideo(
                                                        context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/privacypost.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Post-Photo & Video',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildStory(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/historyicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Story',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildLivePrivacy(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/liveicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Live',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                          Iconify(
                                                            Bi.patch_check,
                                                            size: 10,
                                                            color:
                                                                primaryColorOfApp,
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildChatBoxPrivacy(
                                                        context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/setchat2.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Chat-Box',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildMention(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/@.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Mension ',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildTag(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/tagicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Tag',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    buildSendmeGift(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Iconify(
                                                              EmojioneMonotone
                                                                  .wrapped_gift,
                                                              size: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Send me GIFT',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                InkWell(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                        /* isScrollControlled: true, */
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          // <-- SEE HERE
                                                          borderRadius:
                                                              BorderRadius
                                                                  .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return StatefulBuilder(
                                                              builder: (BuildContext
                                                                      context,
                                                                  StateSetter
                                                                      setState) {
                                                            return Stack(
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          15.0),
                                                                  child: Column(
                                                                      /* mainAxisSize: MainAxisSize.min, */
                                                                      children: [
                                                                        SizedBox(
                                                                          height:
                                                                              height * 0.03,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            IconButton(
                                                                                padding: EdgeInsets.all(0),
                                                                                constraints: BoxConstraints(),
                                                                                onPressed: () {
                                                                                  Navigator.of(context).pop();
                                                                                },
                                                                                icon: Icon(
                                                                                  Icons.arrow_back,
                                                                                  color: primaryColorOfApp,
                                                                                )),
                                                                            SizedBox(
                                                                              width: width * 0.01,
                                                                            ),
                                                                            Text(
                                                                              'Block Profile List',
                                                                              style: TextStyle(fontFamily: 'Poppins', color: customTextColor, fontSize: 15),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Divider(),
                                                                        TextFormField(
                                                                            decoration: InputDecoration(
                                                                                isDense: true, // Added this
                                                                                contentPadding: EdgeInsets.all(8),
                                                                                labelText: 'Search profile Name',
                                                                                labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 10),
                                                                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
                                                                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
                                                                                /*    prefixIcon: Icon(Icons.search), */
                                                                                hintText: 'Searh Username')),
                                                                        ListView.builder(
                                                                            shrinkWrap: true,
                                                                            itemCount: 3,
                                                                            itemBuilder: ((context, index) {
                                                                              return ListTile(
                                                                                minVerticalPadding: 10,
                                                                                horizontalTitleGap: 4,
                                                                                visualDensity: const VisualDensity(vertical: -3),
                                                                                dense: true,
                                                                                leading: CircleAvatar(
                                                                                  radius: 20,
                                                                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                                ),
                                                                                title: Text(
                                                                                  'Rajan Mistry-1 ',
                                                                                  style: ProfileSelf().buildtextstyle(),
                                                                                ),
                                                                                subtitle: Text(
                                                                                  '@m.rajan02',
                                                                                  style: ProfileSelf().buildtextstyle(),
                                                                                ),
                                                                                trailing: OutlinedButton(
                                                                                    style: OutlinedButton.styleFrom(
                                                                                        elevation: 0,
                                                                                        minimumSize: const Size(80, 30),
                                                                                        // padding: EdgeInsets.symmetric(
                                                                                        //     horizontal: 40.0, vertical: 20.0),
                                                                                        backgroundColor: primaryColorOfApp,
                                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                    onPressed: () {
                                                                                      showModalBottomSheet(
                                                                                        /* isScrollControlled: true, */
                                                                                        shape: const RoundedRectangleBorder(
                                                                                          // <-- SEE HERE
                                                                                          borderRadius: BorderRadius.vertical(
                                                                                            top: Radius.circular(20.0),
                                                                                          ),
                                                                                        ),
                                                                                        context: context,
                                                                                        builder: (BuildContext context) {
                                                                                          return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                                                                            return Stack(
                                                                                              clipBehavior: Clip.none,
                                                                                              children: [
                                                                                                Padding(
                                                                                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                                                                    child: Column(
                                                                                                        /* mainAxisSize: MainAxisSize.min, */
                                                                                                        children: [
                                                                                                          SizedBox(
                                                                                                            height: height * 0.03,
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            children: [
                                                                                                              SvgPicture.asset(
                                                                                                                'assets/blockicon.svg',
                                                                                                                height: 18,
                                                                                                                width: 18,
                                                                                                                color: Colors.green,
                                                                                                              ),
                                                                                                              Text('Unblock this profile?')
                                                                                                            ],
                                                                                                          )
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
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsets.all(4.0),
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
                                                                                      'UnBlock',
                                                                                      style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 10),
                                                                                    )),
                                                                              );
                                                                            }))
                                                                      ]),
                                                                ),
                                                                Positioned.fill(
                                                                    top: -36,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          /*   width: 45,
                                  height: 45, */
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border.all(color: Colors.white, width: 2),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(4.0),
                                                                            child:
                                                                                Icon(
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
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/blockicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Block Profile List',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.05,
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
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setprivacy.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Privacy',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setsecurity.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Security',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setabout.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'About',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/sethelp.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Help',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setswitch.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'SWITCH PROFILE',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {
                              final provider = Provider.of<Googleprovider>(
                                  context,
                                  listen: false);
                              provider.logout();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GooglePage1()));
                            },
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  buildtextstyle() {
    return TextStyle(
        color: customTextColor, fontFamily: 'Poppins', fontSize: 11);
  }

  popmethod(context) {
    return Navigator.of(context).pop();
  }

  buildpersonalsetting(context) {
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
                                color: Color(0xffE2E2E2),
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
                          Text(
                            '@profile.user-id',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Iconify(
                            Bi.patch_check,
                            color: primaryColorOfApp,
                            size: 15,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Profie Name ',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          )
                        ],
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          /*  Navigator.of(context).pop(); */
                          ProfileSelf().buildsettingpage(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/settingicon.svg',
                                  height: 15,
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 12),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/profileactivityicon.svg',
                                  height: 15,
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Profile Activity',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 12),
                                ),
                              ],
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/digitalicon.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Digital Collections',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/historyicon.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Iconify(Ion.archive, size: 15),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Archive',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Iconify(Bi.bookmark_star, size: 15),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Saved',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/hearticon.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Text(
                                'Favorites Profile',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/friendicon.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Iconify(Bi.qr_code_scan, size: 15),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'QR Code',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/discovericon1.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Discover',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/settingshare.svg',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Share ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                            ],
                          ),
                          Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'version  3.6.9. (596) ',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 7),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
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
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;

  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;
}

class _ProfileSelfState extends State<ProfileSelf> {
  var images = [
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];
  var names = [
    "Rashid",
    "farhan",
    "hamza",
    "aquib",
    "shiraj",
    "pravin",
    "sufiya",
    "sadaf",
    "tahera",
  ];
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;

  var photos = [
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/vintage-victorian-style-engraving-set-original-from-british-library-digitally-enhanced-by-rawpixel_53876-165338.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/easter-bird-design-element-cute-watercolor-illustration_53876-104101.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/flower-robot-environment-cute-concept_53876-31814.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/fun-dog-3d-illustration_183364-81022.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
  ];
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;

  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;

  var coverheight = 120.0;
  var profile = 100.0;

/*   bool btnchng = true; */

  File? image;
  File? image1;
  Future pickforprofile(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  Future pickforbanner(ImageSource source) async {
    try {
      final image1 = await ImagePicker().pickImage(source: source);
      if (image1 == null) return;
      final imageTemporary = File(image1.path);
      setState(() => this.image1 = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';

  @override
  Widget build(BuildContext context) {
    /*  TabController tabController =TabController(length: 4, vsync:this); */
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    /* coverheight - profile / 2 */;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: ListView(
          children: [
            WidgetProfilePage().buildtop(context),
            WidgetProfilePage().buildcontent(context),
            TabBar(
          
         
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              labelColor: Color(0xff0087FF),
              unselectedLabelColor: Color(0xff333333),
              tabs: [
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 10,
                      ),
                      Text(
                        'Photo',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 10,
                      ),
                      Text(
                        'Videos',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.restore,
                        size: 10,
                      ),
                      Text(
                        'Story',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 10,
                      ),
                      Text(
                        'Tagged',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: EdgeInsets.only(top: 1.0),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: customTextColor),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xffc4c4c4),
                                    size: 40,
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: primaryColorOfApp),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  images[index],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              names[index],
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            )
                          ],
                        );
                      }
                    }),
              ),
            ),
            SizedBox(
              /* padding: const EdgeInsets.only(left: 20), */
              height: 300,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Container(
                            /*       width: 200, */
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(photos[i]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 200,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*   pickImage(ImageSource.camera);
                                  Navigator.of(context).pop();
                                  setState(() {
                                    btnchng = false;
                                  }); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  sizedbox(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SizedBox(
      width: width * 0.01,
    );
  }

  mediaquerry() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
  }
}
