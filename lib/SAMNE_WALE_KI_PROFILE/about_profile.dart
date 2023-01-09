import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

import '../homepage/widget_notification.dart';

class AboutProfile extends StatefulWidget {
  const AboutProfile({Key? key}) : super(key: key);

  @override
  State<AboutProfile> createState() => _AboutProfileState();
}

class _AboutProfileState extends State<AboutProfile> {
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  bool urlvariable = false;
  var groupemail;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;
  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;
  List aboutProfileList = [
    {"label": "About profile", "icon": Mdi.alert_circle},
    {"label": "My Favorites Profile", "icon": Carbon.person_favorite},
    {"label": "My Close Friends", "icon": Carbon.friendship},
    {"label": "Share This Profile (via)", "icon": null},
    {
      "label": "Rewards Collection this profile",
      "icon": EmojioneMonotone.wrapped_gift
    },
    {"label": "Group Joined this profile", "icon": AkarIcons.people_group},
    {"label": "Copy URL this profile", "icon": Ic.round_content_copy},
    {"label": "QR Code this profile", "icon": Bi.qr_code_scan},
    {"label": "Report this profile", "icon": IconParkSolid.caution},
    {"label": "Block this profile", "icon": Ooui.block},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 9.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '@Nanncyjain23',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Poppins',
                    color: primaryColorOfApp),
              ),
              SizedBox(
                width: 1.w,
              ),
              Iconify(
                Bi.patch_check,
                size: 18.sp,
                color: Color(0xff038026),
              ),
            ],
          ),
          leading: IconButton(
              visualDensity: VisualDensity.compact,
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
              height: 0,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    minLeadingWidth: 9.w,
                    visualDensity: VisualDensity.compact,
                    dense: true,
                    onTap: () {
                      if (index == 0) {
                        aboutprofile(context);
                      } else if (index == 3) {
                        share(context);
                      } else if (index == 4) {
                        rewardPoints(context);
                      } else if (index == 5) {
                        groupJoin(context);
                      } else if (index == 7) {
                        qrCode(context);
                      } else if (index == 8) {
                        reportProfile(context);
                      } else if (index == 9) {
                        blockProfile(context);
                      }
                    },
                    title: Text(
                      aboutProfileList[index]["label"],
                      style: TextStyle(
                          color:  customTextColor,
                          fontFamily: "Poppins",
                          fontSize: 10.sp),
                    ),
                    leading: aboutProfileList[index]["icon"] == null
                        ? Icon(
                            FluentIcons.share_24_filled,
                            color: customTextColor,
                          )
                        : Iconify(
                          
                            aboutProfileList[index]["icon"],
                            size: 20.sp,
                            color: index == 1 && value1
                              ? primaryColorOfApp
                              : index == 2 && value2
                                  ? primaryColorOfApp
                                  : customTextColor,
                          ),
                    trailing: index == 1
                        ? Checkbox(
                            shape: CircleBorder(),
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: value1,
                            onChanged: (value) {
                              setState(() {
                                value1 = value!;
                              });
                            })
                        : index == 2
                            ? Checkbox(
                                shape: CircleBorder(),
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: value2,
                                onChanged: (value) {
                                  setState(() {
                                    value2 = value!;
                                  });
                                })
                            : index == 6
                                ? null
                                : Padding(
                                    padding: EdgeInsets.only(right: 3.w),
                                    child: Iconify(
                                      Eva.arrow_right_fill,
                                      size: 15.sp,
                                      color: customTextColor,
                                    ),
                                  ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1.h,
                    color: Colors.transparent,
                  );
                },
                itemCount: aboutProfileList.length),
          ],
        ));
  }
}

