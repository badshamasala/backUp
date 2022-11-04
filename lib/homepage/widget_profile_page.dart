import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class WidgetProfilePage extends StatefulWidget {
  WidgetProfilePage({Key? key}) : super(key: key);

  @override
  State<WidgetProfilePage> createState() => _WidgetProfilePageState();

  File? image;
  File? image1;

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

  buildTextDesign(fontsize, color, fontWeight) {
    return TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight);
  }

  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';

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

  sizedbox(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SizedBox(
      height: height * 0.02,
    );
  }

  buildgotoset(context) {
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
                            'Go to Set',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Divider(),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Allow to message read & reply ",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Not allow to message read & reply",
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Allow to Post-Photo, video & Story ",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Not allow to Post-Photo, video & story",
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Allow to comments reply",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Not allow to comments reply ",
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Allow to sharing other any post  ",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Not allow to sharing other any post",
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
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Allow to live video ",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Not allow to live video",
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
                      SizedBox(
                        height: height * 0.02,
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

  buildInputdecoration(prefix, labeltext, suffix, hinttext) {
    return InputDecoration(
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      prefix: prefix,
      suffixIcon: suffix,
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 10),
      contentPadding: const EdgeInsets.all(15),
    );
  }

  buildeditmainpage(context) {
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
                    Row(
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
                        Text(
                          'Edit profile',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: image != null
                                  ? CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.blue,
                                      child: CircleAvatar(
                                        radius: 37,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: Colors.grey.shade800,
                                          backgroundImage: FileImage(image!),
                                        ),
                                      ),
                                    )
                                  // Image. file
                                  : Icon(
                                      Icons.account_circle,
                                      size: 70,
                                      color: Colors.grey,
                                    ),
                            ),
                            SizedBox(
                              height: 19,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            isScrollControlled: true,
                                            shape: const RoundedRectangleBorder(
                                              // <-- SEE HERE
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(20.0),
                                              ),
                                            ),
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                8),
                                                        child: Container(
                                                          color: const Color(
                                                              0xffE2E2E2),
                                                          height: 7,
                                                          width: 70,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.02,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 80.0),
                                                            child: const Text(
                                                              'Your Profile Photo',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff333333),
                                                                  fontSize: 15,
                                                                  fontFamily:
                                                                      'Poppins'),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.01,
                                                      ),
                                                      Divider(),
                                                      SizedBox(
                                                        height: height * 0.03,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              RawMaterialButton(
                                                                padding:
                                                                    EdgeInsets.zero,
                                                                constraints:
                                                                    BoxConstraints(
                                                                        minHeight:
                                                                            45,
                                                                        minWidth:
                                                                            45),
                                                                onPressed: () {
                                                                  _WidgetProfilePageState()
                                                                      .pickforprofile(
                                                                          ImageSource
                                                                              .camera);
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                  setState(() {
                                                                    btnchng = false;
                                                                  });
                                                                },
                                                                elevation: 0,
                                                                fillColor: Color(
                                                                    0xffDADADA),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .camera,
                                                                  color: Color(
                                                                      0xff0087FF),
                                                                  size: 17,
                                                                ),
                                                                /*  padding: EdgeInsets.all(15.0), */
                                                                shape: CircleBorder(
                                                                    /* side: BorderSide(
                                                                  width: 1,
                                                                  color: Color(0xff0087FF)) */
                                                                    ),
                                                              ),
                                                              Text(
                                                                'camera',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xff333333)),
                                                              )
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              RawMaterialButton(
                                                                padding:
                                                                    EdgeInsets.zero,
                                                                constraints:
                                                                    BoxConstraints(
                                                                        minHeight:
                                                                            45,
                                                                        minWidth:
                                                                            45),
                                                                onPressed: () {
                                                                  _WidgetProfilePageState()
                                                                      .pickforprofile(
                                                                          ImageSource
                                                                              .gallery);
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                  setState(() {
                                                                    btnchng = false;
                                                                  });
                                                                },
                                                                elevation: 0,
                                                                fillColor: Color(
                                                                    0xffDADADA),
                                                                child: Icon(
                                                                  Icons.photo,
                                                                  color: Color(
                                                                      0xff0087FF),
                                                                  size: 17,
                                                                ),
                                                                /*  padding: EdgeInsets.all(15.0), */
                                                                shape: CircleBorder(
                                                                    /* side: BorderSide(
                                                                  width: 1,
                                                                  color: Color(0xff0087FF)) */
                                                                    ),
                                                              ),
                                                              Text(
                                                                'gallery',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xff333333)),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.1,
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
                                            });
                                      },
                                      child: btnchng
                                          ? Text(
                                              'upload profile image',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.04,
                                                  color:
                                                      const Color(0xff0087FF)),
                                            )
                                          : Text(
                                              'change profile image',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.04,
                                                  color:
                                                      const Color(0xff0087FF)),
                                            ))
                                ],
                              ),
                            ),
                          ],
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
                    image1 != null
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.black, width: 0.1),
                            ),
                            height: 70,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.file(
                                image1!,
                                fit: BoxFit.cover,
                              ),
                            ))
                        // Image. file
                        : Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.black, width: 0.1),
                            ),
                            height: 70,
                            width: double.infinity,
                            child: Icon(
                              Icons.photo,
                              size: 50,
                              color: Colors.grey,
                            )),
                    SizedBox(
                      height: 19,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
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
                                      return Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: height * 0.01,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Container(
                                                  color: const Color(0xffE2E2E2),
                                                  height: 7,
                                                  width: 70,
                                                ),
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 80.0),
                                                    child: const Text(
                                                      'Your Banner',
                                                      style: TextStyle(
                                                          color: Color(0xff333333),
                                                          fontSize: 15,
                                                          fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.01,
                                              ),
                                              Divider(),
                                              SizedBox(
                                                height: height * 0.03,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      RawMaterialButton(
                                                        padding: EdgeInsets.zero,
                                                        constraints: BoxConstraints(
                                                            minHeight: 45,
                                                            minWidth: 45),
                                                        onPressed: () {
                                                          _WidgetProfilePageState()
                                                              .pickforbanner(
                                                                  ImageSource
                                                                      .camera);
                                                          Navigator.of(context)
                                                              .pop();
                                                          setState(() {
                                                            btnchng = false;
                                                          });
                                                        },
                                                        elevation: 0,
                                                        fillColor:
                                                            Color(0xffDADADA),
                                                        child: FaIcon(
                                                          FontAwesomeIcons.camera,
                                                          color: Color(0xff0087FF),
                                                          size: 17,
                                                        ),
                                                        /*  padding: EdgeInsets.all(15.0), */
                                                        shape: CircleBorder(
                                                            /* side: BorderSide(
                                                          width: 1,
                                                          color: Color(0xff0087FF)) */
                                                            ),
                                                      ),
                                                      Text(
                                                        'camera',
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            color:
                                                                Color(0xff333333)),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      RawMaterialButton(
                                                        padding: EdgeInsets.zero,
                                                        constraints: BoxConstraints(
                                                            minHeight: 45,
                                                            minWidth: 45),
                                                        onPressed: () {
                                                          _WidgetProfilePageState()
                                                              .pickforbanner(
                                                                  ImageSource
                                                                      .gallery);
                                                          Navigator.of(context)
                                                              .pop();
                                                          setState(() {
                                                            btnchng = false;
                                                          });
                                                        },
                                                        elevation: 0,
                                                        fillColor:
                                                            Color(0xffDADADA),
                                                        child: Icon(
                                                          Icons.photo,
                                                          color: Color(0xff0087FF),
                                                          size: 17,
                                                        ),
                                                        /*  padding: EdgeInsets.all(15.0), */
                                                        shape: CircleBorder(
                                                            /* side: BorderSide(
                                                          width: 1,
                                                          color: Color(0xff0087FF)) */
                                                            ),
                                                      ),
                                                      Text(
                                                        'gallery',
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            color:
                                                                Color(0xff333333)),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.1,
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
                                    });
                              },
                              child: btnchng
                                  ? Text(
                                      'upload banner',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.04,
                                          color: const Color(0xff0087FF)),
                                    )
                                  : Text(
                                      'change banner',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.04,
                                          color: const Color(0xff0087FF)),
                                    ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1),
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
                            border: Border.all(color: Colors.black, width: 1),
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
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Change Interest",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: customTextColor,
                              /*  fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Auto Play (scrolling)",
                          style: TextStyle(
                              color: const Color(0xff515253),
                              fontFamily: 'Poppins',
                              fontSize: width * 0.03),
                        ),
                        Switch.adaptive(
                            activeColor: primaryColorOfApp,
                            value: valueofswitch,
                            onChanged: (valueofswitch) {
                              setState(() {
                                this.valueofswitch = valueofswitch;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location always",
                          style: TextStyle(
                              color: const Color(0xff515253),
                              fontFamily: 'Poppins',
                              fontSize: width * 0.03),
                        ),
                        Switch.adaptive(
                            activeColor: primaryColorOfApp,
                            value: valueofswitch,
                            onChanged: (valueofswitch) {
                              setState(() {
                                this.valueofswitch = valueofswitch;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Go to my',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              minimumSize: Size(100, 5),
                              elevation: 0,
                              visualDensity: VisualDensity(vertical: -4),
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () {
                            /*               Navigator.of(context).pop(); */
                            ProfileSelf().buildpersonalsetting(context);
                          },
                          child: Text('Personal Information Settings',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 10)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
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
          });
        });
  }

  buildcontent(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text(
              'Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..',
              style: TextStyle(
                  color: Color(0xff03194B),
                  fontSize: 10,
                  fontFamily: 'Poppins'),
            ),
            Row(
              /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      /*    minimumSize: Size(32, 30), */
                      elevation: 5,
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
                      "Interaction",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      /*  minimumSize: Size(32, 30), */
                      elevation: 5,
                      /* padding: EdgeInsets.zero, */
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*   padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "Chat-Box",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                OutlinedButton(
                  onPressed: () {
                    buildeditmainpage(context);
                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      elevation: 5,
                      /* padding: EdgeInsets.zero, */
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /* padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    /*   minimumSize: Size(32, 30), */
                    elevation: 5,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    /*       padding:
                            EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: const Text(
                    "Go to Dashboard",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildtop(context) {
    final bottom = 60.0;
    final top = 70.0;
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: image1 != null
              ? Container(
                  width: double.infinity,
                  height: coverheight,
                  child: Image.file(
                    image1!,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: coverheight,
                  child: Icon(
                    Icons.photo,
                    color: primaryColorOfApp,
                    size: 40,
                  )),
        ),
        Positioned(
          top: top,
          child: Row(
            /*     crossAxisAlignment: CrossAxisAlignment.center, */
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * 0.01,
              ),
              /*     sizedbox(context), */
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                      child: image != null
                          ? CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 47,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.grey.shade800,
                                  backgroundImage: FileImage(image!),
                                ),
                              ),
                            )
                          // Image. file
                          : CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 47,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 95,
                                  color: primaryColorOfApp,
                                ), /* CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.grey.shade800,
                                  backgroundImage:
                                      AssetImage('assets/image.png'),
                                ), */
                              ),
                            )),
                  IconButton(
                      onPressed: () {
                        _WidgetProfilePageState().buildbutton(context);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.penToSquare,
                        size: 15,
                        color: Colors.black,
                      ))
                ],
              ),
              /* CircleAvatar(
                radius: profile / 2,
                backgroundImage: NetworkImage(
                    'https://fonts.freepiklabs.com/storage/1384/conversions/Cover-thumb2x.jpg'),
              ), */
              SizedBox(
                width: width * 0.01,
              ),
              OutlinedButton(
                onPressed: () {
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
                        return DefaultTabController(
                          length: 3,
                          child: StatefulBuilder(builder:
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
                                                color: Color(0xffE2E2E2),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Color(0xffE2E2E2)),
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
                                                MainAxisAlignment.start,
                                            children: [
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
                                          Divider(),
                                          TabBar(
                                            /* controller: tabController, */
                                            indicatorSize: TabBarIndicatorSize.tab,
                                            indicatorPadding: EdgeInsets.zero,
                                            labelColor: Color(0xff0087FF),
                                            unselectedLabelColor: Color(0xff333333),
                                            tabs: [
                                              Tab(
                                                height: 20,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Followers',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
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
                                                      'Following',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
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
                                                      'Connect',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            /* padding: const EdgeInsets.only(left: 20), */
                                            height: 300,
                                            child: TabBarView(
                                              children: [
                                                ListView.builder(
                                                    shrinkWrap: true,
                                                    scrollDirection: Axis.vertical,
                                                    itemCount: 5,
                                                    itemBuilder: (context, index) {
                                                      return Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.01,
                                                                  ),
                                                                  Column(
                                                                    children: [
                                                                      Text(
                                                                        'Rajan Mistry-1 ',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                      Text(
                                                                        '@m.rajan02',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {},
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        elevation:
                                                                            0,
                                                                        minimumSize:
                                                                            const Size(
                                                                                80,
                                                                                30),
                                                                        // padding: EdgeInsets.symmetric(
                                                                        //     horizontal: 40.0, vertical: 20.0),
                                                                        backgroundColor:
                                                                            const Color(
                                                                                0xff0087FF),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child: const Text(
                                                                  "follow",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      /*       fontSize: 18, */
                                                                      fontFamily:
                                                                          'Poppins'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                ListView.builder(
                                                    shrinkWrap: true,
                                                    scrollDirection: Axis.vertical,
                                                    itemCount: 5,
                                                    itemBuilder: (context, index) {
                                                      return Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.01,
                                                                  ),
                                                                  Column(
                                                                    children: [
                                                                      Text(
                                                                        'Rajan Mistry-1 ',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                      Text(
                                                                        '@m.rajan02',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {},
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        elevation:
                                                                            0,
                                                                        minimumSize:
                                                                            const Size(
                                                                                80,
                                                                                30),
                                                                        // padding: EdgeInsets.symmetric(
                                                                        //     horizontal: 40.0, vertical: 20.0),
                                                                        backgroundColor:
                                                                            const Color(
                                                                                0xff0087FF),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child: const Text(
                                                                  "follow",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      /*       fontSize: 18, */
                                                                      fontFamily:
                                                                          'Poppins'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                ListView.builder(
                                                    shrinkWrap: true,
                                                    scrollDirection: Axis.vertical,
                                                    itemCount: 5,
                                                    itemBuilder: (context, index) {
                                                      return Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 20,
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                  ),
                                                                  SizedBox(
                                                                    width: width *
                                                                        0.01,
                                                                  ),
                                                                  Column(
                                                                    children: [
                                                                      Text(
                                                                        'Rajan Mistry-1 ',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                      Text(
                                                                        '@m.rajan02',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              ElevatedButton(
                                                                onPressed: () {},
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        elevation:
                                                                            0,
                                                                        minimumSize:
                                                                            const Size(
                                                                                80,
                                                                                30),
                                                                        // padding: EdgeInsets.symmetric(
                                                                        //     horizontal: 40.0, vertical: 20.0),
                                                                        backgroundColor:
                                                                            const Color(
                                                                                0xff0087FF),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child: const Text(
                                                                  "follow",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      /*       fontSize: 18, */
                                                                      fontFamily:
                                                                          'Poppins'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                              ],
                                            ),
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
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(32, 30),
                    elevation: 5,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: const Text(
                    "12.5M Followers",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              /*    sizedbox(context), */

              SizedBox(
                width: width * 0.01,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(32, 30),
                    elevation: 5,
                    /*   padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: const Text(
                  "200 Following",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 10,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              Material(
                borderRadius: BorderRadius.circular(5),
                elevation: 5,
                child: Container(
                  height: 30,
                  width: 31,
                  decoration: BoxDecoration(
                      boxShadow: [],
                      color: Colors.white,
                      border:
                          Border.all(width: 1, color: const Color(0xff0087FF)),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
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
                                  (BuildContext context, StateSetter setState) {
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
                                              color: Color.fromARGB(
                                                  255, 168, 161, 161),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: Color.fromARGB(
                                                      255, 168, 161, 161)),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 5,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
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
                                        Divider(),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                mainAxisSize:
                                                                    MainAxisSize.min,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  ListTile(
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
                                                                    title: Row(
                                                                      children: [
                                                                        Text(
                                                                          '@Nanncyjain23 ',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  primaryColorOfApp,
                                                                              fontFamily:
                                                                                  'Poppins'),
                                                                        ),
                                                                        Iconify(
                                                                          Bi.patch_check,
                                                                          size: 15,
                                                                          color:
                                                                              primaryColorOfApp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    subtitle: Text(
                                                                      '@m.rajan02',
                                                                      style: ProfileSelf()
                                                                          .buildtextstyle(),
                                                                    ),
                                                                  ),
                                                                  Divider(),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .symmetric(
                                                                            horizontal:
                                                                                18.0),
                                                                    child: Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Information about this profile',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontWeight: FontWeight
                                                                                      .bold,
                                                                                  fontSize:
                                                                                      14),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.04,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'this is viewer’s private profile ',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.01,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'this profile created in 24-july-2018 ',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.01,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'this profile created in india ',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.01,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'this profile is verified  ',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12),
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
                                                                          height:
                                                                              height *
                                                                                  0.01,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'this profile current rating is',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12),
                                                                            ),
                                                                            Icon(
                                                                              Icons
                                                                                  .star,
                                                                              color: Colors
                                                                                  .green,
                                                                              size: 17,
                                                                            ),
                                                                            Text(
                                                                              '4.8',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      12,
                                                                                  fontWeight:
                                                                                      FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.04,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'how much would you like to ratings this profile?',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  fontSize:
                                                                                      11,
                                                                                  fontWeight:
                                                                                      FontWeight.bold),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.01,
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .start,
                                                                          children: [
                                                                            RatingBar
                                                                                .builder(
                                                                              itemSize:
                                                                                  20,
                                                                              initialRating:
                                                                                  3,
                                                                              minRating:
                                                                                  1,
                                                                              direction:
                                                                                  Axis.horizontal,
                                                                              allowHalfRating:
                                                                                  false,
                                                                              itemCount:
                                                                                  5,
                                                                              itemPadding:
                                                                                  EdgeInsets.symmetric(
                                                                                      horizontal: 4.0),
                                                                              itemBuilder:
                                                                                  (context, _) =>
                                                                                      Icon(
                                                                                Icons
                                                                                    .star,
                                                                                color: Colors
                                                                                    .green,
                                                                              ),
                                                                              onRatingUpdate:
                                                                                  (rating) {
                                                                                print(
                                                                                    rating);
                                                                              },
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment
                                                                                  .start,
                                                                          children: [
                                                                            ElevatedButton(
                                                                              onPressed:
                                                                                  () {},
                                                                              style: ElevatedButton.styleFrom(
                                                                                  elevation: 0,
                                                                                  minimumSize: const Size(120, 35),
                                                                                  // padding: EdgeInsets.symmetric(
                                                                                  //     horizontal: 40.0, vertical: 20.0),
                                                                                  backgroundColor: const Color(0xff0087FF),
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                              child:
                                                                                  Text(
                                                                                "Submit",
                                                                                style: TextStyle(
                                                                                    color: Colors
                                                                                        .white,
                                                                                    fontSize: width *
                                                                                        0.045,
                                                                                    fontFamily:
                                                                                        'Poppins',
                                                                                    fontWeight:
                                                                                        FontWeight.w600),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              height *
                                                                                  0.2,
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
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text('my favourties profile',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color: value1
                                                      ? Color(0xff0087FF)
                                                      : Colors.black)),
                                          leading: SvgPicture.asset(
                                              'assets/hearticon.svg',
                                              height: 18,
                                              width: 18,
                                              color: value1
                                                  ? Colors.red
                                                  : Colors.black),
                                          trailing: Checkbox(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              shape: const CircleBorder(),
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1!;
                                                });
                                              }),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text('my close friends',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color: value2
                                                      ? Color(0xff0087FF)
                                                      : Colors.black)),
                                          leading: SvgPicture.asset(
                                            'assets/friendicon.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Checkbox(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              shape: const CircleBorder(),
                                              value: value2,
                                              onChanged: (value2) {
                                                setState(() {
                                                  this.value2 = value2!;
                                                });
                                              }),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                              horizontal: 16.0),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize.min,
                                                              children: [
                                                                SizedBox(
                                                                  height: height * 0.01,
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color: Color(
                                                                              0xffE2E2E2),
                                                                          border: Border
                                                                              .all(
                                                                            width: 0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      10)),
                                                                  height: 5,
                                                                  width: 100,
                                                                ),
                                                                SizedBox(
                                                                  height: height * 0.01,
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left: 18.0),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'share to ',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color: Color(
                                                                                0xff0087FF)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Divider(),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Column(
                                                                      children: [
                                                                        Text(
                                                                          'send to chat-box ',
                                                                          style: TextStyle(
                                                                              fontFamily:
                                                                                  'Poppins',
                                                                              fontSize:
                                                                                  8),
                                                                        ),
                                                                        SizedBox(
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
                                                                        Text(
                                                                          'send to group ',
                                                                          style: TextStyle(
                                                                              fontFamily:
                                                                                  'Poppins',
                                                                              fontSize:
                                                                                  8),
                                                                        ),
                                                                        SizedBox(
                                                                          height: 5,
                                                                        ),
                                                                        SvgPicture
                                                                            .asset(
                                                                          'assets/privacygroup.svg',
                                                                          height: 22,
                                                                          width: 22,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    InkWell(
                                                                      onTap: () {
                                                                        final box = context
                                                                                .findRenderObject()
                                                                            as RenderBox?;
                                                                        Share.share(
                                                                            'aasd',
                                                                            subject:
                                                                                'axaa',
                                                                            sharePositionOrigin:
                                                                                box!.localToGlobal(Offset.zero) &
                                                                                    box.size);
                                                                      },
                                                                      child: Column(
                                                                        children: [
                                                                          Text(
                                                                            'share to',
                                                                            style: TextStyle(
                                                                                fontFamily:
                                                                                    'Poppins',
                                                                                fontSize:
                                                                                    8),
                                                                          ),
                                                                          SizedBox(
                                                                            height: 5,
                                                                          ),
                                                                          SvgPicture
                                                                              .asset(
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
                                                                    child:
                                                                        TextFormField(
                                                                            decoration:
                                                                                InputDecoration(
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff333333),
                                                                              width:
                                                                                  0.5)),
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      5),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xff0087FF),
                                                                              width:
                                                                                  0.5)),
                                                                      labelText:
                                                                          'Search',
                                                                    ))),
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
                                                                        subtitle: Text(
                                                                          '@m.rajan02',
                                                                          style: ProfileSelf()
                                                                              .buildtextstyle(),
                                                                        ),
                                                                        trailing: OutlinedButton(
                                                                            style: OutlinedButton.styleFrom(
                                                                                elevation: 0,
                                                                                minimumSize: Size(80, 30),
                                                                                // padding: EdgeInsets.symmetric(
                                                                                //     horizontal: 40.0, vertical: 20.0),
                                                                                side: const BorderSide(
                                                                                  color:
                                                                                      Color(0xff0087FF),
                                                                                ),
                                                                                backgroundColor: Colors.white,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                            onPressed: () {},
                                                                            child: Text(
                                                                              'Send',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  color:
                                                                                      primaryColorOfApp,
                                                                                  fontSize:
                                                                                      10),
                                                                            )),
                                                                      );
                                                                    })),
                                                                SizedBox(
                                                                  height: height * 0.2,
                                                                )
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
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                /*  isScrollControlled: true, */
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                      color: Color(
                                                                          0xffE2E2E2),
                                                                      border: Border.all(
                                                                          width: 0.5,
                                                                          color: Color(
                                                                              0xffE2E2E2)),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                                  10)),
                                                                  height: 5,
                                                                  width: 100,
                                                                ),
                                                                SizedBox(
                                                                  height: height * 0.01,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Notifications',
                                                                      style: TextStyle(
                                                                          fontSize: 15,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color: Color(
                                                                              0xff0087FF)),
                                                                    ),
                                                                    Iconify(
                                                                      Bi.patch_check,
                                                                      size: 15,
                                                                      color:
                                                                          primaryColorOfApp,
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
                                                                        width: 280,
                                                                        child:
                                                                            Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors
                                                                                  .white,
                                                                              border: Border.all(
                                                                                  width:
                                                                                      0.5,
                                                                                  color: const Color(
                                                                                      0xff515253)),
                                                                              borderRadius:
                                                                                  BorderRadius.circular(
                                                                                      10)),
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
                                                                                    const EdgeInsets.only(left: 8.0),
                                                                                child:
                                                                                    Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      '26548 rank ',
                                                                                      style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '489659984 ',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      'Points',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding:
                                                                                    const EdgeInsets.only(right: 8.0),
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
                                                                        child:
                                                                            Container(
                                                                          /*   width: 200,
              height: 150, */
                                                                          color: Colors
                                                                              .white,
                                                                          child:
                                                                              const Text(
                                                                            'Earn Points This Profile ',
                                                                            style: TextStyle(
                                                                                color: Color(
                                                                                    0xff515253),
                                                                                fontSize:
                                                                                    10,
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
                                                                    Text(
                                                                      'Today',
                                                                      style: TextStyle(
                                                                          color:
                                                                              primaryColorOfApp,
                                                                          fontFamily:
                                                                              'Poppins'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          width * 0.03,
                                                                    ),
                                                                    Text(
                                                                      '13 Dec 2020',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize: 8),
                                                                    )
                                                                  ],
                                                                ),
                                                                Divider(),
                                                                Container(
                                                                  /* color: Colors.red, */
                                                                  height: 160,
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        top: 7,
                                                                        left: 0,
                                                                        height: 140,
                                                                        width: 280,
                                                                        child:
                                                                            Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors
                                                                                  .white,
                                                                              border: Border.all(
                                                                                  width:
                                                                                      0.5,
                                                                                  color: const Color(
                                                                                      0xff515253)),
                                                                              borderRadius:
                                                                                  BorderRadius.circular(
                                                                                      10)),
                                                                          /*  width: 150,
              height: 150, */
                                                                          /*  color: Colors.green[300], */
                                                                          child: Column(
                                                                            children: [
                                                                              Padding(
                                                                                padding:
                                                                                    const EdgeInsets.all(8.0),
                                                                                child:
                                                                                    Row(
                                                                                  mainAxisAlignment:
                                                                                      MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'No. 1 rank',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '2565489659984',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '@abcprofile',
                                                                                      style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Divider(),
                                                                              Padding(
                                                                                padding:
                                                                                    const EdgeInsets.all(8.0),
                                                                                child:
                                                                                    Row(
                                                                                  mainAxisAlignment:
                                                                                      MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'No. 1 rank',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '2565489659984',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '@abcprofile',
                                                                                      style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Divider(),
                                                                              Padding(
                                                                                padding:
                                                                                    const EdgeInsets.all(8.0),
                                                                                child:
                                                                                    Row(
                                                                                  mainAxisAlignment:
                                                                                      MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      'No. 1 rank',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '2565489659984',
                                                                                      style: TextStyle(fontFamily: 'Poppins'),
                                                                                    ),
                                                                                    Text(
                                                                                      '@abcprofile',
                                                                                      style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
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
                                                                        child:
                                                                            Container(
                                                                          /*   width: 200,
              height: 150, */
                                                                          color: Colors
                                                                              .white,
                                                                          child:
                                                                              const Text(
                                                                            '@profile-ID',
                                                                            style: TextStyle(
                                                                                color: Color(
                                                                                    0xff515253),
                                                                                fontSize:
                                                                                    10,
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
                                                                        child:
                                                                            Container(
                                                                          /*   width: 200,
              height: 150, */
                                                                          color: Colors
                                                                              .white,
                                                                          child:
                                                                              const Text(
                                                                            'Points ',
                                                                            style: TextStyle(
                                                                                color: Color(
                                                                                    0xff515253),
                                                                                fontSize:
                                                                                    10,
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
                                                                        child:
                                                                            Container(
                                                                          /*   width: 200,
              height: 150, */
                                                                          color: Colors
                                                                              .white,
                                                                          child:
                                                                              const Text(
                                                                            'Rank',
                                                                            style: TextStyle(
                                                                                color: Color(
                                                                                    0xff515253),
                                                                                fontSize:
                                                                                    10,
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
                                                  });
                                                });
                                          },
                                          title: Text(
                                            'earn points this profile',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: Iconify(
                                            EmojioneMonotone.wrapped_gift,
                                            color: customTextColor,
                                            size: 18,
                                          ),
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                /*  isScrollControlled: true, */
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                horizontal: 18.0),
                                                            child: Column(
                                                                /*    mainAxisSize:
                                                                  MainAxisSize.min, */
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE2E2E2),
                                                                        border: Border.all(
                                                                            width: 0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2)),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '@Nanncyjain23',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color: Color(
                                                                                0xff0087FF)),
                                                                      ),
                                                                      Iconify(
                                                                        Bi.patch_check,
                                                                        size: 15,
                                                                        color:
                                                                            primaryColorOfApp,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Divider(),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'this profile joined multiple group ',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'only showing public group ',
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.03,
                                                                  ),
                                                                  ListView.builder(
                                                                      shrinkWrap: true,
                                                                      itemCount: 3,
                                                                      itemBuilder:
                                                                          ((context,
                                                                              index) {
                                                                        return Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment:
                                                                                  MainAxisAlignment
                                                                                      .spaceBetween,
                                                                              children: [
                                                                                Column(
                                                                                  crossAxisAlignment:
                                                                                      CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      children: [
                                                                                        Text(
                                                                                          'this is public group',
                                                                                          style: ProfileSelf().buildtextstyle(),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Text('you can join this group ',
                                                                                        style: ProfileSelf().buildtextstyle()),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  crossAxisAlignment:
                                                                                      CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text('Shopping Center',
                                                                                        style: ProfileSelf().buildtextstyle()),
                                                                                    Text(
                                                                                      '@see-groups',
                                                                                      style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height:
                                                                                  height *
                                                                                      0.01,
                                                                            )
                                                                          ],
                                                                        );
                                                                      })),
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
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
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
                                                color: urlvariable
                                                    ? primaryColorOfApp
                                                    : customTextColor,
                                                fontSize: 10),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/urlicon.svg',
                                            color: urlvariable
                                                ? primaryColorOfApp
                                                : customTextColor,
                                            height: 18,
                                            width: 18,
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                horizontal: 18.0),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize.min,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE2E2E2),
                                                                        border: Border.all(
                                                                            width: 0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2)),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .symmetric(
                                                                            horizontal:
                                                                                18.0),
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
                                                                                height: height *
                                                                                    0.055,
                                                                                width: width *
                                                                                    0.12,
                                                                                fit: BoxFit
                                                                                    .fitHeight),
                                                                            Text(
                                                                              'myttube',
                                                                              textAlign:
                                                                                  TextAlign
                                                                                      .center,
                                                                              style:
                                                                                  TextStyle(
                                                                                color: const Color(
                                                                                    0xff0087FF),
                                                                                fontFamily:
                                                                                    'Satisfy',
                                                                                fontSize:
                                                                                    width *
                                                                                        0.08,
                                                                                shadows: [
                                                                                  const Shadow(
                                                                                    blurRadius:
                                                                                        5.0,
                                                                                    color:
                                                                                        Color(0xff000000),
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
                                                                            style: OutlinedButton.styleFrom(
                                                                                elevation: 0,
                                                                                side: BorderSide(width: 0.5, color: primaryColorOfApp),
                                                                                minimumSize: const Size(80, 30),
                                                                                // padding: EdgeInsets.symmetric(
                                                                                //     horizontal: 40.0, vertical: 20.0),
                                                                                backgroundColor: Colors.transparent,
                                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                            onPressed: () {},
                                                                            child: Text(
                                                                              'follow',
                                                                              style: TextStyle(
                                                                                  fontFamily:
                                                                                      'Poppins',
                                                                                  color:
                                                                                      primaryColorOfApp,
                                                                                  fontSize:
                                                                                      10),
                                                                            )),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration: BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                primaryColorOfApp,
                                                                            width: 0.5),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    8),
                                                                        shape: BoxShape
                                                                            .rectangle),
                                                                    child: Padding(
                                                                      padding:
                                                                          const EdgeInsets
                                                                                  .all(
                                                                              30.0),
                                                                      child: Container(
                                                                          decoration: BoxDecoration(
                                                                              border: Border.all(
                                                                                  color:
                                                                                      primaryColorOfApp,
                                                                                  width:
                                                                                      0.5),
                                                                              borderRadius:
                                                                                  BorderRadius.circular(
                                                                                      8),
                                                                              shape: BoxShape
                                                                                  .rectangle),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(
                                                                                    8.0),
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Iconify(
                                                                                  Bi.qr_code,
                                                                                  size:
                                                                                      140,
                                                                                ),
                                                                                Text(
                                                                                  '@Nanncyjain23',
                                                                                  style: TextStyle(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: primaryColorOfApp,
                                                                                      fontSize: 20),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .only(
                                                                            left: 28.0),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          'LOGIN:',
                                                                          style: TextStyle(
                                                                              fontFamily:
                                                                                  'Poppins',
                                                                              fontSize:
                                                                                  15),
                                                                        ),
                                                                        Text(
                                                                          'https://myttube.com',
                                                                          style: TextStyle(
                                                                              fontFamily:
                                                                                  'Poppins',
                                                                              color:
                                                                                  primaryColorOfApp,
                                                                              fontSize:
                                                                                  15),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .symmetric(
                                                                            horizontal:
                                                                                28.0),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          children: [
                                                                            Icon(
                                                                              Icons
                                                                                  .download,
                                                                              color:
                                                                                  primaryColorOfApp,
                                                                            ),
                                                                            Text(
                                                                                'download QR code')
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          children: [
                                                                            SvgPicture
                                                                                .asset(
                                                                              'assets/shareicon.svg',
                                                                              height:
                                                                                  18,
                                                                              width: 18,
                                                                              color:
                                                                                  primaryColorOfApp,
                                                                            ),
                                                                            Text(
                                                                                'share QR code')
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.2,
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
                                                  });
                                                });
                                          },
                                          title: Text(
                                            'QR Code this profile',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: Iconify(
                                            Bi.qr_code_scan,
                                            size: 18,
                                          ),
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                horizontal: 18.0),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize.min,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE2E2E2),
                                                                        border: Border.all(
                                                                            width: 0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2)),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '@Nanncyjain23',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color: Color(
                                                                                0xff0087FF)),
                                                                      ),
                                                                      Iconify(
                                                                        Bi.patch_check,
                                                                        size: 15,
                                                                        color:
                                                                            primaryColorOfApp,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Divider(),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'report this profile ',
                                                                        style: buildTextDesign(
                                                                            null,
                                                                            null,
                                                                            FontWeight
                                                                                .bold),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets
                                                                                    .only(
                                                                                right:
                                                                                    11.0),
                                                                        child:
                                                                            SvgPicture
                                                                                .asset(
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                11.0,
                                                                                null,
                                                                                null),
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
                                                                              groupseenonline =
                                                                                  everyone;
                                                                            });
                                                                          })
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        double.infinity,
                                                                    child:
                                                                        OutlinedButton(
                                                                      onPressed: () {
                                                                        /*   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ); */
                                                                      },
                                                                      style: OutlinedButton
                                                                          .styleFrom(
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
                                                                                      BorderRadius.circular(5.0))),
                                                                      child: Text(
                                                                        "report",
                                                                        style: TextStyle(
                                                                            fontWeight: FontWeight.w500,
                                                                            color: Colors.white,
                                                                            /*  fontSize: 18, */
                                                                            fontFamily: 'Poppins'),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.1,
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
                                          trailing: Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: Colors.white,
                                                isScrollControlled: true,
                                                shape: const RoundedRectangleBorder(
                                                  // <-- SEE HERE
                                                  borderRadius:
                                                      BorderRadius.vertical(
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
                                                                horizontal: 18.0),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize.min,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE2E2E2),
                                                                        border: Border.all(
                                                                            width: 0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2)),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.01,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '@Nanncyjain23',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color: Color(
                                                                                0xff0087FF)),
                                                                      ),
                                                                      Iconify(
                                                                        Bi.patch_check,
                                                                        size: 15,
                                                                        color:
                                                                            primaryColorOfApp,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Divider(),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'are you sure block this profile?',
                                                                        style: buildTextDesign(
                                                                            null,
                                                                            null,
                                                                            FontWeight
                                                                                .bold),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets
                                                                                    .only(
                                                                                right:
                                                                                    11.0),
                                                                        child:
                                                                            SvgPicture
                                                                                .asset(
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                11.0,
                                                                                null,
                                                                                null),
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
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
                                                                        style:
                                                                            buildTextDesign(
                                                                                10.0,
                                                                                null,
                                                                                null),
                                                                      ),
                                                                      Radio(
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize
                                                                                  .shrinkWrap,
                                                                          groupValue:
                                                                              groupseenonline,
                                                                          value:
                                                                              everyone,
                                                                          onChanged:
                                                                              (val) {
                                                                            setState(
                                                                                () {
                                                                              groupseenonline =
                                                                                  everyone;
                                                                            });
                                                                          })
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      OutlinedButton(
                                                                        onPressed: () {
                                                                          /*   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ); */
                                                                        },
                                                                        style: OutlinedButton
                                                                            .styleFrom(
                                                                                minimumSize: Size(
                                                                                    120,
                                                                                    37),
                                                                                side:
                                                                                    const BorderSide(
                                                                                  color:
                                                                                      Color(0xff0087FF),
                                                                                ),
                                                                                /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                                                                                backgroundColor:
                                                                                    primaryColorOfApp,
                                                                                shape: RoundedRectangleBorder(
                                                                                    borderRadius:
                                                                                        BorderRadius.circular(5.0))),
                                                                        child: Text(
                                                                          "Block",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
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
                                                                        style: OutlinedButton
                                                                            .styleFrom(
                                                                                side:
                                                                                    const BorderSide(
                                                                                  color:
                                                                                      Color(0xff0087FF),
                                                                                ),
                                                                                /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                                                                                backgroundColor:
                                                                                    Colors
                                                                                        .white,
                                                                                shape: RoundedRectangleBorder(
                                                                                    borderRadius:
                                                                                        BorderRadius.circular(5.0))),
                                                                        child: Text(
                                                                          "Block & report",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              color: primaryColorOfApp,
                                                                              /*  fontSize: 18, */
                                                                              fontFamily: 'Poppins'),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height * 0.1,
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
                                          trailing: Iconify(
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
                              });
                            });
                      },
                      icon: Icon(Icons.more_horiz)),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 120,
          top: 140,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 100,
                    /*  color: Colors.red, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nanncy Jain',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 10,
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
                ],
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.green,
              ),
              Text('4.8'),
              SizedBox(
                width: width * 0.05,
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
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
                              (BuildContext context, StateSetter setState) {
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
                                            color: Color(0xffE2E2E2),
                                            border: Border.all(
                                                width: 0.5,
                                                color: Color(0xffE2E2E2)),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 5,
                                        width: 100,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Notifications',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Poppins',
                                                color: Color(0xff0087FF)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text(
                                            'All notifications',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/setprofile.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Switch.adaptive(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1;
                                                });
                                              })),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text(
                                            'Post',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/posticon.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Switch.adaptive(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1;
                                                });
                                              })),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text(
                                            'Story',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/historyicon.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Switch.adaptive(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1;
                                                });
                                              })),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text(
                                            'video',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/videoicon.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Switch.adaptive(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1;
                                                });
                                              })),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ListTile(
                                          minLeadingWidth: 10,
                                          visualDensity:
                                              const VisualDensity(vertical: -3),
                                          dense: true,
                                          onTap: () {},
                                          title: Text(
                                            'Live',
                                            style: ProfileSelf().buildtextstyle(),
                                          ),
                                          leading: SvgPicture.asset(
                                            'assets/privacygroup.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          trailing: Switch.adaptive(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize.shrinkWrap,
                                              value: value1,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value1 = value1;
                                                });
                                              })),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                    ]),
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
                          });
                        });
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xff0087FF),
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class _WidgetProfilePageState extends State<WidgetProfilePage> {
  File? image;
  File? image1;

  buildbutton(context) {
    bool btnchng = true;
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
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: const Color(0xffE2E2E2),
                      height: 7,
                      width: 70,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: const Text(
                          'Your Profile Photo',
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Divider(),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          RawMaterialButton(
                            padding: EdgeInsets.zero,
                            constraints:
                                BoxConstraints(minHeight: 45, minWidth: 45),
                            onPressed: () {
                              pickforprofile(ImageSource.camera);
                              Navigator.of(context).pop();
                              setState(() {
                                btnchng = false;
                              });
                            },
                            elevation: 0,
                            fillColor: Color(0xffDADADA),
                            child: FaIcon(
                              FontAwesomeIcons.camera,
                              color: Color(0xff0087FF),
                              size: 17,
                            ),
                            /*  padding: EdgeInsets.all(15.0), */
                            shape: CircleBorder(
                                /* side: BorderSide(
                                                              width: 1,
                                                              color: Color(0xff0087FF)) */
                                ),
                          ),
                          Text(
                            'camera',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Color(0xff333333)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          RawMaterialButton(
                            padding: EdgeInsets.zero,
                            constraints:
                                BoxConstraints(minHeight: 45, minWidth: 45),
                            onPressed: () {
                              _WidgetProfilePageState()
                                  .pickforprofile(ImageSource.gallery);
                              Navigator.of(context).pop();
                              setState(() {
                                btnchng = false;
                              });
                            },
                            elevation: 0,
                            fillColor: Color(0xffDADADA),
                            child: Icon(
                              Icons.photo,
                              color: Color(0xff0087FF),
                              size: 17,
                            ),
                            /*  padding: EdgeInsets.all(15.0), */
                            shape: CircleBorder(
                                /* side: BorderSide(
                                                              width: 1,
                                                              color: Color(0xff0087FF)) */
                                ),
                          ),
                          Text(
                            'gallery',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: Color(0xff333333)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
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
        });
  }

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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
