import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/archive_check.dart';
import 'package:flutter_application_1/NEW_FOLDER/favorite_profile.dart';
import 'package:flutter_application_1/NEW_FOLDER/friends.dart';
import 'package:flutter_application_1/NEW_FOLDER/history1.dart';
import 'package:flutter_application_1/NEW_FOLDER/saved1.dart';
import 'package:flutter_application_1/homepage/inside_setting.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:sizer/sizer.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  var settingList = [
    {"icon": 'assets/settingicon.svg', "label": "Setting"},
    {"icon": 'assets/profileactivityicon.svg', "label": "Profile Activity"},
    {"icon": 'assets/digitalicon.svg', "label": "Digital Collection"},
    {"icon": 'assets/historyicon.svg', "label": "History"},
    {"icon": 'assets/archiveicon.svg', "label": "Archive"},
    {"icon": 'assets/savedicon.svg', "label": "Saved"},
    {"icon": 'assets/hearticon.svg', "label": "Favourites Profile"},
    {"icon": 'assets/friendicon.svg', "label": "Friends"},
    {"icon": 'assets/qrcodeicon.svg', "label": "QR Code"},
    {"icon": 'assets/discovericon1.svg', "label": "Discover"},
    {"icon": 'assets/settingshare.svg', "label": "Share"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        automaticallyImplyLeading: false,
        titleSpacing: -10.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '@profile.user-id',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: primaryColorOfApp,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Iconify(
                  Bi.patch_check,
                  color: primaryColorOfApp,
                  size: 15.sp,
                ),
              ],
            ),
            Text(
              'Profie Name ',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 12.sp),
            ),
          ],
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
          const Divider(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 12,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 4.h,
                    );
                  },
                  itemBuilder: (context, index) {
                    if (index == 11) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'version  3.6.9. (596) ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 7),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          if (index == 0) {
                            Get.to(() => const InsideSetting());
                          } else if (index == 1) {
                            Get.to(() => const ProfileAcitvity());
                          } else if (index == 2) {
                            index3(context);
                          } else if (index == 3) {
                            Get.to(() => const History1());
                          } else if (index == 4) {
                            Get.to(() => const ArchiveCheck());
                          } else if (index == 5) {
                            Get.to(const Saved1());
                          } else if (index == 6) {
                            Get.to(() => const FavoriteProfile());
                          } else if (index == 7) {
                            Get.to(() => const Friends1());
                          } else if (index == 8) {
                            Get.to(() => const ProfileAcitvity());
                          } else if (index == 9) {
                            Get.to(() => const ProfileAcitvity());
                          } else if (index == 10) {
                            Get.to(() => const ProfileAcitvity());
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  settingList[index]["icon"].toString(),
                                  height: 15,
                                  width: 15,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  settingList[index]["label"].toString(),
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
              ])),
        ],
      ),
    );
  }
}