aboutprofile(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: primaryColorOfApp,
                          radius: 19.sp,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18.sp,
                            child: CircleAvatar(
                              radius: 17.sp,
                              backgroundImage: AssetImage('assets/image1.webp'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '@Nanncyjain23 ',
                                  style: TextStyle(
                                      color: primaryColorOfApp,
                                      fontFamily: 'Poppins'),
                                ),
                                Iconify(
                                  Bi.patch_check,
                                  size: 18.sp,
                                  color: Color(0xff038026),
                                ),
                              ],
                            ),
                            Text(
                              '@m.rajan02',
                              style: ProfileSelf().buildtextstyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Information about this profile',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: const [
                              Text(
                                'this is viewer’s private profile ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: const [
                              Text(
                                'this profile created in 24-july-2018 ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: const [
                              Text(
                                'this profile created in india ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: const [
                              Text(
                                'this profile is verified  ',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                              Iconify(
                                Bi.patch_check,
                                size: 15,
                                color: primaryColorOfApp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            children: const [
                              Text(
                                'this profile current rating is',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 17,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          Row(
                            children: const [
                              Text(
                                'how much would you like to ratings this profile?',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: const Size(120, 35),
                                    // padding: EdgeInsets.symmetric(
                                    //     horizontal: 40.0, vertical: 20.0),
                                    backgroundColor: const Color(0xff0087FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.045,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.2,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              Positioned.fill(
                  top: -36,
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
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
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

share(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE2E2E2),
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xffE2E2E2),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    height: 5,
                    width: 100,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'share to ',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Color(0xff0087FF)),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'send to chat-box ',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 8),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset(
                            'assets/logo.png',
                            height: 22,
                            width: 22,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'send to group ',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 8),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset(
                            'assets/privacygroup.svg',
                            height: 22,
                            width: 22,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          final box = context.findRenderObject() as RenderBox?;
                          Share.share('aasd',
                              subject: 'axaa',
                              sharePositionOrigin:
                                  box!.localToGlobal(Offset.zero) & box.size);
                        },
                        child: Column(
                          children: [
                            const Text(
                              'share to',
                              style:
                                  TextStyle(fontFamily: 'Poppins', fontSize: 8),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SvgPicture.asset(
                              'assets/settingshare.svg',
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                      height: 40,
                      child: TextFormField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: Color(0xff333333), width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: Color(0xff0087FF), width: 0.5)),
                        labelText: 'Search',
                      ))),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          minVerticalPadding: 10,
                          horizontalTitleGap: 4,
                          visualDensity: const VisualDensity(vertical: -3),
                          dense: true,
                          leading: const CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                          ),
                          title: Text(
                            'Rajan Mistry-1 ',
                            style: ProfileSelf().buildtextstyle(),
                          ),
                          subtitle: Text(
                            '@m.rajan02',
                            style: ProfileSelf().buildtextstyle(),
                          ),
                          trailing: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  elevation: 0,
                                  minimumSize: const Size(80, 30),
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 40.0, vertical: 20.0),
                                  side: const BorderSide(
                                    color: Color(0xff0087FF),
                                  ),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onPressed: () {},
                              child: const Text(
                                'Send',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10),
                              )),
                        );
                      })),
                  SizedBox(
                    height: height * 0.2,
                  )
                ]),
              ),
              positionCross(context)
            ],
          );
        });
      });
}

rewardPoints(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                    /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE2E2E2),
                            border: Border.all(
                                width: 0.5, color: const Color(0xffE2E2E2)),
                            borderRadius: BorderRadius.circular(10)),
                        height: 5,
                        width: 100,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Notifications',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Color(0xff0087FF)),
                          ),
                          Iconify(
                            Bi.patch_check,
                            size: 15,
                            color: primaryColorOfApp,
                          ),
                        ],
                      ),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 48,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 7,
                              left: 0,
                              height: 40,
                              width: 280,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.5,
                                        color: const Color(0xff515253)),
                                    borderRadius: BorderRadius.circular(10)),
                                /*  width: 150,
                height: 150, */
                                /*  color: Colors.green[300], */
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Row(
                                        children: const [
                                          Text(
                                            '26548 rank ',
                                            style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '489659984 ',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'Points',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child:
                                          Image.asset('assets/earnpoints.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 30,
                              width: 70,
                              height: 10,
                              child: Container(
                                /*   width: 200,
                height: 150, */
                                color: Colors.white,
                                child: const Text(
                                  'Earn Points This Profile ',
                                  style: TextStyle(
                                      color: Color(0xff515253),
                                      fontSize: 10,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Today',
                            style: TextStyle(
                                color: primaryColorOfApp,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Text(
                            '13 Dec 2020',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 8),
                          )
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        /* color: Colors.red, */
                        height: 160,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 7,
                              left: 0,
                              height: 140,
                              width: 280,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.5,
                                        color: const Color(0xff515253)),
                                    borderRadius: BorderRadius.circular(10)),
                                /*  width: 150,
                height: 150, */
                                /*  color: Colors.green[300], */
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'No. 1 rank',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '2565489659984',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '@abcprofile',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: primaryColorOfApp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'No. 1 rank',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '2565489659984',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '@abcprofile',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: primaryColorOfApp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'No. 1 rank',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '2565489659984',
                                            style: TextStyle(
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            '@abcprofile',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: primaryColorOfApp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 210,
                              width: 55,
                              height: 12,
                              child: Container(
                                /*   width: 200,
                height: 150, */
                                color: Colors.white,
                                child: const Text(
                                  '@profile-ID',
                                  style: TextStyle(
                                      color: Color(0xff515253),
                                      fontSize: 10,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 115,
                              width: 30,
                              height: 10,
                              child: Container(
                                /*   width: 200,
                height: 150, */
                                color: Colors.white,
                                child: const Text(
                                  'Points ',
                                  style: TextStyle(
                                      color: Color(0xff515253),
                                      fontSize: 10,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 20,
                              width: 25,
                              height: 10,
                              child: Container(
                                /*   width: 200,
                height: 150, */
                                color: Colors.white,
                                child: const Text(
                                  'Rank',
                                  style: TextStyle(
                                      color: Color(0xff515253),
                                      fontSize: 10,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              positionCross(context)
            ],
          );
        });
      });
}

groupJoin(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                      /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffE2E2E2),
                              border: Border.all(
                                  width: 0.5, color: const Color(0xffE2E2E2)),
                              borderRadius: BorderRadius.circular(10)),
                          height: 5,
                          width: 100,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '@Nanncyjain23',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: Color(0xff0087FF)),
                            ),
                            Iconify(
                              Bi.patch_check,
                              size: 15,
                              color: primaryColorOfApp,
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'this profile joined multiple group ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'only showing public group ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: ((context, index) {
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'this is public group',
                                                style: ProfileSelf()
                                                    .buildtextstyle(),
                                              ),
                                            ],
                                          ),
                                          Text('you can join this group ',
                                              style: ProfileSelf()
                                                  .buildtextstyle()),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Shopping Center',
                                              style: ProfileSelf()
                                                  .buildtextstyle()),
                                          const Text(
                                            '@see-groups',
                                            style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  )
                                ],
                              );
                            })),
                      ])),
              positionCross(context)
            ],
          );
        });
      });
}

