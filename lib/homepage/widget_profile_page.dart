// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/blkcomntfrom.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

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
    dynamic groupValue1;

    var everyone1 = 'Everyone';
    var followers1 = 'Followers';

    var off1 = 'Off';
    dynamic groupValue2;

    var everyone2 = 'Everyone';
    var followers2 = 'Followers';

    var off2 = 'Off';
    List storyList = [
      'Followers & Following',
      'Followers',
      'Following',
    ];
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
                            'Story',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 21.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 20.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                        bottom:
                                            MediaQuery.of(context).size.height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6.w),
                                            child: Text(
                                              storyList[index],
                                              style: TextStyle(
                                                  color: customTextColor,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          Transform.scale(
                                            scale: 1.2.sp,
                                            child: Radio(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                groupValue: groupValue1,
                                                value: index == 0
                                                    ? everyone1
                                                    : index == 1
                                                        ? followers1
                                                        : off1,
                                                onChanged: (val) {
                                                  if (index == 0) {
                                                    setState(() {
                                                      groupValue1 = everyone1;
                                                    });
                                                  } else if (index == 1) {
                                                    setState(() {
                                                      groupValue1 = followers1;
                                                    });
                                                  } else if (index == 2) {
                                                    setState(() {
                                                      groupValue1 = off1;
                                                    });
                                                  }
                                                }),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height:
                                          MediaQuery.of(context).size.height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                    );
                                  },
                                  itemCount: 3),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Showig Your Story',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 8.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 21.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 20.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                        bottom:
                                            MediaQuery.of(context).size.height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6.w),
                                            child: Text(
                                              storyList[index],
                                              style: TextStyle(
                                                  color: customTextColor,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          Transform.scale(
                                            scale: 1.2.sp,
                                            child: Radio(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                groupValue: groupValue2,
                                                value: index == 0
                                                    ? everyone2
                                                    : index == 1
                                                        ? followers2
                                                        : off2,
                                                onChanged: (val) {
                                                  if (index == 0) {
                                                    setState(() {
                                                      groupValue2 = everyone2;
                                                    });
                                                  } else if (index == 1) {
                                                    setState(() {
                                                      groupValue2 = followers2;
                                                    });
                                                  } else if (index == 2) {
                                                    setState(() {
                                                      groupValue2 = off2;
                                                    });
                                                  }
                                                }),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height:
                                          MediaQuery.of(context).size.height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                    );
                                  },
                                  itemCount: 3),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Like, Comments & Share Your Story',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 8.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ])),
                positionCross(context)
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
  dynamic groupValue1;
  var allow1 = '1';
  var notallow1 = '2';

  dynamic groupValue2;
  var allow2 = '1';
  var notallow2 = '2';

  dynamic groupValue3;
  var allow3 = '1';
  var notallow3 = '2';

  dynamic groupValue4;
  var allow4 = '1';
  var notallow4 = '2';

  dynamic groupValue5;
  var allow5 = '1';
  var notallow5 = '2';

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
                            'Go to Set',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: const Color(0xff515253)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.height > 667
                                      ? 2.sp
                                      : 0.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Allow to message read & reply ",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue1,
                                        value: allow1,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue1 = allow1;
                                          });
                                        }),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 0.5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.height > 667
                                      ? 2.sp
                                      : 0.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Not allow to message read & reply",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue1,
                                        value: notallow1,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue1 = notallow1;
                                          });
                                        }),
                                  )
                                ],
                              ),
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
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height > 667
                                  ? 2.sp
                                  : 0.sp),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Allow to Post-Photo, video & Story ",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue2,
                                        value: allow2,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue2 = allow2;
                                          });
                                        }),
                                  )
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
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Not allow to Post-Photo, video & story",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue2,
                                        value: notallow2,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue2 = notallow2;
                                          });
                                        }),
                                  )
                                ],
                              ),
                            ],
                          ),
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
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Text(
                                    "Allow to comments reply",
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize:
                                            MediaQuery.of(context).size.height >
                                                    667
                                                ? 10.sp
                                                : 12.sp),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 1.1.sp,
                                  child: Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupValue3,
                                      value: allow3,
                                      onChanged: (val) {
                                        setState(() {
                                          groupValue3 = allow3;
                                        });
                                      }),
                                )
                              ],
                            ),
                            const Divider(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Text(
                                    "Not allow to comments reply ",
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize:
                                            MediaQuery.of(context).size.height >
                                                    667
                                                ? 10.sp
                                                : 12.sp),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 1.1.sp,
                                  child: Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupValue3,
                                      value: notallow3,
                                      onChanged: (val) {
                                        setState(() {
                                          groupValue3 = notallow3;
                                        });
                                      }),
                                )
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
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height > 667
                                  ? 2.sp
                                  : 0.sp),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Allow to sharing other any post  ",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue4,
                                        value: allow4,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue4 = allow4;
                                          });
                                        }),
                                  )
                                ],
                              ),
                              Divider(
                                height: 0.5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Not allow to sharing other any post",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue4,
                                        value: notallow4,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue4 = notallow4;
                                          });
                                        }),
                                  )
                                ],
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height > 667
                                  ? 2.sp
                                  : 0.sp),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Allow to live video ",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue5,
                                        value: allow5,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue5 = allow5;
                                          });
                                        }),
                                  )
                                ],
                              ),
                              Divider(
                                height: 0.5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      "Not allow to live video",
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  667
                                              ? 10.sp
                                              : 12.sp),
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 1.1.sp,
                                    child: Radio(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        groupValue: groupValue5,
                                        value: notallow5,
                                        onChanged: (val) {
                                          setState(() {
                                            groupValue5 = notallow5;
                                          });
                                        }),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                    ])),
                positionCross(context)
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
          color: Color(0xffc4c4c4), fontFamily: 'Poppins', fontSize: 12),
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

  List activityList = [
    "Everyone",
    "Followers",
    "Following",
    "OFF",
  ];

  buildActivityStatus(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
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
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
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
                                'Activity Status',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 13.sp),
                              ),
                            ],
                          ),
                          const Divider(),
                          SizedBox(
                            height: 32.h,
                            child: Stack(children: [
                              Positioned(
                                top: 1.h,
                                width: 90.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: customTextColor),
                                      borderRadius:
                                          BorderRadius.circular(10.sp)),
                                  child: Column(
                                    children: [
                                      ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: ((context, index) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 5.sp
                                                    : 3.sp,
                                                bottom: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 5.sp
                                                    : 3.sp,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.w),
                                                    child: Text(
                                                      activityList[index],
                                                      style: TextStyle(
                                                          color:
                                                              customTextColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.sp),
                                                    ),
                                                  ),
                                                  Transform.scale(
                                                    scale: 1.2.sp,
                                                    child: Radio(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        groupValue: groupValue1,
                                                        value: index == 0
                                                            ? v1
                                                            : index == 1
                                                                ? v2
                                                                : index == 2
                                                                    ? v3
                                                                    : v4,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            if (index == 0) {
                                                              groupValue1 = v1;
                                                            } else if (index ==
                                                                1) {
                                                              groupValue1 = v2;
                                                            } else if (index ==
                                                                2) {
                                                              groupValue1 = v3;
                                                            } else if (index ==
                                                                3) {
                                                              groupValue1 = v4;
                                                            }
                                                          });
                                                        }),
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                          separatorBuilder: ((context, index) {
                                            return Divider(
                                              height: 0.5.h,
                                            );
                                          }),
                                          itemCount: activityList.length)
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6.w,
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    'Profile Active Seen & Online',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontSize: 10.sp,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildShowRewardpoint(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
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
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
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
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: primaryColorOfApp,
                                  )),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                'Show Reward Points',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 13.sp),
                              ),
                            ],
                          ),
                          const Divider(),
                          SizedBox(
                            height: 32.h,
                            child: Stack(children: [
                              Positioned(
                                top: 1.h,
                                /*         height: 26.h, */
                                width: 90.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: customTextColor),
                                      borderRadius:
                                          BorderRadius.circular(10.sp)),
                                  child: Column(
                                    children: [
                                      ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: ((context, index) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 5.sp
                                                    : 3.sp,
                                                bottom: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 5.sp
                                                    : 3.sp,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.w),
                                                    child: Text(
                                                      activityList[index],
                                                      style: TextStyle(
                                                          color:
                                                              customTextColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.sp),
                                                    ),
                                                  ),
                                                  Transform.scale(
                                                    scale: 1.2.sp,
                                                    child: Radio(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        groupValue: groupValue1,
                                                        value: index == 0
                                                            ? v1
                                                            : index == 1
                                                                ? v2
                                                                : index == 2
                                                                    ? v3
                                                                    : v4,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            if (index == 0) {
                                                              groupValue1 = v1;
                                                            } else if (index ==
                                                                1) {
                                                              groupValue1 = v2;
                                                            } else if (index ==
                                                                2) {
                                                              groupValue1 = v3;
                                                            } else if (index ==
                                                                3) {
                                                              groupValue1 = v4;
                                                            }
                                                          });
                                                        }),
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                          separatorBuilder: ((context, index) {
                                            return Divider(
                                              height: 0.5.h,
                                            );
                                          }),
                                          itemCount: activityList.length)
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6.w,
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    'Show Points',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontSize: 10.sp,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildMention(context) {
    dynamic groupValue2;
    var x1 = "1";
    var x2 = "2";
    var x3 = "3";
    var x4 = "4";
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
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                        /*  mainAxisSize: MainAxisSize.min, */
                        children: [
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
                                '@Mension',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 13.sp),
                              ),
                            ],
                          ),
                          const Divider(),
                          SizedBox(
                            height: 28.h,
                            child: Stack(children: [
                              Positioned(
                                top: 1.h,
                                width: 90.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: customTextColor),
                                      borderRadius:
                                          BorderRadius.circular(10.sp)),
                                  child: Column(
                                    children: [
                                      ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: ((context, index) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 3.sp
                                                    : 2.sp,
                                                bottom: MediaQuery.of(context)
                                                            .size
                                                            .height >
                                                        666.9629629629629
                                                    ? 3.sp
                                                    : 2.sp,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.w),
                                                    child: Text(
                                                      activityList[index],
                                                      style: TextStyle(
                                                          color:
                                                              customTextColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.sp),
                                                    ),
                                                  ),
                                                  Transform.scale(
                                                    scale: 1.2.sp,
                                                    child: Radio(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        groupValue: groupValue2,
                                                        value: index == 0
                                                            ? x1
                                                            : index == 1
                                                                ? x2
                                                                : index == 2
                                                                    ? x3
                                                                    : x4,
                                                        onChanged: (val) {
                                                          setState(() {
                                                            if (index == 0) {
                                                              groupValue2 = x1;
                                                            } else if (index ==
                                                                1) {
                                                              groupValue2 = x2;
                                                            } else if (index ==
                                                                2) {
                                                              groupValue2 = x3;
                                                            } else if (index ==
                                                                3) {
                                                              groupValue2 = x4;
                                                            }
                                                          });
                                                        }),
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                          separatorBuilder: ((context, index) {
                                            return Divider(
                                              height: MediaQuery.of(context)
                                                          .size
                                                          .height >
                                                      666.9629629629629
                                                  ? 0.5.h
                                                  : 0.1.h,
                                            );
                                          }),
                                          itemCount: activityList.length),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6.w,
                                child: Container(
                                  color: Colors.white,
                                  child: Text(
                                    '@mention you from',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontSize: 10.sp,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildSendmeGift(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
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
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(children: [
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
                            'Send me GIFT',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 28.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 2.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Recieved Gift From',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
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
                positionCross(context)
              ],
            );
          });
        });
  }

  buildGroups(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
    dynamic groupValue2;
    var x1 = "1";
    var x2 = "2";
    var x3 = "3";
    var x4 = "4";
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
                            'Groups',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 28.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 1.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 1.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: 0.5.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Public Groups Show',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 28.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 1.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 3.sp
                                                : 1.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue2,
                                                    value: index == 0
                                                        ? x1
                                                        : index == 1
                                                            ? x2
                                                            : index == 2
                                                                ? x3
                                                                : x4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue2 = x1;
                                                        } else if (index == 1) {
                                                          groupValue2 = x2;
                                                        } else if (index == 2) {
                                                          groupValue2 = x3;
                                                        } else if (index == 3) {
                                                          groupValue2 = x4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: 0.5.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Public Groups Added You',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 16.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height >
                                              666.9629629629629
                                          ? 5.sp
                                          : 3.sp,
                                      bottom:
                                          MediaQuery.of(context).size.height >
                                                  666.9629629629629
                                              ? 5.sp
                                              : 3.sp,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            "Followers",
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Transform.scale(
                                          scale: 1.2.sp,
                                          child: Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: followers,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = followers;
                                                });
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height >
                                              666.9629629629629
                                          ? 5.sp
                                          : 3.sp,
                                      bottom:
                                          MediaQuery.of(context).size.height >
                                                  666.9629629629629
                                              ? 5.sp
                                              : 3.sp,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            "OFF",
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Transform.scale(
                                          scale: 1.2.sp,
                                          child: Radio(
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              groupValue: groupseenonline,
                                              value: following,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupseenonline = following;
                                                });
                                              }),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Public Groups Before Add You ',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildLivePrivacy(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
    dynamic groupValue2;
    var x1 = "1";
    var x2 = "2";
    var x3 = "3";
    var x4 = "4";
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
                          Text(
                            'Live',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Live Video-Join Request from',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue2,
                                                    value: index == 0
                                                        ? x1
                                                        : index == 1
                                                            ? x2
                                                            : index == 2
                                                                ? x3
                                                                : x4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue2 = x1;
                                                        } else if (index == 1) {
                                                          groupValue2 = x2;
                                                        } else if (index == 2) {
                                                          groupValue2 = x3;
                                                        } else if (index == 3) {
                                                          groupValue2 = x4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Live Video-Send Notification to',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 7.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 6.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.w),
                                      child: Text(
                                        "People",
                                        style: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5.w),
                                      child: Iconify(
                                        Eva.arrow_right_fill,
                                        size: 15.sp,
                                        color: customTextColor,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Block People From ',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
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
                positionCross(context)
              ],
            );
          });
        });
  }

  buildChatBoxPrivacy(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
    dynamic groupValue2;
    var x1 = "1";
    var x2 = "2";
    var x3 = "3";
    var x4 = "4";
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
                            'Chat-Box',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Chat-Request from',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue2,
                                                    value: index == 0
                                                        ? x1
                                                        : index == 1
                                                            ? x2
                                                            : index == 2
                                                                ? x3
                                                                : x4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue2 = x1;
                                                        } else if (index == 1) {
                                                          groupValue2 = x2;
                                                        } else if (index == 2) {
                                                          groupValue2 = x3;
                                                        } else if (index == 3) {
                                                          groupValue2 = x4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Add Group Chat',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildPostPhotoVideo(context) {
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
    dynamic groupValue2;
    var x1 = "1";
    var x2 = "2";
    var x3 = "3";
    var x4 = "4";
    dynamic groupValue3;
    var y1 = "1";
    var y2 = "2";
    var y3 = "3";
    var y4 = "4";
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
                            'Post-Photo & Video',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Show Your Post & Video',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue2,
                                                    value: index == 0
                                                        ? x1
                                                        : index == 1
                                                            ? x2
                                                            : index == 2
                                                                ? x3
                                                                : x4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue2 = x1;
                                                        } else if (index == 1) {
                                                          groupValue2 = x2;
                                                        } else if (index == 2) {
                                                          groupValue2 = x3;
                                                        } else if (index == 3) {
                                                          groupValue2 = x4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Like Your Post & Video',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 26.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 1.sp
                                                : 0.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue3,
                                                    value: index == 0
                                                        ? y1
                                                        : index == 1
                                                            ? y2
                                                            : index == 2
                                                                ? y3
                                                                : y4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue3 = y1;
                                                        } else if (index == 1) {
                                                          groupValue3 = y2;
                                                        } else if (index == 2) {
                                                          groupValue3 = y3;
                                                        } else if (index == 3) {
                                                          groupValue3 = y4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height >
                                                  666.9629629629629
                                              ? 0.5.h
                                              : 0.1.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Share Your Post & Video',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 2.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildComments(context) {
    List cmtList = [
      "People",
      "Followers",
      "Following",
    ];
    dynamic groupValue1;
    var v1 = "1";
    var v2 = "2";
    var v3 = "3";
    var v4 = "4";
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
                            'Comments',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 32.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 5.sp
                                                : 3.sp,
                                            bottom: MediaQuery.of(context)
                                                        .size
                                                        .height >
                                                    666.9629629629629
                                                ? 5.sp
                                                : 3.sp,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.w),
                                                child: Text(
                                                  activityList[index],
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 1.2.sp,
                                                child: Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupValue1,
                                                    value: index == 0
                                                        ? v1
                                                        : index == 1
                                                            ? v2
                                                            : index == 2
                                                                ? v3
                                                                : v4,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        if (index == 0) {
                                                          groupValue1 = v1;
                                                        } else if (index == 1) {
                                                          groupValue1 = v2;
                                                        } else if (index == 2) {
                                                          groupValue1 = v3;
                                                        } else if (index == 3) {
                                                          groupValue1 = v4;
                                                        }
                                                      });
                                                    }),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                      separatorBuilder: ((context, index) {
                                        return Divider(
                                          height: 0.5.h,
                                        );
                                      }),
                                      itemCount: activityList.length)
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Comments Allow From',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
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
                        height: 19.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 18.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        if (index == 0) {
                                          Blkcomntfrom(
                                            value: "People",
                                          ).function(context);
                                        } else if (index == 1) {
                                          Blkcomntfrom(
                                            value: "Followers",
                                          ).function(context);
                                        } else if (index == 2) {
                                          Blkcomntfrom(
                                            value: "Following",
                                          ).function(context);
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: index == 0 ? 15.sp : 5.sp),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.w),
                                              child: Text(
                                                cmtList[index],
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3.w),
                                              child: Iconify(
                                                Eva.arrow_right_fill,
                                                size: 15.sp,
                                                color: customTextColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: ((context, index) {
                                    return Divider();
                                  }),
                                  itemCount: cmtList.length),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Block Comments From ',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                    ])),
                positionCross(context)
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
