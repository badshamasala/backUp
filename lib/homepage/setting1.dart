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
import 'package:iconify_flutter/icons/bytesize.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/codicon.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/fa6_regular.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:sizer/sizer.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  List<Map<String, dynamic>> settingList = [
    {"icon": Uiw.setting_o, "label": "Setting"},
    {"icon": Gg.edit_highlight, "label": "Profile Activity"},
    {"icon": Ic.baseline_card_giftcard, "label": "Digital Collection"},
    {"icon": Ic.round_history, "label": "History"},
    {"icon": Ion.archive, "label": "Archive"},
    {"icon": Bi.bookmark_star, "label": "Saved"},
    {"icon": Ph.heart, "label": "Favourites Profile"},
    {"icon": Carbon.friendship, "label": "Friends"},
    {"icon": MaterialSymbols.qr_code_scanner_rounded, "label": "QR Code"},
    {"icon": Mdi.account_multiple_plus_outline, "label": "Discover"},
    {"icon": Codicon.live_share, "label": "Share"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
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
            icon: const Iconify(
              Mdi.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: Column(
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
                itemCount: 12,
                separatorBuilder: (context, index) {
                  return Divider(
                    height:
                        MediaQuery.of(context).size.height > 666.9629629629629
                            ? 3.5.h
                            : 3.h,
                    color: Colors.transparent,
                  );
                },
                itemBuilder: (context, index) {
                  if (index == 11) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'version  3.6.9. (596) ',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 8.sp),
                            ),
                          ],
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
                              Iconify(settingList[index]["icon"]),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                settingList[index]["label"].toString(),
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
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
              )),
        ],
      ),
    );
  }
}
