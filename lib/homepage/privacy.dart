import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/homepage/blkcomntfrom.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:sizer/sizer.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool valueofswitch = false;
  List<Map<String, dynamic>> privacyList = [
    {
      "icon": Gg.profile,
      "label": "Private Profile",
    },
    {"icon": Gg.edit_highlight, "label": "Activity Status"},
    {"icon": Ic.baseline_card_giftcard, "label": "Show Reward Points"},
    {"icon": Heroicons.user_group_solid, "label": "Groups"},
    {"icon": Uil.comment_alt_edit, "label": "Comments"},
    {"icon": Ic.twotone_photo_library, "label": "Post-Photo & Video"},
    {"icon": Ic.round_history, "label": "Story"},
    {"icon": AkarIcons.people_group, "label": "Live"},
    {"icon": Ph.chat_centered_text_light, "label": "Chat-Box"},
    {"icon": Ic.outline_alternate_email, "label": "Mention"},
    {"icon": EmojioneMonotone.wrapped_gift, "label": "Send me GIFT"},
    {"icon": Ooui.block, "label": "Block Profile List"},
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
        title: Text('Privacy',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 12,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: index == 0
                  ? 2.h
                  : MediaQuery.of(context).size.height > 666.9629629629629
                      ? 3.5.h
                      : 3.h,
            );
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (index == 1) {
                  WidgetProfilePage().buildActivityStatus(context);
                } else if (index == 2) {
                  WidgetProfilePage().buildShowRewardpoint(context);
                } else if (index == 3) {
                  WidgetProfilePage().buildGroups(context);
                } else if (index == 4) {
                  WidgetProfilePage().buildComments(context);
                } else if (index == 5) {
                  WidgetProfilePage().buildPostPhotoVideo(context);
                } else if (index == 6) {
                  WidgetProfilePage().buildStory(context);
                } else if (index == 7) {
                  WidgetProfilePage().buildLivePrivacy(context);
                } else if (index == 8) {
                  WidgetProfilePage().buildChatBoxPrivacy(context);
                } else if (index == 9) {
                  WidgetProfilePage().buildMention(context);
                } else if (index == 10) {
                  WidgetProfilePage().buildSendmeGift(context);
                } else if (index == 11) {
                  Blkcomntfrom(
                    value: "Block Profile List",
                  ).function(context);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Iconify(privacyList[index]["icon"]),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        privacyList[index]["label"].toString(),
                        style: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                      ),
                    ],
                  ),
                  index == 0
                      ? Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: primaryColorOfApp,
                          value: valueofswitch,
                          onChanged: (value) {
                            setState(() {
                              valueofswitch = value;
                            });
                          })
                      : Iconify(
                          Eva.arrow_right_fill,
                          size: 15.sp,
                          color: customTextColor,
                        )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
