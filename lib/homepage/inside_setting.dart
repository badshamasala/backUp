import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/NEW_FOLDER/saved1.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_application_1/homepage/ads.dart';
import 'package:flutter_application_1/homepage/permissionset.dart';
import 'package:flutter_application_1/homepage/privacy.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/self_profile.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:sizer/sizer.dart';

import 'monetize_check.dart';
import 'verification1.dart';

class InsideSetting extends StatefulWidget {
  const InsideSetting({Key? key}) : super(key: key);

  @override
  State<InsideSetting> createState() => _InsideSettingState();
}

class _InsideSettingState extends State<InsideSetting> {
  List<Map<String, dynamic>> insideSettingList = [
    {"icon": Gg.profile, "label": "Profile"},
    {"icon": Ci.notification_outline, "label": "Notifications"},
    {"icon": Uil.arrow_growth, "label": "Monetize"},
    {"icon": Octicon.shield_lock_24, "label": "Permission Set"},
    {"icon": Uil.language, "label": "Language"},
    {"icon": Ph.chat_centered_text_light, "label": "Chat-Box(message)"},
    {"icon": Uil.megaphone, "label": "Ads"},
    {"icon": Bi.patch_check, "label": "@Verification"},
    {"icon": Octicon.shield_check_24, "label": "Privacy"},
    {"icon": Mdi.lock_outline, "label": "Security"},
    {"icon": Mdi.about_circle_outline, "label": "About"},
    {"icon": Ic.sharp_help_outline, "label": "Help"},
  ];

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
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
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 13,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height:
                        MediaQuery.of(context).size.height > 666.9629629629629
                            ? 2.6.h
                            : 2.h,
                  );
                },
                itemBuilder: (context, index) {
                  if (index == 12) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Iconify(Ep.i_switch),
                            SizedBox(
                              width: 2.w,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  minimumSize: Size(00, 4.h),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                switchMethod(context);
                              },
                              child: Text(
                                'SWITCH PROFILE',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 12.sp,
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
                                fontSize: 12.sp,
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
                                    fontSize: 10.sp,
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
                          Get.to(() => Privacy());
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
                              Iconify(insideSettingList[index]["icon"]),
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
                                              fontSize: 10.sp),
                                        ),
                                        Iconify(
                                          Bi.patch_check,
                                          size: 15.sp,
                                          color: Color(0xff038026),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      insideSettingList[index]["label"]!,
                                      style: TextStyle(
                                          color: customTextColor,
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp),
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

switchMethod(context) {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  dynamic groupvalues;
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
                              'SWITCH PROFILE',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                      ])),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
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
                              padding: EdgeInsets.only(left: 5.w, bottom: 2.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            acttypeList[index]["type"],
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                color: customTextColor,
                                                fontSize: 15.sp,
                                                letterSpacing: 0.5),
                                          ),
                                        ],
                                      ),
                                      Transform.scale(
                                        scale: 1.2.sp,
                                        child: Radio(
                                          splashRadius: 0,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          value: index == 0
                                              ? value1
                                              : index == 1
                                                  ? value2
                                                  : value3,
                                          groupValue: groupvalues,
                                          onChanged: (val) {
                                            if (index == 0) {
                                              setState(() {
                                                value1 = true;
                                                value2 = false;
                                                value3 = false;
                                                groupvalues = value1;
                                              });
                                            } else if (index == 1) {
                                              setState(() {
                                                value1 = false;
                                                value2 = true;
                                                value3 = false;
                                                groupvalues = value2;
                                              });
                                            } else if (index == 2) {
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
                                    acttypeList[index]["label1"],
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 11.sp),
                                  ),
                                  Text(
                                    acttypeList[index]["label2"],
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 11.sp),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 1.h,
                          );
                        },
                        itemCount: acttypeList.length),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: SizedBox(
                      height: 6.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,

                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 40.0, vertical: 20.0),
                            backgroundColor: const Color(0xff0087FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Confirm Switch",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
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
}
