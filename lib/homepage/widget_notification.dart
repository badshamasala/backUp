// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/charm.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class WidgetNotification extends StatefulWidget {
  WidgetNotification({Key? key}) : super(key: key);

  @override
  State<WidgetNotification> createState() => _WidgetNotificationState();

  buildconnectemail(BuildContext context) {
    dynamic groupValue1;

    var everyone1 = 'Everyone';
    var followers1 = 'Followers';

    var off1 = 'Off';
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
                            'Connect for you (via email)',
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
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Connect for via email',
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
                        height: 8.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  bool value1 = false;

  buildnewfollow(context) {
    dynamic groupValue1;

    var everyone1 = 'Everyone';
    var followers1 = 'Followers';

    var off1 = 'Off';
    dynamic groupValue2;
    var on2 = 'Everyone';
    var off2 = 'Off';
    dynamic groupValue3;
    var on3 = 'Everyone';
    var off3 = 'Off';
    dynamic groupValue4;
    var on4 = 'Everyone';
    var off4 = 'Off';
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
                            'New Followers and Following You',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text(
                                'All OFF',
                                style: buildtextstyle(),
                              ),
                            ),
                            Switch.adaptive(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value1,
                                onChanged: (value1) {
                                  setState(() {
                                    value1 = value1;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
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
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                '@mentions you',
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
                        height: 14.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 13.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: Text(
                                          "ON",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue2,
                                          value: on2,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue2 = on2;
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
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue2,
                                          value: off2,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue2 = off2;
                                            });
                                          })
                                    ],
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
                                'New Followers: Follow You',
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
                        height: 14.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 13.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: Text(
                                          "ON",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue3,
                                          value: on3,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue3 = on3;
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
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue3,
                                          value: off3,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue3 = off3;
                                            });
                                          })
                                    ],
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
                                'Accepted: Your Follow  Request',
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
                        height: 14.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 13.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: Text(
                                          "ON",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue4,
                                          value: on4,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue4 = on4;
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
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue4,
                                          value: off4,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue4 = off4;
                                            });
                                          })
                                    ],
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
                                'Profile: Suggestions',
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
                        height: height * 0.03,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildtextstyle() {
    return TextStyle(
        color: customTextColor, fontFamily: 'Poppins', fontSize: 12.sp);
  }

  List notificationList = [
    'Like, Comments & Share',
    'Live',
    'Chat-Box & Group',
    'Gift Send me',
    'Connect for you (via email)',
    'New Followers and Following you',
  ];

  buildnotificationpage(context) {
    var notification = true;
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
                      /*  Row(
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
                      ), */
                      SizedBox(
                        height: 2.5.h,
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
                            'Notifications',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All Notifications',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: customTextColor),
                          ),
                          Switch.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: notification,
                              onChanged: (value1) {
                                setState(() {
                                  notification = value1;
                                });
                              })
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 4.h,
                          );
                        },
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          if (index == 6) {
                            return SizedBox(
                              height: 6.h,
                            );
                          } else {
                            return InkWell(
                              onTap: () {
                                if (index == 0) {
                                  buildlikecommentshare(context);
                                } else if (index == 1) {
                                  buildlive(context);
                                } else if (index == 2) {
                                  buildchatbox(context);
                                } else if (index == 3) {
                                  buildgiftpage(context);
                                } else if (index == 4) {
                                  WidgetNotification()
                                      .buildconnectemail(context);
                                } else if (index == 5) {
                                  WidgetNotification().buildnewfollow(context);
                                }
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    notificationList[index],
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 11.sp,
                                        color: customTextColor),
                                  ),
                                  Iconify(
                                    Eva.arrow_right_fill,
                                    size: 15.sp,
                                  )
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildchatbox(context) {
    dynamic groupValue1;
    var everyone1 = "1";
    var followers1 = "2";
    var off1 = "3";
    dynamic groupValue2;
    var everyone2 = "1";
    var followers2 = "2";
    var off2 = "3";
    dynamic groupValue3;
    var everyone3 = "1";
    var followers3 = "2";
    var off3 = "3";
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
                            'Chat-Box & Group',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text(
                                'All OFF',
                                style: buildtextstyle(),
                              ),
                            ),
                            Switch.adaptive(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value1,
                                onChanged: (value1) {
                                  setState(() {
                                    this.value1 = value1;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
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
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Chat Request',
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
                        height: 1.h,
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
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Group Request',
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
                        height: 1.h,
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
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            groupValue: groupValue3,
                                            value: index == 0
                                                ? everyone3
                                                : index == 1
                                                    ? followers3
                                                    : off3,
                                            onChanged: (val) {
                                              if (index == 0) {
                                                setState(() {
                                                  groupValue3 = everyone3;
                                                });
                                              } else if (index == 1) {
                                                setState(() {
                                                  groupValue3 = followers3;
                                                });
                                              } else if (index == 2) {
                                                setState(() {
                                                  groupValue3 = off3;
                                                });
                                              }
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Join video call request',
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
                        height: 5.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildgiftpage(context) {
    dynamic groupValue1;
    var everyone1 = "1";
    var followers1 = "2";
    var off1 = "3";
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
                            'Gift Send me',
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
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Send me Gift',
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
                        height: 8.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  List mainList = [
    "EveryOne",
    "Followers",
    "OFF",
  ];

  buildlikecommentshare(context) {
    dynamic groupValue1;
    var everyone1 = "1";
    var followers1 = "2";
    var off1 = "3";
    dynamic groupValue2;
    var everyone2 = "1";
    var followers2 = "2";
    var off2 = "3";
    dynamic groupValue3;
    var everyone3 = "1";
    var followers3 = "2";
    var off3 = "3";
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
                            'Like, Comments & Share',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text(
                                'All OFF',
                                style: buildtextstyle(),
                              ),
                            ),
                            Switch.adaptive(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value1,
                                onChanged: (value) {
                                  setState(() {
                                    value1 = value;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
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
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: Text(
                                            mainList[index],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: 'Poppins',
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                        Radio(
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
                                            })
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 0.5.h,
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
                                'Like Your Post: Photo, Video & Story',
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
                        height: 1.h,
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
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.w),
                                              child: Text(
                                                mainList[index],
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                            Radio(
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
                                                })
                                          ],
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          height: 0.5.h,
                                        );
                                      },
                                      itemCount: 3),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Comments Your Post: Photo, Video & Story',
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
                        height: 1.h,
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
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.w),
                                              child: Text(
                                                mainList[index],
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                            Radio(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                groupValue: groupValue3,
                                                value: index == 0
                                                    ? everyone3
                                                    : index == 1
                                                        ? followers3
                                                        : off3,
                                                onChanged: (val) {
                                                  if (index == 0) {
                                                    setState(() {
                                                      groupValue3 = everyone3;
                                                    });
                                                  } else if (index == 1) {
                                                    setState(() {
                                                      groupValue3 = followers3;
                                                    });
                                                  } else if (index == 2) {
                                                    setState(() {
                                                      groupValue3 = off3;
                                                    });
                                                  }
                                                })
                                          ],
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return Divider(
                                          height: 0.5.h,
                                        );
                                      },
                                      itemCount: 3),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Share/Repost Your Post: Photo, Video, Story and Your Profile',
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
                        height: 5.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }

  buildlive(context) {
    dynamic groupValue1;
    var followers1 = "1";
    var off1 = "2";
    dynamic groupValue2;
    var followers2 = "1";
    var off2 = "2";
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
                            'Live',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text(
                                'All OFF',
                                style: buildtextstyle(),
                              ),
                            ),
                            Switch.adaptive(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value1,
                                onChanged: (value1) {
                                  setState(() {
                                    this.value1 = value1;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        height: 14.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 13.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  Row(
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
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue1,
                                          value: followers1,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue1 = followers1;
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
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue1,
                                          value: off1,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue1 = off1;
                                            });
                                          })
                                    ],
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
                                'Followers Live',
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
                        height: 4.h,
                      ),
                      SizedBox(
                        height: 14.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            height: 13.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue2,
                                          value: followers2,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue2 = followers2;
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
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupValue2,
                                          value: off2,
                                          onChanged: (val) {
                                            setState(() {
                                              groupValue2 = off2;
                                            });
                                          })
                                    ],
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
                                'Following Live',
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
                        height: 10.h,
                      )
                    ])),
                positionCross(context)
              ],
            );
          });
        });
  }
}

class _WidgetNotificationState extends State<WidgetNotification> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

positionCross(context) {
  return Positioned.fill(
      top: -32,
      child: Align(
        alignment: Alignment.topCenter,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Iconify(
                Charm.cross,
                color: Colors.white,
                size: 18.sp,
              ),
            ),
          ),
        ),
      ));
}
