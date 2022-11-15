import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

class WidgetNotification extends StatefulWidget {
  WidgetNotification({Key? key}) : super(key: key);

  @override
  State<WidgetNotification> createState() => _WidgetNotificationState();

  buildconnectemail(BuildContext context) {
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
                            'Connect for you (via email)',
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
                            width: 103,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Connect for via email',
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

  bool value1 = false;
  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';

  buildnewfollow(context) {
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
                            'New Followers and Follow You',
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
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
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
                        height: height * 0.01,
                      ),
                      SizedBox(
                        /*         color: Colors.red, */
                        height: 140,
                        child: Stack(children: [
                          Positioned(
                            top: 7,
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
                            width: 75,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                '@mentions you',
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
                        /*    color: Colors.yellow, */
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
                                          "ON",
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
                            top: 0,
                            left: 20,
                            width: 115,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'New Followers: Follow You',
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
                        height: height * 0.02,
                      ), */
                      SizedBox(
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
                                          "ON",
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
                            top: 0,
                            left: 20,
                            width: 140,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Accepted: Your Follow Request',
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
                                          "ON",
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
                            top: 0,
                            left: 20,
                            width: 90,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Profile: Suggestions',
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

  buildtextstyle() {
    return TextStyle(
        color: customTextColor, fontFamily: 'Poppins', fontSize: 11);
  }

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
                            'Notifications',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All Notifications',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Switch.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: notification,
                              onChanged: (value1) {
                                setState(() {
                                  this.value1 = notification;
                                });
                              })
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          buildlikecommentshare(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Like, Comments, Share, Photo, Video & Story  ',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          buildlive(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Live',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          buildchatbox(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chat-Box & Group ',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          buildgiftpage(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Gift  Send  me ',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          WidgetNotification().buildconnectemail(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Connect for you (via email)',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          WidgetNotification().buildnewfollow(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Followers and Following ',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                            )
                          ],
                        ),
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

  buildchatbox(context) {
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
                            'Chat-Box & Group',
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
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
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
                            width: 65,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Chat Request',
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
                        /* color: Colors.red, */
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
                            top: 14,
                            left: 20,
                            width: 57,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Group Request',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 8,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        /* color: Colors.red, */
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
                            top: 15,
                            left: 20,
                            width: 40,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Video Call Request',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 8,
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

  buildgiftpage(context) {
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
                            'Gift Send me ',
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
                            width: 63,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Send me Gift',
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

  buildlikecommentshare(context) {
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
                            'Like, Comments, Share, Photo, Video & Story  ',
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
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
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
                            width: 160,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Like Your Post: Photo, Video & Story',
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
                        /* color: Colors.red, */
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
                            top: 14,
                            left: 20,
                            width: 155,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Comments Your Post: Photo, Video & Story',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 8,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        /* color: Colors.red, */
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
                            top: 15,
                            left: 20,
                            width: 215,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Share/Repost Your Post: Photo, Video, Story and Your Profile',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 8,
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

  buildlive(context) {
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
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Divider(),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
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
                            width: 65,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Followers Live',
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
                            width: 65,
                            height: 12,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Following Live',
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
}

class _WidgetNotificationState extends State<WidgetNotification> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