qrCode(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          border: Border.all(
                              width: 0.5, color: const Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 100,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                  image: const AssetImage(
                                    'assets/logo.png',
                                  ),
                                  height: height * 0.055,
                                  width: width * 0.12,
                                  fit: BoxFit.fitHeight),
                              Text(
                                'myttube',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xff0087FF),
                                  fontFamily: 'Satisfy',
                                  fontSize: width * 0.08,
                                  shadows: const [
                                    Shadow(
                                      blurRadius: 5.0,
                                      color: Color(0xff000000),
                                      /* offset: Offset(
                                                                                      1.0,
                                                                                      1.0), */
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  elevation: 0,
                                  side: const BorderSide(
                                      width: 0.5, color: primaryColorOfApp),
                                  minimumSize: const Size(80, 30),
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 40.0, vertical: 20.0),
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onPressed: () {},
                              child: const Text(
                                'follow',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: primaryColorOfApp, width: 0.5),
                          borderRadius: BorderRadius.circular(8),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: primaryColorOfApp, width: 0.5),
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Iconify(
                                    Bi.qr_code,
                                    size: 140,
                                  ),
                                  Text(
                                    '@Nanncyjain23',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Row(
                        children: const [
                          Text(
                            'LOGIN:',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 15),
                          ),
                          Text(
                            'https://myttube.com',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.download,
                                color: primaryColorOfApp,
                              ),
                              Text('download QR code')
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset(
                                'assets/shareicon.svg',
                                height: 18,
                                width: 18,
                                color: primaryColorOfApp,
                              ),
                              const Text('share QR code')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.2,
                    )
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

reportProfile(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          border: Border.all(
                              width: 0.5, color: const Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 100,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: Color(0xff0087FF)),
                        ),
                        Iconify(
                          Bi.patch_check,
                          size: 15,
                          color: primaryColorOfApp,
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'report this profile ',
                          style: buildTextDesign(null, null, FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: SvgPicture.asset(
                            'assets/blockicon.svg',
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'what do you want to do?',
                          style: buildTextDesign(11.0, null, null),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'harassment message',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Report Post, Message, Comments',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Copyrights',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'intellectual property defamation',
                          style: buildTextDesign(10.0, null, null),
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
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                        },
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                            backgroundColor: primaryColorOfApp,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Text(
                          "report",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              /*  fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    )
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

blockProfile(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
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
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          border: Border.all(
                              width: 0.5, color: const Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 100,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: Color(0xff0087FF)),
                        ),
                        Iconify(
                          Bi.patch_check,
                          size: 15,
                          color: primaryColorOfApp,
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'are you sure block this profile?',
                          style: buildTextDesign(null, null, FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: SvgPicture.asset(
                            'assets/blockicon.svg',
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'why you blocking this profile?',
                          style: buildTextDesign(11.0, null, null),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'harassment message',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'hateful speech',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'adult content',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'fake account',
                          style: buildTextDesign(10.0, null, null),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(120, 37),
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                              backgroundColor: primaryColorOfApp,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Text(
                            "Block",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                /*  fontSize: 18, */
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                          },
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Text(
                            "Block & report",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: primaryColorOfApp,
                                /*  fontSize: 18, */
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
                    )
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}
