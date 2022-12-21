import 'package:flutter/material.dart';
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
import 'package:iconify_flutter/icons/eva.dart';
import 'package:sizer/sizer.dart';

import 'monetize_check.dart';
import 'verification1.dart';

class InsideSetting extends StatefulWidget {
  const InsideSetting({Key? key}) : super(key: key);

  @override
  State<InsideSetting> createState() => _InsideSettingState();
}

class _InsideSettingState extends State<InsideSetting> {
  var insideSettingList = [
    {"icon": 'assets/setprofile.svg', "label": "Profile"},
    {"icon": 'assets/setnotification.svg', "label": "Notifications"},
    {"icon": 'assets/setfolo.svg', "label": "Monetize"},
    {"icon": 'assets/setpermision.svg', "label": "Permission Set"},
    {"icon": 'assets/setlang.svg', "label": "Language"},
    {"icon": 'assets/setchat2.svg', "label": "Chat-Box(message)"},
    {"icon": 'assets/hearticon.svg', "label": "Ads"},
    {"icon": 'assets/certifyicon.svg', "label": "@Verification"},
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
        titleSpacing: -10.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(
              fontFamily: 'Poppins', color: customTextColor, fontSize: 15.sp),
        ),
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: Column(
        children: [
          const Divider(
            height: 10,
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
                  height: 3.8.h,
                );
              },
              itemBuilder: (context, index) {
                if (index == 12) {
                  return Column(
                    children: [
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
                                width: 3.w,
                              ),
                              const Text(
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
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
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
                            child: const Padding(
                              padding: EdgeInsets.only(right: 35.0),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
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
                        Get.to(() => Saved1());
                      } else if (index == 6) {
                        Get.to(() => Ads());
                      } else if (index == 7) {
                        Get.to(() => Verification1());
                      } else if (index == 8) {
                        settingPrivacy(context);
                      } else if (index == 9) {
                        buildsecurity(context);
                      } else if (index == 10) {
                        Get.to(() => ProfileAcitvity());
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              insideSettingList[index]["icon"].toString(),
                              height: 15,
                              width: 15,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              insideSettingList[index]["label"].toString(),
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp),
                            ),
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
    );
  }
}
