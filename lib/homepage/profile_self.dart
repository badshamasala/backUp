// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_application_1/homepage/ads.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/edit_profile_page.dart';
import 'package:flutter_application_1/homepage/monetize_check.dart';
import 'package:flutter_application_1/homepage/permissionset.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:flutter_application_1/homepage/self_profile.dart';
import 'package:flutter_application_1/homepage/verification1.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';

import 'package:flutter_application_1/interaction.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:iconify_flutter/icons/tabler.dart';

import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class ProfileSelf extends StatefulWidget {
  ProfileSelf({super.key});

  @override
  State<ProfileSelf> createState() => _ProfileSelfState();

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';
  var sourceLocation = const LatLng(19.0715252, 72.8692906);
  var settingList = [
    {"icon": 'assets/settingicon.svg', "label": "Setting"},
    {"icon": 'assets/profileactivityicon.svg', "label": "Profile Activity"},
    {"icon": 'assets/digitalicon.svg', "label": "Digital Collection"},
    {"icon": 'assets/historyicon.svg', "label": "History"},
    {"icon": 'assets/settingicon.svg', "label": "Archive"},
    {"icon": 'assets/settingicon.svg', "label": "Saved"},
    
    {"icon": 'assets/hearticon.svg', "label": "Favourites Profile"},
    {"icon": 'assets/friendicon.svg', "label": "Friends"},
    {"icon": 'assets/settingicon.svg', "label": "QR Code"},
    {"icon": 'assets/settingicon.svg', "label": "Discover"},
    {"icon": 'assets/settingicon.svg', "label": "Share"},
  ];
  buildaddresspage(context) {
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
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffe2e2e2),
                          border: Border.all(
                              width: 0.5, color: const Color(0xffe2e2e2)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 100,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        const Text(
                          'add your address/location',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                        height: 40,
                        child: TextFormField(
                            decoration: InputDecoration(
                          /*   errorText: validationService.fullName.error, */
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffdadada),
                          ),
                          labelText: 'Search Location',
                          labelStyle: const TextStyle(
                              color: Color(0xffc4c4c4),
                              fontFamily: 'Poppins',
                              fontSize: 12),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color(0xff333333), width: 0.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Color(0xff0087FF), width: 0.5)),
                          hintStyle: const TextStyle(fontSize: 10),
                          contentPadding: const EdgeInsets.all(15),
                        ))),
                    SizedBox(
                      height: height * 0.02,
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
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(5)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      labelText: '',
                                      /*                     suffixIcon: Icon(Icons.check_circle), */
                                      border: InputBorder.none,
                                    )),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            width: 90,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Enter Street/Village',
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
                    SizedBox(
                      height: height * 0.02,
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
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(5)),
                              /*  width: 150,
                  height: 150, */
                              /*  color: Colors.green[300], */
                              child: SizedBox(
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, bottom: 3),
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      labelText: '',
                                      /*                     suffixIcon: Icon(Icons.check_circle), */
                                      border: InputBorder.none,
                                    )),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            width: 100,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Enter Road/Landmark',
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
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select city',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select state',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.5),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'select city',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Color(0xffC4C4C4)),
                                  ),
                                ),
                                /*  isExpanded: true, */
                                value: value,
                                items: items
                                    .map((item) => DropdownMenuItem(
                                        value: item, child: Text(item)))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value = value as String?;
                                  });
                                }),
                          ),
                        ),
                        SizedBox(
                            width: 140,
                            height: 30,
                            child: TextFormField(
                                decoration:
                                    WidgetProfilePage().buildInputdecoration(
                              null,
                              'Pin Code',
                              null,
                              'Pin Code',
                            ))),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 0.5, color: const Color(0xff515253)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: sourceLocation, zoom: 14.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 6.h,
                      child: ElevatedButton(
                        onPressed: () {
                          /*   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GooglePage1()),
                        ); */
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            /*     minimumSize: const Size(0.0, 40), */
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 40.0, vertical: 20.0),
                            backgroundColor: const Color(0xff0087FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ]),
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
                          /*   width: 45,
                                  height: 45, */
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

  buildsettingpage(context) {
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
                                color: const Color(0xffE2E2E2),
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
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Settings',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const Divider(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelfProfile()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setprofile.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Profile',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          /*     popmethod(); */
                          WidgetNotification().buildnotificationpage(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setnotification.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Notifications',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MonetizeCheck()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setfolo.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Monetize',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          permissionmethod(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setpermision.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Permission set',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          selectlanguagemethod(context);
                          /*       Slider1().selectlanguagemethod(context); */
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setlang.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'language',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setchat2.svg',
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Chat-box (message)',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          const Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Ads()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.campaign_outlined,
                                  size: 17,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Ads',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Verification1()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Iconify(Bi.patch_check, size: 15),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '@Verification',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                                const Iconify(
                                  Bi.patch_check,
                                  size: 10,
                                  color: primaryColorOfApp,
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
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
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffE2E2E2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
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
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        constraints:
                                                            const BoxConstraints(),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        icon: const Icon(
                                                          Icons.arrow_back,
                                                          color:
                                                              primaryColorOfApp,
                                                        )),
                                                    SizedBox(
                                                      width: width * 0.01,
                                                    ),
                                                    const Text(
                                                      'Privacy',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              customTextColor),
                                                    ),
                                                  ],
                                                ),
                                                const Divider(),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                            'assets/setprofile.svg',
                                                            height: 18,
                                                            width: 18),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text('Private Profile',
                                                            style:
                                                                buildtextstyle()),
                                                      ],
                                                    ),
                                                    Switch.adaptive(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        activeColor:
                                                            primaryColorOfApp,
                                                        value: valueofswitch,
                                                        onChanged:
                                                            (valueofswitch) {
                                                          setState(() {
                                                            this.valueofswitch =
                                                                valueofswitch;
                                                          });
                                                        })
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildActivityStatus(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/profileactivityicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Activity Status',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildShowRewardpoint(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/digitalicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Show Reward Points',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildGroups(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/privacygroup.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Groups ',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildComments(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/commenticon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Comments',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildPostPhotoVideo(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/privacypost.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Post-Photo & Video',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildStory(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/historyicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Story',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildLivePrivacy(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/liveicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Live',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                          const Iconify(
                                                            Bi.patch_check,
                                                            size: 10,
                                                            color:
                                                                primaryColorOfApp,
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildChatBoxPrivacy(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/setchat2.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Chat-Box',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildMention(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/@.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Mension ',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildTag(context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/tagicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Tag',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    WidgetProfilePage()
                                                        .buildSendmeGift(
                                                            context);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Iconify(
                                                              EmojioneMonotone
                                                                  .wrapped_gift,
                                                              size: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Send me GIFT',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                /*     Divider(), */
                                                InkWell(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                        /* isScrollControlled: true, */
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          // <-- SEE HERE
                                                          borderRadius:
                                                              BorderRadius
                                                                  .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return StatefulBuilder(
                                                              builder: (BuildContext
                                                                      context,
                                                                  StateSetter
                                                                      setState) {
                                                            return Stack(
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          15.0),
                                                                  child: Column(
                                                                      /* mainAxisSize: MainAxisSize.min, */
                                                                      children: [
                                                                        SizedBox(
                                                                          height:
                                                                              height * 0.03,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            IconButton(
                                                                                padding: const EdgeInsets.all(0),
                                                                                constraints: const BoxConstraints(),
                                                                                onPressed: () {
                                                                                  Navigator.of(context).pop();
                                                                                },
                                                                                icon: const Icon(
                                                                                  Icons.arrow_back,
                                                                                  color: primaryColorOfApp,
                                                                                )),
                                                                            SizedBox(
                                                                              width: width * 0.01,
                                                                            ),
                                                                            const Text(
                                                                              'Block Profile List',
                                                                              style: TextStyle(fontFamily: 'Poppins', color: customTextColor, fontSize: 15),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const Divider(),
                                                                        TextFormField(
                                                                            decoration: InputDecoration(
                                                                                isDense: true, // Added this
                                                                                contentPadding: const EdgeInsets.all(8),
                                                                                labelText: 'Search profile Name',
                                                                                labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 10),
                                                                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
                                                                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
                                                                                /*    prefixIcon: Icon(Icons.search), */
                                                                                hintText: 'Searh Username')),
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
                                                                                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
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
                                                                                        side: const BorderSide(color: primaryColorOfApp, width: 1),
                                                                                        elevation: 0,
                                                                                        minimumSize: const Size(80, 30),
                                                                                        // padding: EdgeInsets.symmetric(
                                                                                        //     horizontal: 40.0, vertical: 20.0),
                                                                                        backgroundColor: Colors.white,
                                                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                    onPressed: () {
                                                                                      showModalBottomSheet(
                                                                                        /* isScrollControlled: true, */
                                                                                        shape: const RoundedRectangleBorder(
                                                                                          // <-- SEE HERE
                                                                                          borderRadius: BorderRadius.vertical(
                                                                                            top: Radius.circular(20.0),
                                                                                          ),
                                                                                        ),
                                                                                        context: context,
                                                                                        builder: (BuildContext context) {
                                                                                          return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                                                                            return Stack(
                                                                                              clipBehavior: Clip.none,
                                                                                              children: [
                                                                                                Padding(
                                                                                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                                                                    child: Column(
                                                                                                        /* mainAxisSize: MainAxisSize.min, */
                                                                                                        children: [
                                                                                                          SizedBox(
                                                                                                            height: height * 0.03,
                                                                                                          ),
                                                                                                          Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                            children: [
                                                                                                              SvgPicture.asset(
                                                                                                                'assets/blockicon.svg',
                                                                                                                height: 18,
                                                                                                                width: 18,
                                                                                                                color: Colors.green,
                                                                                                              ),
                                                                                                              const Text('Unblock this profile?')
                                                                                                            ],
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
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: const Text(
                                                                                      'Unblock',
                                                                                      style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp, fontSize: 10),
                                                                                    )),
                                                                              );
                                                                            }))
                                                                      ]),
                                                                ),
                                                                Positioned.fill(
                                                                    top: -36,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          /*   width: 45,
                                  height: 45, */
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            border:
                                                                                Border.all(color: Colors.white, width: 2),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Icon(
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
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/blockicon.svg',
                                                              height: 18,
                                                              width: 18),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            'Block Profile List',
                                                            style:
                                                                buildtextstyle(),
                                                          ),
                                                        ],
                                                      ),
                                                      const Iconify(
                                                        Eva.arrow_right_fill,
                                                        size: 15,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.05,
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
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2),
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
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setprivacy.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Privacy',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          buildsecurity(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/setsecurity.svg',
                                  height: 18,
                                  width: 18,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Security',
                                  style: ProfileSelf().buildtextstyle(),
                                ),
                              ],
                            ),
                            const Iconify(
                              Eva.arrow_right_fill,
                              size: 15,
                              color: Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/setabout.svg',
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'About',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          const Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/sethelp.svg',
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Help',
                                style: ProfileSelf().buildtextstyle(),
                              ),
                            ],
                          ),
                          const Iconify(
                            Eva.arrow_right_fill,
                            size: 15,
                            color: Color(0xff333333),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
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
                              const SizedBox(
                                width: 10,
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
                      SizedBox(
                        height: height * 0.03,
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

  buildtextstyle() {
    return const TextStyle(
        color: customTextColor, fontFamily: 'Poppins', fontSize: 11);
  }

  popmethod(context) {
    return Navigator.of(context).pop();
  }

  buildpersonalsetting(context) {
    Size size;
    double height;
    double width;
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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffE2E2E2),
                              borderRadius: BorderRadius.circular(8)),
                          height: 0.5.h,
                          width: 30.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
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
                    ),
                    const Divider(),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(children: [
                          ListView.separated(
                            shrinkWrap: true,
                            itemCount: settingList.length,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 1.h,
                              );
                            },
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: 40,
                                child: InkWell(
                                  onTap: () {
                                    if (index == 0) {
                                      ProfileSelf().buildsettingpage(context);
                                    } else if (index == 1) {
                                      Get.to(ProfileAcitvity());
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      SvgPicture
                                            .asset(
                                          settingList[index]["icon"].toString(),
                                          height: 15,
                                          width: 15,
                                          fit: BoxFit.cover,
                                        ),
                                         Text(
                                            settingList[index]["label"].toString())
                                      
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          InkWell(
                            onTap: () {
                              /*  Navigator.of(context).pop(); */
                              ProfileSelf().buildsettingpage(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/settingicon.svg',
                                      height: 15,
                                      width: 15,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Text(
                                      'Settings',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ],
                                ),
                                const Iconify(
                                  Eva.arrow_right_fill,
                                  size: 15,
                                  color: Color(0xff333333),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileAcitvity()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/profileactivityicon.svg',
                                      height: 15,
                                      width: 15,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Text(
                                      'Profile Activity',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ],
                                ),
                                const Iconify(
                                  Eva.arrow_right_fill,
                                  size: 15,
                                  color: customTextColor,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/digitalicon.svg',
                                      height: 15,
                                      width: 15,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Digital Collections',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 12),
                                    ),
                                  ],
                                ),
                                const Iconify(
                                  Eva.arrow_right_fill,
                                  size: 15,
                                  color: Color(0xff333333),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/historyicon.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    'History',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Iconify(Ion.archive, size: 15),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Archive',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Iconify(Bi.bookmark_star, size: 15),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Saved',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/hearticon.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  const Text(
                                    'Favorites Profile',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/friendicon.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  const Text(
                                    'Friends',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Iconify(Bi.qr_code_scan, size: 15),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'QR Code',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/discovericon1.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    'Discover',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/settingshare.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Share ',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                ],
                              ),
                              const Iconify(
                                Eva.arrow_right_fill,
                                size: 15,
                                color: Color(0xff333333),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
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
                            height: height * 0.03,
                          ),
                        ])),
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
                          /*   width: 45,
                                  height: 45, */
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

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;

  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;
  /* */
}

final GetImage getkar = Get.put(GetImage());
buildbutton(context) {
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
        return StatefulBuilder(builder: (context, setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: const Color(0xffE2E2E2),
                      height: 5,
                      width: 70,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        const Text(
                          'Profile Photo',
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 15,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GetBuilder<GetImage>(builder: (controller) {
                        return Container(
                          child: getkar.image != null
                              ? CircleAvatar(
                                  radius: 39,
                                  backgroundColor: primaryColorOfApp,
                                  child: CircleAvatar(
                                      radius: 37,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.grey.shade800,
                                        backgroundImage:
                                            FileImage(getkar.image!),
                                      )),
                                )
                              // Image. file
                              : const CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Color(0xffc4c4c4),
                                  child: CircleAvatar(
                                      radius: 32,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.account_circle,
                                        size: 64,
                                        color: Color(0xffc4c4c4),
                                      )),
                                ),
                        );
                      }),
                      SizedBox(
                        height: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
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
                                        return StatefulBuilder(
                                            builder: (context, setState) {
                                          return Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Text(
                                                        'Are You Sure Remove This Photo?',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff333333),
                                                            fontSize: 15,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              color:
                                                                  customTextColor,
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          getkar.removeImage();
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Row(
                                                          children: const [
                                                            Icon(
                                                              Icons.delete,
                                                              color: Color(
                                                                  0xffED1B24),
                                                              size: 13,
                                                            ),
                                                            Text(
                                                              'Remove',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xffED1B24),
                                                                  fontSize: 13,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                ],
                                              ),
                                              Positioned.fill(
                                                  top: -36,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        /*   width: 45,
                                    height: 45, */
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 2),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
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
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.delete,
                                        color: Color(0xffED1B24),
                                        size: 13,
                                      ),
                                      Text(
                                        'Remove',
                                        style: TextStyle(
                                            color: Color(0xffED1B24),
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 60.0),
                        child: Text(
                          'Change Your Profile Photo',
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          RawMaterialButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                                minHeight: 45, minWidth: 45),
                            onPressed: () {
                              getkar.pickforprofile(ImageSource.camera);
                              Navigator.of(context).pop();
                              setState(() {});
                            },
                            elevation: 0,
                            fillColor: const Color(0xffDADADA),
                            shape: const CircleBorder(
                                /* side: BorderSide(
                                                                width: 1,
                                                                color: Color(0xff0087FF)) */
                                ),
                            child: const Iconify(
                              AntDesign.camera_filled,
                              color: Color(0xff0087FF),
                              size: 25,
                            ),
                          ),
                          const Text(
                            'camera',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          RawMaterialButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(
                                minHeight: 45, minWidth: 45),
                            onPressed: () {
                              getkar.pickforprofile(ImageSource.gallery);
                              Navigator.of(context).pop();
                              setState(() {});
                            },
                            elevation: 0,
                            fillColor: const Color(0xffDADADA),
                            /*  padding: EdgeInsets.all(15.0), */
                            shape: const CircleBorder(
                                /* side: BorderSide(
                                                                width: 1,
                                                                color: Color(0xff0087FF)) */
                                ),
                            child: const Iconify(
                              Heroicons.photo_20_solid,
                              color: Color(0xff0087FF),
                              size: 25,
                            ),
                          ),
                          const Text(
                            'gallery',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff333333)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
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
                        /*   width: 45,
                                    height: 45, */
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

class _ProfileSelfState extends State<ProfileSelf> {
  final GetImage getkar = Get.put(GetImage());

  var names = [
    "Rashid",
    "farhan",
    "hamza",
    "aquib",
    "shiraj",
    "pravin",
    "sufiya",
    "sadaf",
    "tahera",
  ];
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;

  var photos = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;

  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  bool select = true;
  bool birth = true;

  bool btnchng = true;

  var coverheight = 120.0;
  var profile = 100.0;
  /* File? image;
  File? image1;

  Future pickforprofile(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  Future pickforbanner(ImageSource source) async {
    try {
      final image1 = await ImagePicker().pickImage(source: source);
      if (image1 == null) return;
      final imageTemporary = File(image1.path);

      setState(() {
        this.image1 = imageTemporary;
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  } */

  final bottom = 8.h;
  final top = 4.5.h;
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      top: false,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  /*     color: Colors.red, */
                  height: 12.h,
                  margin: EdgeInsets.only(bottom: bottom),
                  child: GetBuilder<GetImage>(builder: (controller) {
                    return Container(
                      child: getkar.image1 != null
                          ? SizedBox(
                              width: double.infinity,
                              height: coverheight,
                              child: Image.file(
                                getkar.image1!,
                                fit: BoxFit.cover,
                              ),
                            )
                          : SizedBox(
                              width: double.infinity,
                              height: coverheight,
                              child: Icon(
                                Icons.photo,
                                color: const Color(0xffc4c4c4),
                                size: 25.sp,
                              )),
                    );
                  }),
                ),
                /*  Positioned(
                    top: 4,
                    child: SizedBox(
                      width: 310,
                      /*     color: Colors.red, */
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  /*   borderRadius: BorderRadius.circular(40), */
                                  border: Border.all(
                                      width: 1, color: primaryColorOfApp)),
                              child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Iconify(
                                    Ooui.bell,
                                    size: 20,
                                    color: iconColor,
                                  ))),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  /*   borderRadius: BorderRadius.circular(40), */
                                  border: Border.all(
                                      width: 1, color: primaryColorOfApp)),
                              child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    'assets/c2c.svg',
                                    width: 18,
                                    height: 18,
                                  ))),
                        ],
                      ),
                    )), */
                Positioned(
                  top: top,
                  child: Row(
                    /*  mainAxisSize: MainAxisSize.max, */
                    /*     crossAxisAlignment: CrossAxisAlignment.center, */
                    /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                    children: [
                      /*  Spacer(), */
                      SizedBox(
                        width: 2.w,
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          GetBuilder<GetImage>(builder: (controller) {
                            return Container(
                              child: getkar.image != null
                                  ? CircleAvatar(
                                      radius: 48.sp,
                                      backgroundColor: primaryColorOfApp,
                                      child: CircleAvatar(
                                          radius: 46.sp,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 44.sp,
                                            backgroundColor:
                                                Colors.grey.shade800,
                                            backgroundImage:
                                                FileImage(getkar.image!),
                                          )),
                                    )
                                  // Image. file
                                  : CircleAvatar(
                                      radius: 48.sp,
                                      backgroundColor: const Color(0xffc4c4c4),
                                      child: CircleAvatar(
                                        radius: 46.sp,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.account_circle,
                                          size: 90.sp,
                                          color: const Color(0xffc4c4c4),
                                        ),
                                      ),
                                    ),
                            );
                          }),
                          IconButton(
                              onPressed: () {
                                print('object');

                                buildbutton(context);

                                /* buildbutton(context); */
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.penToSquare,
                                size: 15.sp,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      /*        Spacer(), */
                      SizedBox(
                        width: 1.w,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(26.w, 4.h),
                            elevation: 5,
                            /*   padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9, vertical: 0),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Row(
                          children: [
                            Text(
                              "12.5M",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontSize: 9.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontSize: 9.sp,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      /*       Spacer(), */
                      SizedBox(
                        width: 1.w,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(26.w, 4.h),
                            elevation: 5,
                            /*   padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9, vertical: 0),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Row(
                          children: [
                            Text(
                              "200",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontSize: 9.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.001,
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontSize: 9.sp,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      /*  Spacer(), */
                      SizedBox(
                        width: 1.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: Material(
                          borderRadius: BorderRadius.circular(5),
                          elevation: 5,
                          child: Container(
                              height: 4.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1, color: primaryColorOfApp),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Iconify(
                                  Tabler.grid_dots,
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 35.w,
                  top: 15.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nanncy Jain',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '@Nanncyjain23',
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp),
                                  ),
                                  /* IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {
                                      showModalBottomSheet(
                                          /*    isScrollControlled: true, */
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
                                                  Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 16.0),
                                                      child: Column(
                                                          /*    mainAxisSize:
                                                              MainAxisSize.min, */
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Iconify(
                                                                  Bi.patch_check,
                                                                  color: const Color(
                                                                      0xff037F26),
                                                                  size: 20.sp,
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: const [
                                                                Text(
                                                                  'Verified',
                                                                  style: TextStyle(
                                                                      color: Color(
                                                                          0xff037F26),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: const [
                                                                Text(
                                                                  'This is a private viewer’s profile,#continue.....content',
                                                                  style: TextStyle(
                                                                      color:
                                                                          customTextColor,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          10),
                                                                ),
                                                              ],
                                                            ),
                                                          ])),
                                                  Positioned.fill(
                                                      top: -36,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            /*   width: 45,
                                height: 45, */
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 2),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                const Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
                                                              child: Icon(
                                                                Icons.close,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              );
                                            });
                                          });
                                    },
                                    icon: Iconify(
                                      Bi.patch_check,
                                      size: 15.sp,
                                      color: primaryColorOfApp,
                                    ),
                                  ), */
                                ],
                              ),
                              /*   SizedBox(
                                width: width * 0.05,
                              ), */
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Iconify(
                            MaterialSymbols.star_rounded,
                            color: const Color(0xff08A434),
                            size: 15.sp,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: Text(
                      'Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..',
                      style: TextStyle(
                          color: const Color(0xff03194B),
                          fontSize: 8.sp,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'https://youtu.be/AgS_6UbQ8JM https://google.com ',
                          style: TextStyle(
                              color: primaryColorOfApp,
                              fontSize: 9.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Interaction1()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(31.w, 4.h),
                            /*    minimumSize: Size(32, 30), */
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: primaryColorOfApp,
                            ),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Interaction",
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const Spacer(),
                      /*   SizedBox(
                        width: width * 0.03,
                      ), */
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangeInterest()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(31.w, 4.h),
                            /*  minimumSize: Size(32, 30), */
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: primaryColorOfApp,
                            ),
                            /*   padding:
                        EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Chat-Box",
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const Spacer(),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditProfilePage()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(31.w, 4.h),
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: primaryColorOfApp,
                            ),
                            /* padding:
                        EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.4.h,
                  ),
                  SizedBox(
                    height: 4.5.h,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          /*   minimumSize: Size(32, 30), */
                          elevation: 5,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          side: const BorderSide(
                            color: primaryColorOfApp,
                          ),
                          /*       padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: Text(
                        "Go to Dashboard",
                        style: TextStyle(
                            color: customTextColor,
                            fontSize: 10.sp,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.4.h,
            ),
            Container(
              height: 5.h,
              decoration: const BoxDecoration(
                color: Color(0xffE2E2E2),
                shape: BoxShape.rectangle,
              ),
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                /*   indicatorPadding: EdgeInsets.zero, */
                labelColor: const Color(0xff0087FF),
                unselectedLabelColor: const Color(0xff333333),
                tabs: [
                  Tab(
                    /*  height: 3.h, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/tabphoto.svg',
                          height: 2.5.h,
                          width: 2.5.w,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Photos',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*    height: , */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/playicon.svg',
                          height: 2.h,
                          width: 2.w,
                          fit: BoxFit.cover,
                          /*   height: 18,
                                                width: 18, */
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Videos',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*  height: 20, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restore,
                          size: 15.sp,
                        ),
                        Text(
                          'Story',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    /*    height: 20, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '@',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mention',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            SizedBox(
              height: 10.4.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 3.w,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: photos.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Column(
                            children: [
                              Container(
                                  /*   padding: const EdgeInsets.all(5), */
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: customTextColor),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xffc4c4c4),
                                      size: 38.sp,
                                    ),
                                  )),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          children: [
                            Container(
                              /*  padding: const EdgeInsets.all(5), */
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: primaryColorOfApp),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 22.sp,
                                  backgroundImage: AssetImage(
                                    photos[index],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              names[index],
                              style: const TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            )
                          ],
                        );
                      }
                    }),
              ),
            ),
            SizedBox(
              height: 33.5.h,
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage(photos[i]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 25.h,
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                    'assets/playicon.svg',
                                    height: 2.h,
                                    width: 2.w,
                                    fit: BoxFit.cover,
                                    /*   height: 18,
                                                  width: 18, */
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SvgPicture.asset(
                                    'assets/playicon.svg',
                                    height: 1.5.h,
                                    width: 2.w,
                                    fit: BoxFit.cover,
                                    /*   height: 18,
                                                  width: 18, */
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 1.w,
                            mainAxisSpacing: 1.w,
                            crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SvgPicture.asset(
                                    'assets/playicon.svg',
                                    height: 1.5.h,
                                    width: 2.w,
                                    fit: BoxFit.cover,
                                    /*   height: 18,
                                                  width: 18, */
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  index3(){
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
                                    return DefaultTabController(
                                      length: 2,
                                      child: StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xffE2E2E2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
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
                                                          icon: const Icon(
                                                            Icons.arrow_back,
                                                            color:
                                                                primaryColorOfApp,
                                                          )),
                                                      SizedBox(
                                                        width: width * 0.01,
                                                      ),
                                                      const Text(
                                                        'Digital Collections',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xff333333),
                                                            /*     fontWeight:
                                                            FontWeight.bold, */
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  SizedBox(
                                                    height: height * 0.03,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffE2E2E2),
                                                        shape:
                                                            BoxShape.rectangle,
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color: const Color(
                                                                0xffE2E2E2)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: const TabBar(
                                                      indicatorWeight: 0.1,
                                                      automaticIndicatorColorAdjustment:
                                                          false,
                                                      /* isScrollable: true, */
                                                      indicatorSize:
                                                          TabBarIndicatorSize
                                                              .label,
                                                      indicatorPadding:
                                                          EdgeInsets.zero,
                                                      labelColor:
                                                          primaryColorOfApp,
                                                      unselectedLabelColor:
                                                          Color(0xff333333),
                                                      tabs: [
                                                        Tab(
                                                          text: 'Received',
                                                        ),
                                                        Tab(
                                                          text: 'Sent',
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 390,
                                                    child: TabBarView(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        16.0),
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.01,
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    showScratchCard(
                                                                        context);
                                                                  },
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          SvgPicture
                                                                              .asset(
                                                                            'assets/awardicon.svg',
                                                                            height:
                                                                                18,
                                                                            width:
                                                                                18,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                width * 0.01,
                                                                          ),
                                                                          RichText(
                                                                            text:
                                                                                const TextSpan(
                                                                              text: 'Rewards from',
                                                                              style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontSize: 10),
                                                                              children: <TextSpan>[
                                                                                TextSpan(
                                                                                    text: 'myttube’s',
                                                                                    style: TextStyle(
                                                                                      color: primaryColorOfApp,
                                                                                      fontFamily: 'Satisfy',
                                                                                    )),
                                                                                TextSpan(text: 'Sponshored partners', style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontSize: 10)),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const Iconify(
                                                                        Eva.arrow_right_fill,
                                                                        size:
                                                                            15,
                                                                        color: Color(
                                                                            0xff333333),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.03,
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    showRecievedGift(
                                                                        context);
                                                                  },
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          SvgPicture
                                                                              .asset(
                                                                            'assets/gifticon1.svg',
                                                                            height:
                                                                                20,
                                                                            width:
                                                                                20,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                width * 0.01,
                                                                          ),
                                                                          const Text(
                                                                            'Received Gift from Fans/Followers',
                                                                            style: TextStyle(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xff333333),
                                                                                /*     fontWeight:
                                                                    FontWeight.bold, */
                                                                                fontSize: 10),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const Iconify(
                                                                        Eva.arrow_right_fill,
                                                                        size:
                                                                            15,
                                                                        color: Color(
                                                                            0xff333333),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.03,
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    showCollectedPoints(
                                                                        context);
                                                                  },
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          SvgPicture
                                                                              .asset(
                                                                            'assets/digitalicon.svg',
                                                                            height:
                                                                                15,
                                                                            width:
                                                                                15,
                                                                            color:
                                                                                primaryColorOfApp,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                width * 0.01,
                                                                          ),
                                                                          RichText(
                                                                            text:
                                                                                const TextSpan(
                                                                              text: 'Collect Points from',
                                                                              style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontSize: 10),
                                                                              children: <TextSpan>[
                                                                                TextSpan(
                                                                                    text: 'myttube’s',
                                                                                    style: TextStyle(
                                                                                      color: primaryColorOfApp,
                                                                                      fontFamily: 'Satisfy',
                                                                                    )),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const Iconify(
                                                                        Eva.arrow_right_fill,
                                                                        size:
                                                                            15,
                                                                        color: Color(
                                                                            0xff333333),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.05,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    const Text(
                                                                      'Invite your friends\n Win surprise gift',
                                                                      style: TextStyle(
                                                                          fontFamily: 'Poppins',
                                                                          color: Color(0xff333333),
                                                                          /*     fontWeight:
                                                                  FontWeight.bold, */
                                                                          fontSize: 10),
                                                                    ),
                                                                    OutlinedButton
                                                                        .icon(
                                                                      icon: SvgPicture
                                                                          .asset(
                                                                        'assets/inviteicon.svg',
                                                                        /*     height: 18,
                                                                width: 18, */
                                                                      ),
                                                                      onPressed:
                                                                          () {},
                                                                      style: OutlinedButton.styleFrom(
                                                                          minimumSize: const Size(140, 35),
                                                                          /*    minimumSize: Size(32, 30), */
                                                                          elevation: 0,
                                                                          /* padding: EdgeInsets.zero, */
                                                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                          side: const BorderSide(
                                                                            color:
                                                                                Color(0xff0087FF),
                                                                          ),
                                                                          /*  padding:
                                  EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                                                          foregroundColor: primaryColorOfApp,
                                                                          backgroundColor: Colors.white,
                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                      label:
                                                                          const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(1.0),
                                                                        child:
                                                                            Text(
                                                                          "Invite",
                                                                          style: TextStyle(
                                                                              fontSize: 12,
                                                                              fontFamily: 'Poppins'),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SvgPicture
                                                                    .asset(
                                                                  'assets/multidigi.svg',
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    'assets/awardicon.svg',
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ]),
                                                  ),
                                                ]),
                                            Positioned.fill(
                                                top: -36,
                                                child: Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      /*   width: 45,
                                        height: 45, */
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsets.all(4.0),
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
                                      }),
                                    );
                                  });
  }

  sizedbox(context) {
    Size size;
    double width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return SizedBox(
      width: width * 0.01,
    );
  }
}
