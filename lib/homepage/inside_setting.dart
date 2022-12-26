import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/NEW_FOLDER/saved1.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_application_1/homepage/ads.dart';
import 'package:flutter_application_1/homepage/permissionset.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/self_profile.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

import 'monetize_check.dart';
import 'verification1.dart';

class InsideSetting extends StatefulWidget {
  const InsideSetting({Key? key}) : super(key: key);

  @override
  State<InsideSetting> createState() => _InsideSettingState();
}

class _InsideSettingState extends State<InsideSetting> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic groupvalues;
  var insideSettingList = [
    {"icon": 'assets/setprofile.svg', "label": "Profile"},
    {"icon": 'assets/setnotification.svg', "label": "Notifications"},
    {"icon": 'assets/setfolo.svg', "label": "Monetize"},
    {"icon": 'assets/setpermision.svg', "label": "Permission Set"},
    {"icon": 'assets/setlang.svg', "label": "Language"},
    {"icon": 'assets/setchat2.svg', "label": "Chat-Box(message)"},
    {"icon": 'assets/hearticon.svg', "label": "Ads"},
    {"icon": 'assets/certifyicon1.svg', "label": "@Verification"},
    {"icon": 'assets/setprivacy.svg', "label": "Privacy"},
    {"icon": 'assets/setsecurity.svg', "label": "Security"},
    {"icon": 'assets/setabout.svg', "label": "About"},
    {"icon": 'assets/sethelp.svg', "label": "Help"},
  ];

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Settings',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: customTextColor,
                fontSize: 15.sp)),
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Iconify(
              Mdi.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Divider(
              height: 0.5.h,
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 13,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 3.2.h,
                  );
                },
                itemBuilder: (context, index) {
                  if (index == 12) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/setswitch.svg',
                              height: 2.5.h,
                              width: 2.5.w,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  minimumSize: Size(00, 4.h),
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
                                      return StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w),
                                                    child: Column(children: [
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          IconButton(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0),
                                                              constraints:
                                                                  const BoxConstraints(),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon:
                                                                  const Iconify(
                                                                Mdi.arrow_back,
                                                                color:
                                                                    primaryColorOfApp,
                                                              )),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          Text(
                                                            'SWITCH PROFILE',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    primaryColorOfApp,
                                                                fontSize:
                                                                    15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                    ])),
                                                const Divider(),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(12.sp),
                                                  child: ListView.separated(
                                                      shrinkWrap: true,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: 0.5,
                                                                  color: index == 0 && value1
                                                                      ? primaryColorOfApp
                                                                      : index == 1 && value2
                                                                          ? primaryColorOfApp
                                                                          : index == 2 && value3
                                                                              ? primaryColorOfApp
                                                                              : customTextColor),
                                                              borderRadius: BorderRadius.circular(10)),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.w,
                                                                    bottom:
                                                                        2.h),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          acttypeList[index]
                                                                              [
                                                                              "type"],
                                                                          style: TextStyle(
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600,
                                                                              color: customTextColor,
                                                                              fontSize: 15.sp,
                                                                              letterSpacing: 0.5),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Transform
                                                                        .scale(
                                                                      scale: 1.2
                                                                          .sp,
                                                                      child:
                                                                          Radio(
                                                                        splashRadius:
                                                                            0,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                        value: index ==
                                                                                0
                                                                            ? value1
                                                                            : index == 1
                                                                                ? value2
                                                                                : value3,
                                                                        groupValue:
                                                                            groupvalues,
                                                                        onChanged:
                                                                            (val) {
                                                                          if (index ==
                                                                              0) {
                                                                            setState(() {
                                                                              value1 = true;
                                                                              value2 = false;
                                                                              value3 = false;
                                                                              groupvalues = value1;
                                                                            });
                                                                          } else if (index ==
                                                                              1) {
                                                                            setState(() {
                                                                              value1 = false;
                                                                              value2 = true;
                                                                              value3 = false;
                                                                              groupvalues = value2;
                                                                            });
                                                                          } else if (index ==
                                                                              2) {
                                                                            setState(() {
                                                                              value1 = false;
                                                                              value2 = false;
                                                                              value3 = true;
                                                                              groupvalues = value3;
                                                                            });
                                                                          }
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  acttypeList[
                                                                          index]
                                                                      [
                                                                      "label1"],
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          11.sp),
                                                                ),
                                                                Text(
                                                                  acttypeList[
                                                                          index]
                                                                      [
                                                                      "label2"],
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          11.sp),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                          height: 1.h,
                                                        );
                                                      },
                                                      itemCount:
                                                          acttypeList.length),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.all(12.sp),
                                                  child: SizedBox(
                                                    height: 6.h,
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              elevation: 0,

                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff0087FF),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      child: Text(
                                                        "Confirm Switch",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12.sp,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 6.h,
                                                )
                                              ],
                                            ),
                                            positionCross(context)
                                          ],
                                        );
                                      });
                                    });
                              },
                              child: Text(
                                'SWITCH PROFILE',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Theme mode',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 13.sp,
                              ),
                            ),
                            Switch.adaptive(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: primaryColorOfApp,
                                value: valueofswitch,
                                onChanged: (value) {
                                  setState(() {
                                    valueofswitch = value;
                                  });
                                })
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                /*     final provider = Provider.of<Googleprovider>(
                                      context,
                                      listen: false);
                                  provider.logout().whenComplete(() =>  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GooglePage1()))); */
                              },
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  } else {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => SelfProfile());
                        } else if (index == 1) {
                          WidgetNotification().buildnotificationpage(context);
                        } else if (index == 2) {
                          Get.to(() => MonetizeCheck());
                        } else if (index == 3) {
                          permissionmethod(context);
                        } else if (index == 4) {
                          selectlanguagemethod(context);
                        } else if (index == 5) {
                          WidgetNotification().buildchatbox(context);
                        } else if (index == 6) {
                          Get.to(() => Ads());
                        } else if (index == 7) {
                          Get.to(() => Verification1());
                        } else if (index == 8) {
                          settingPrivacy(context);
                        } else if (index == 9) {
                          buildsecurity(context);
                        } else if (index == 10) {
                          /*    Get.to(() => ProfileAcitvity()); */
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                insideSettingList[index]["icon"]!,
                                height: 2.5.h,
                                width: 2.5.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              index == 7
                                  ? Row(
                                      children: [
                                        Text(
                                          insideSettingList[index]["label"]!,
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp),
                                        ),
                                        Iconify(
                                          Bi.patch_check,
                                          size: 15,
                                          color: Color(0xff038026),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      insideSettingList[index]["label"]!,
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp),
                                    )
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
