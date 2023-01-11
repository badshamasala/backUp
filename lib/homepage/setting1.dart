import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/archive_post/archive_check.dart';
import 'package:flutter_application_1/archive_post/favorite_profile.dart';
import 'package:flutter_application_1/archive_post/friends.dart';
import 'package:flutter_application_1/archive_post/history1.dart';
import 'package:flutter_application_1/archive_post/saved1.dart';
import 'package:flutter_application_1/homepage/inside_setting.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bytesize.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/cil.dart';
import 'package:iconify_flutter/icons/codicon.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/fa6_regular.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:sizer/sizer.dart';

import '../archive_post/rewardcollection.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  List<Map<String, dynamic>> settingList = [
    {"icon": Eva.settings_2_outline, "label": "Setting"},
    {"icon": Gg.edit_highlight, "label": "Profile Activity"},
    {"icon": Bi.gift, "label": "Reward Collection"},
    {"icon": Octicon.history_16, "label": "History"},
    {"icon": Mdi.archive_arrow_down_outline, "label": "Archive"},
    {"icon": Bi.bookmark_star, "label": "Saved"},
    {"icon": Carbon.person_favorite, "label": "Favourites Profile"},
    {"icon": Carbon.friendship, "label": "Friends"},
    {"icon": MaterialSymbols.qr_code_scanner_rounded, "label": "QR Code"},
    {"icon": Carbon.ibm_watson_discovery, "label": "Discover"},
    {"icon": Ri.share_circle_line, "label": "Share"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        automaticallyImplyLeading: false,
        titleSpacing: 3.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SizedBox(
          height: MediaQuery.of(context).size.height > 667 ? 8.3.h : 7.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('@profile.user-id',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: primaryColorOfApp,
                          fontSize: 12.sp)),
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
                          Get.to(() => const Rewardcollection());
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
                          /*  Get.to(() => const ProfileAcitvity()); */
                        } else if (index == 9) {
                          /*  Get.to(() => const ProfileAcitvity()); */
                        } else if (index == 10) {
                          /*  Get.to(() => const ProfileAcitvity()); */
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: index == 2
                                    ? 0.7.w
                                    : index == 3
                                        ? 1.w
                                        : 0,
                              ),
                              /*  SizedBox(
                                width: index == 2
                                    ? 0.6.w
                                    : index == 3
                                        ? 0.7.w
                                        : index == 5
                                            ? 0.3.w
                                            : index == 6
                                                ? 0.7.w
                                                : index == 7
                                                    ? 0.7.w
                                                    : index == 8
                                                        ? 0.6.w
                                                        : index == 9
                                                            ? 0.6.w
                                                            : index == 10
                                                                ? 0.6.w
                                                                : 0,
                              ), */
                              Container(
                                /*         color: Colors.green, */
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: /*  index == 2 ? 1.w : */ 0),
                                  child: Iconify(
                                    settingList[index]["icon"],
                                    size: index == 2
                                        ? 19.sp
                                        : index == 3
                                            ? 19.sp
                                            : 23.sp,

                                    /* index == 1
                                        ? 24.sp
                                        : index == 4
                                            ? 24.sp
                                            : index == 0
                                                ? 25.sp
                                                : index == 5
                                                    ? 22.sp
                                                    : index == 6
                                                        ? 22.sp
                                                        : index == 7
                                                            ? 22.sp
                                                            : index == 8
                                                                ? 22.sp
                                                                : index == 9
                                                                    ? 22.sp
                                                                    : */
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: /* index == 0
                                    ? 3.5.w
                                    : index == 1
                                        ? 4.w
                                        : index == 2
                                            ? 4.w
                                            : index == 3
                                                ? 5.w
                                                : index == 5
                                                    ? 5.w
                                                    : index == 4
                                                        ? 4.5.w
                                                        : index == 6
                                                            ? 5.w
                                                            : index == 7
                                                                ? 5.w
                                                                : index == 8
                                                                    ? 5.w
                                                                    : index == 9
                                                                        ? 5.w
                                                                        : index ==
                                                                                10
                                                                            ? 5.w
                                                                            : */
                                    index == 2
                                        ? 4.6.w
                                        : index == 3
                                            ? 4.6.w
                                            : 4.w,
                              ),
                              Container(
                                /*  color: Colors.red, */
                                child: Text(
                                  settingList[index]["label"].toString(),
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10.sp),
                                ),
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
