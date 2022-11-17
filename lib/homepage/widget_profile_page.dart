
// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

class WidgetProfilePage extends StatefulWidget {
  WidgetProfilePage({Key? key}) : super(key: key);

  @override
  State<WidgetProfilePage> createState() => _WidgetProfilePageState();

  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  bool urlvariable = false;
  // ignore: prefer_typing_uninitialized_variables
  var groupemail;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;



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
                            'Story',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Divider(),
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
    Size size = MediaQuery.of(context).size;
    double height = size.height;
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
                            'Go to Set',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Divider(),
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
                            const Divider(
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
                            const Divider(
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
                            const Divider(
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
                            const Divider(
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
                            const Divider(
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
      hintStyle: const TextStyle(fontSize: 10),
      contentPadding: const EdgeInsets.all(15),
    );
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
                                'Activity Status',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          const Divider(),
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
                                      const Divider(
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
                                      const Divider(
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
                                      const Divider(
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
                                'Show Reward Points',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          const Divider(),
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
                                      const Divider(
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
                                      const Divider(
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
                                      const Divider(
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
                                '@Mension',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          const Divider(),
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
                                      const Divider(
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
                                      const Divider(
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
                                      const Divider(
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
                                'Tag',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          const Divider(),
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
                                      const Divider(
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
                                      const Divider(
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
                                      const Divider(
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
                                'Send me GIFT',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                          const Divider(),
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
                                      const Divider(
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
                                      const Divider(
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
                                      const Divider(
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
                            'Groups',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        /*         color: Colors.red, */
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                      /*   SizedBox(
                        height: height * 0.01,
                      ), */
                      SizedBox(
                        /*  color: Colors.green, */
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                      /*    SizedBox(
                        height: height * 0.01,
                      ), */
                      SizedBox(
                        /*        color: Colors.green, */
                        height: 100,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                            top: 0,
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
                            'Live',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                        height: 90,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
                            left: 0,
                            height: 47,
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
                                          const Iconify(
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
                            top: 0,
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
                            'Chat-Box',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      const Divider(),
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            'Post-Photo & Video',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 1,
                      ),
                      SizedBox(
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                      SizedBox(
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                      SizedBox(
                        height: 180,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            top: 0,
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
                            'Comments',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      const Divider(),
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
                                  const Divider(
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
                                  const Divider(
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
                                  const Divider(
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
                            width: 105,
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
                                                                      const EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      const BoxConstraints(),
                                                                  onPressed:
                                                                      () {
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
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              const Text(
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
                                                          const Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          const EdgeInsets.all(
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
                                                                      const CircleAvatar(
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
                                                                      child: const Text(
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
                                                            child: const Padding(
                                                              padding:
                                                                  EdgeInsets
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
                                          const Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
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
                                                                      const EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      const BoxConstraints(),
                                                                  onPressed:
                                                                      () {
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
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              const Text(
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
                                                          const Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          const EdgeInsets.all(
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
                                                                      const CircleAvatar(
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
                                                                      child: const Text(
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
                                                            child: const Padding(
                                                              padding:
                                                                  EdgeInsets
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
                                          const Iconify(
                                            Eva.arrow_right_fill,
                                            size: 15,
                                            color: Color(0xff333333),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
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
                                                                      const EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  constraints:
                                                                      const BoxConstraints(),
                                                                  onPressed:
                                                                      () {
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
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              const Text(
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
                                                          const Divider(),
                                                          TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      isDense:
                                                                          true, // Added this
                                                                      contentPadding:
                                                                          const EdgeInsets.all(
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
                                                                      const CircleAvatar(
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
                                                                      child: const Text(
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
                                                            child: const Padding(
                                                              padding:
                                                                  EdgeInsets
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
                                          const Iconify(
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
  }
}

class _WidgetProfilePageState extends State<WidgetProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
