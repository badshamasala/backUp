import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:image_picker/image_picker.dart';

class WidgetProfilePage extends StatefulWidget {
  WidgetProfilePage({Key? key}) : super(key: key);

  @override
  State<WidgetProfilePage> createState() => _WidgetProfilePageState();

  File? image;
  File? image1;

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
            return Padding(
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
                ]));
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
            return Padding(
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
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
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
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20.0),
                                          ),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: height * 0.01,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Container(
                                                  color:
                                                      const Color(0xffE2E2E2),
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
                                                        const EdgeInsets.only(
                                                            left: 80.0),
                                                    child: const Text(
                                                      'Your Profile Photo',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff333333),
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
                                                                minHeight: 45,
                                                                minWidth: 45),
                                                        onPressed: () {
                                                          _WidgetProfilePageState()
                                                              .pickforprofile(
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
                                                          FontAwesomeIcons
                                                              .camera,
                                                          color:
                                                              Color(0xff0087FF),
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
                                                                minHeight: 45,
                                                                minWidth: 45),
                                                        onPressed: () {
                                                          _WidgetProfilePageState()
                                                              .pickforprofile(
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
                                                          color:
                                                              Color(0xff0087FF),
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
                                          );
                                        });
                                  },
                                  child: btnchng
                                      ? Text(
                                          'upload profile image',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.04,
                                              color: const Color(0xff0087FF)),
                                        )
                                      : Text(
                                          'change profile image',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.04,
                                              color: const Color(0xff0087FF)),
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
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                  enabled: username,
                                  decoration: InputDecoration(
                                    labelText: username ? '' : '',
                                    suffixIcon: Icon(Icons.check_circle),
                                    border: InputBorder.none,
                                  ))),
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
                /*  SizedBox(
                    height: 40,
                    child: TextFormField(
                        enabled: username,
                        decoration: buildInputdecoration(
                          null,
                          username ? '@username' : '',
                          Icon(Icons.check_circle),
                          '@Nancy Jain',
                        ))), */
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
                                  visualDensity: VisualDensity(vertical: -4),
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
                                  visualDensity: VisualDensity(vertical: -4),
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
                /*  SizedBox(
                                      height: height * 0.01,
                                    ), */
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: fullname,
                              decoration: buildInputdecoration(
                                null,
                                fullname ? 'Enter full name' : '',
                                null,
                                'First name Last name Middle Name',
                              )),
                        ),
                        full1
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    fullname = false;
                                    full1 = false;
                                  });
                                },
                                icon: Icon(Icons.cancel))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    fullname = true;
                                    full1 = true;
                                  });
                                },
                                icon: Icon(Icons.edit))
                      ],
                    )),
                /*   SizedBox(
                                      height: height * 0.01,
                                    ), */
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: bio,
                              decoration: buildInputdecoration(
                                null,
                                bio ? 'Enter your bio' : '',
                                null,
                                'bio',
                              )),
                        ),
                        bio1
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    bio = false;
                                    bio1 = false;
                                  });
                                },
                                icon: Icon(Icons.cancel))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    bio = true;
                                    bio1 = true;
                                  });
                                },
                                icon: Icon(Icons.edit))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                image1 != null
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.1),
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
                          border: Border.all(color: Colors.black, width: 0.1),
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
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
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
                                  return Column(
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
                                                          ImageSource.camera);
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
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff333333)),
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
                                                          ImageSource.gallery);
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
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff333333)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
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
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10)),
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
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ]),
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
                onPressed: () {},
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
                                return Column(
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
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                color: Color(0xff0087FF)),
                                          ),
                                          FaIcon(FontAwesomeIcons.certificate,
                                              size: 15,
                                              color: Color(0xff0087FF))
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text(
                                        'About profile',
                                        style: TextStyle(fontFamily: 'Poppins'),
                                      ),
                                      leading: Icon(Icons.error),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 8, 0),
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text('my favourties profile',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: value1
                                                    ? Color(0xff0087FF)
                                                    : Colors.black)),
                                      ),
                                      leading: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Icon(Icons.heart_broken,
                                            color: value1
                                                ? Color(0xff0087FF)
                                                : Colors.black),
                                      ),
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
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 8, 0),
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text('my close friends',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: value2
                                                    ? Color(0xff0087FF)
                                                    : Colors.black)),
                                      ),
                                      leading: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Icon(Icons.gif,
                                            color: value2
                                                ? Color(0xff0087FF)
                                                : Colors.black),
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
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('share this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.share),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('earn point this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.gif_box),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('group join this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.group),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('copy URL this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.notes),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('QR Code this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.qr_code),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('Report this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.report),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('Block this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.error),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
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
                  onPressed: () {},
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
          return Column(
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
