// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/ONBOARDING/slider.dart';
import 'package:flutter_application_1/homepage/ads.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/permissionset.dart';
import 'package:flutter_application_1/homepage/self_profile.dart';
import 'package:flutter_application_1/homepage/verification1.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
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
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:iconify_flutter/icons/tabler.dart';

import 'package:image_picker/image_picker.dart';

class ProfileSelf extends StatefulWidget {
   ProfileSelf({super.key});

  @override
  State<ProfileSelf> createState() => _ProfileSelfState();

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';
  var sourceLocation = const LatLng(19.0715252, 72.8692906);
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
                          border:
                              Border.all(width: 0.5, color: const Color(0xffe2e2e2)),
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
                      // height: 50,
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
                      Row(
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
                            MaterialPageRoute(builder: (context) => const Ads()),
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
                                                          color:
                                                              const Color(0xffE2E2E2),
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
                                                            const EdgeInsets.all(0),
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
    size = MediaQuery.of(context).size;
    height = size.height;
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
                        children: const [
                          Text(
                            '@profile.user-id',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Iconify(
                            Bi.patch_check,
                            color: primaryColorOfApp,
                            size: 15,
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Profie Name ',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          )
                        ],
                      ),
                      const Divider(),
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
                        onTap: () {},
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
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 7),
                          ),
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

class _ProfileSelfState extends State<ProfileSelf> {
  final GetImage getkar = Get.put(GetImage());

  buildeditmainpage(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
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
                        const Text(
                          'Edit profile',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GetBuilder<GetImage>(builder: (controller) {
                              return Container(
                                child: getkar.image != null
                                    ? CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.blue,
                                        child: CircleAvatar(
                                          radius: 23,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 21,
                                            backgroundColor:
                                                Colors.grey.shade800,
                                            backgroundImage:
                                                FileImage(getkar.image!),
                                          ),
                                        ),
                                      )
                                    // Image. file
                                    : const Icon(
                                        Icons.account_circle,
                                        size: 50,
                                        color: Color(0xffc4c4c4),
                                      ),
                              );
                            }),
                            SizedBox(
                              height: 18,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                      onPressed: () {
                                        print('rashid');
                                        /*   getkar.pickforprofile(
                                            ImageSource.gallery); */
                                        buildbutton(context);
                                      },
                                      child: btnchng
                                          ? Text(
                                              'upload profile image',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.04,
                                                  color:
                                                      const Color(0xff0087FF)),
                                            )
                                          : Text(
                                              'change profile image',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: width * 0.04,
                                                  color:
                                                      const Color(0xff0087FF)),
                                            ))
                                ],
                              ),
                            ),
                          ],
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
                                        enabled: username,
                                        decoration: InputDecoration(
                                          labelText: username ? '' : '',
                                          suffixIcon: const Icon(Icons.check_circle),
                                          border: InputBorder.none,
                                        )),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            width: 70,
                            height: 10,
                            child: Container(
                              /*   width: 200,
                  height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Your Username',
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
                      height: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          cancel
                              ? TextButton(
                                  style: TextButton.styleFrom(
                                      /* minimumSize: Size(100, 5), */
                                      elevation: 0,
                                      visualDensity:
                                          const VisualDensity(vertical: -4),
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  onPressed: () {
                                    setState(() {
                                      username = false;
                                      cancel = false;
                                    });
                                  },
                                  child: const Text('cancel?',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: primaryColorOfApp,
                                          fontSize: 10)),
                                )
                              : TextButton(
                                  style: TextButton.styleFrom(
                                      /* minimumSize: Size(100, 5), */
                                      elevation: 0,
                                      visualDensity:
                                          const VisualDensity(vertical: -4),
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  onPressed: () {
                                    setState(() {
                                      username = true;
                                      cancel = true;
                                    });
                                  },
                                  child: const Text('Change?',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: primaryColorOfApp,
                                          fontSize: 10)),
                                ),
                        ],
                      ),
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
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 210,
                                          child: TextFormField(
                                              enabled: fullname,
                                              decoration: const InputDecoration(
                                                labelText: '',
                                                border: InputBorder.none,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Container(
                                            child: full1
                                                ? IconButton(
                                                    padding: const EdgeInsets.all(0),
                                                    constraints:
                                                        const BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = false;
                                                        full1 = false;
                                                      });
                                                    },
                                                    icon: const Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    ))
                                                : IconButton(
                                                    padding: const EdgeInsets.all(0),
                                                    constraints:
                                                        const BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = true;
                                                        full1 = true;
                                                      });
                                                    },
                                                    icon: const Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            width: 70,
                            height: 10,
                            child: Container(
                              color: Colors.white,
                              child: const Text(
                                'Your Full Name',
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
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 210,
                                          child: TextFormField(
                                              enabled: bio,
                                              decoration: const InputDecoration(
                                                labelText: '',
                                                border: InputBorder.none,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Container(
                                            child: bio1
                                                ? IconButton(
                                                    padding: const EdgeInsets.all(0),
                                                    constraints:
                                                        const BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = false;
                                                        bio1 = false;
                                                      });
                                                    },
                                                    icon: const Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    ))
                                                : IconButton(
                                                    padding: const EdgeInsets.all(0),
                                                    constraints:
                                                        const BoxConstraints(),
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = true;
                                                        bio1 = true;
                                                      });
                                                    },
                                                    icon: const Iconify(
                                                      Bx.edit,
                                                      color: Color(0xff737373),
                                                    )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            width: 15,
                            height: 10,
                            child: Container(
                              color: Colors.white,
                              child: const Text(
                                'Bio',
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
                    const SizedBox(
                      height: 10,
                    ),
                    GetBuilder<GetImage>(builder: (controller) {
                      return Container(
                        child: getkar.image1 != null
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.black, width: 0.1),
                                ),
                                height: 70,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.file(
                                    getkar.image1!,
                                    fit: BoxFit.cover,
                                  ),
                                ))
                            // Image. file
                            : Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                height: 70,
                                width: double.infinity,
                                child: const Icon(
                                  Icons.photo,
                                  size: 50,
                                  color: Color(0xffc4c4c4),
                                )),
                      );
                    }),
                    SizedBox(
                      height: 19,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
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
                                      return Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  height: height * 0.01,
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Container(
                                                    color:
                                                        const Color(0xffE2E2E2),
                                                    height: 5,
                                                    width: 80,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.02,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                          padding:
                                                              const EdgeInsets.all(0),
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
                                                        width: width * 0.04,
                                                      ),
                                                      const Text(
                                                        'Cover Photo',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff333333),
                                                            fontSize: 15,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Divider(),
                                                GetBuilder<GetImage>(
                                                    builder: (controller) {
                                                  return Container(
                                                    child: getkar.image1 != null
                                                        ? Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 0.1),
                                                            ),
                                                            height: 70,
                                                            width:
                                                                double.infinity,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              child: Image.file(
                                                                getkar.image1!,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ))
                                                        // Image. file
                                                        : Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 0.5),
                                                            ),
                                                            height: 70,
                                                            width:
                                                                double.infinity,
                                                            child: const Icon(
                                                              Icons.photo,
                                                              size: 50,
                                                              color: Color(
                                                                  0xffc4c4c4),
                                                            )),
                                                  );
                                                }),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    TextButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              shape:
                                                                  const RoundedRectangleBorder(
                                                                // <-- SEE HERE
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .vertical(
                                                                  top: Radius
                                                                      .circular(
                                                                          20.0),
                                                                ),
                                                              ),
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return StatefulBuilder(
                                                                    builder:
                                                                        (context,
                                                                            setState) {
                                                                  return Stack(
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.04,
                                                                          ),
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const [
                                                                              Text(
                                                                                'Are You Sure Remove This Photo?',
                                                                                style: TextStyle(color: Color(0xff333333), fontSize: 15, fontFamily: 'Poppins'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.04,
                                                                          ),
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: const Text(
                                                                                  'Cancel',
                                                                                  style: TextStyle(color: customTextColor, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () {
                                                                                  getkar.removeImagebanner();
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: Row(
                                                                                  children: const [
                                                                                    Icon(
                                                                                      Icons.delete,
                                                                                      color: Color(0xffED1B24),
                                                                                      size: 13,
                                                                                    ),
                                                                                    Text(
                                                                                      'Remove',
                                                                                      style: TextStyle(color: Color(0xffED1B24), fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.04,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Positioned.fill(
                                                                          top: -36,
                                                                          child: Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child:
                                                                                InkWell(
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
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 5.0),
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
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                                const Divider(),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: const [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 50.0),
                                                      child: Text(
                                                        'Change Your Cover Photo',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff333333),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        RawMaterialButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(
                                                                  minHeight: 45,
                                                                  minWidth: 45),
                                                          onPressed: () {
                                                            getkar.pickforbanner(
                                                                ImageSource
                                                                    .camera);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            setState(() {
                                                              btnchng = false;
                                                            });
                                                          },
                                                          elevation: 0,
                                                          fillColor:
                                                              const Color(0xffDADADA),
                                                          /*  padding: EdgeInsets.all(15.0), */
                                                          shape: const CircleBorder(
                                                              /* side: BorderSide(
                                                            width: 1,
                                                            color: Color(0xff0087FF)) */
                                                              ),
                                                          child: const Iconify(
                                                            AntDesign
                                                                .camera_filled,
                                                            color: Color(
                                                                0xff0087FF),
                                                            size: 25,
                                                          ),
                                                        ),
                                                        const Text(
                                                          'camera',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xff333333)),
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        RawMaterialButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(
                                                                  minHeight: 45,
                                                                  minWidth: 45),
                                                          onPressed: () {
                                                            getkar.pickforbanner(
                                                                ImageSource
                                                                    .gallery);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            setState(() {
                                                              btnchng = false;
                                                            });
                                                          },
                                                          elevation: 0,
                                                          fillColor:
                                                              const Color(0xffDADADA),
                                                          /*  padding: EdgeInsets.all(15.0), */
                                                          shape: const CircleBorder(
                                                              /* side: BorderSide(
                                                            width: 1,
                                                            color: Color(0xff0087FF)) */
                                                              ),
                                                          child: const Iconify(
                                                            Heroicons
                                                                .photo_20_solid,
                                                            color: Color(
                                                                0xff0087FF),
                                                            size: 25,
                                                          ),
                                                        ),
                                                        const Text(
                                                          'gallery',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xff333333)),
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
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      shape: BoxShape.circle,
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
                              },
                              child: btnchng
                                  ? Text(
                                      'upload banner',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.04,
                                          color: const Color(0xff0087FF)),
                                    )
                                  : Text(
                                      'change banner',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.04,
                                          color: const Color(0xff0087FF)),
                                    ))
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
                      height: 20,
                      /*             color: Colors.red, */
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                /*     foregroundColor: const Color(0xff0087FF), */
                              ),
                              onPressed: () {
                                widget.buildaddresspage(context);
                              },
                              child: const Text(
                                'Add/Change Address',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: primaryColorOfApp,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangeInterest()),
                          );
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
                          "Change Interest",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: customTextColor,
                              /*  fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      /*    color: Colors.yellow, */
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Auto Play (scrolling)",
                            style: TextStyle(
                                color: const Color(0xff515253),
                                fontFamily: 'Poppins',
                                fontSize: width * 0.03),
                          ),
                          Switch.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: primaryColorOfApp,
                              value: valueofswitch,
                              onChanged: (valueofswitch) {
                                setState(() {
                                  this.valueofswitch = valueofswitch;
                                });
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      height: 15,
                      /*              color: Colors.green, */
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location always",
                            style: TextStyle(
                                color: const Color(0xff515253),
                                fontFamily: 'Poppins',
                                fontSize: width * 0.03),
                          ),
                          Switch.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: primaryColorOfApp,
                              value: valueofswitch,
                              onChanged: (valueofswitch) {
                                setState(() {
                                  this.valueofswitch = valueofswitch;
                                });
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Go to my',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(100, 0),
                                elevation: 0,
                                /*       visualDensity: VisualDensity(vertical: -4), */
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {
                              /*               Navigator.of(context).pop(); */
                              ProfileSelf().buildpersonalsetting(context);
                            },
                            child: const Text('Personal Information Settings',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 13)),
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
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(140, 35),
                              /*    minimumSize: Size(32, 30), */
                              elevation: 0,
                              /* padding: EdgeInsets.zero, */
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(
                                color: Color(0xff0087FF),
                              ),
                              /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 12,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(135, 35),
                              /*  minimumSize: Size(32, 30), */
                              elevation: 0,
                              /* padding: EdgeInsets.zero, */
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                              /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                              backgroundColor: primaryColorOfApp,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ]),
                ),
                Positioned.fill(
                    left: 12,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            getkar
                                                                .removeImage();
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
                                                                    fontSize:
                                                                        13,
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
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets
                                                                    .all(4.0),
                                                            child: Icon(
                                                              Icons.close,
                                                              color:
                                                                  Colors.white,
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
                              constraints:
                                  const BoxConstraints(minHeight: 45, minWidth: 45),
                              onPressed: () {
                                getkar.pickforprofile(ImageSource.camera);
                                Navigator.of(context).pop();
                                setState(() {
                                });
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
                              constraints:
                                  const BoxConstraints(minHeight: 45, minWidth: 45),
                              onPressed: () {
                                getkar.pickforprofile(ImageSource.gallery);
                                Navigator.of(context).pop();
                                setState(() {
                                });
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

  var images = [
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];
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
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/vintage-victorian-style-engraving-set-original-from-british-library-digitally-enhanced-by-rawpixel_53876-165338.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/easter-bird-design-element-cute-watercolor-illustration_53876-104101.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/flower-robot-environment-cute-concept_53876-31814.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/fun-dog-3d-illustration_183364-81022.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
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

  final bottom = 60.0;
  final top = 70.0;
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
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                Container(
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
                              child: const Icon(
                                Icons.photo,
                                color: Color(0xffc4c4c4),
                                size: 40,
                              )),
                    );
                  }),
                ),
                Positioned(
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
                    )),
                Positioned(
                  top: top,
                  child: Row(
                    /*     crossAxisAlignment: CrossAxisAlignment.center, */
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width * 0.017,
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          GetBuilder<GetImage>(builder: (controller) {
                            return Container(
                              child: getkar.image != null
                                  ? CircleAvatar(
                                      radius: 50,
                                      backgroundColor: primaryColorOfApp,
                                      child: CircleAvatar(
                                          radius: 47,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 45,
                                            backgroundColor:
                                                Colors.grey.shade800,
                                            backgroundImage:
                                                FileImage(getkar.image!),
                                          )),
                                    )
                                  // Image. file
                                  : const CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Color(0xffc4c4c4),
                                      child: CircleAvatar(
                                        radius: 47,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.account_circle,
                                          size: 95,
                                          color: Color(0xffc4c4c4),
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
                              icon: const FaIcon(
                                FontAwesomeIcons.penToSquare,
                                size: 15,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(32, 30),
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
                            const Text(
                              "12.5M",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.001,
                            ),
                            const Text(
                              "Followers",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(32, 30),
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
                            const Text(
                              "200",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.001,
                            ),
                            const Text(
                              "Following",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 5,
                        child: Container(
                            height: 30,
                            width: 31,
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
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 140,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 150,
                            /*    color: Colors.red, */
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Nanncy Jain',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '@Nanncyjain23',
                                      style: TextStyle(
                                          fontSize: 10,
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
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              const Iconify(
                                MaterialSymbols.star_rounded,
                                color: Color(0xff08A434),
                                size: 20,
                              ),
                              const Text(
                                '4.8',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const Text(
                    'Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..',
                    style: TextStyle(
                        color: Color(0xff03194B),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'https://youtu.be/AgS_6UbQ8JM',
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontSize: 10,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Text(
                        'https://google.com ',
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontSize: 10,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
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
                            minimumSize: const Size(90, 35),
                            /*    minimumSize: Size(32, 30), */
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            /*  padding:
                        EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Interaction",
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangeInterest()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(90, 35),
                            /*  minimumSize: Size(32, 30), */
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            /*   padding:
                        EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Chat-Box",
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          buildeditmainpage(context);
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(90, 35),
                            elevation: 5,
                            /* padding: EdgeInsets.zero, */
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: const BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            /* padding:
                        EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          /*   minimumSize: Size(32, 30), */
                          elevation: 5,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          side: const BorderSide(
                            color: Color(0xff0087FF),
                          ),
                          /*       padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                          "Go to Dashboard",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 10,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Material(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    /*  boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)),
                    ], */
                    color: const Color(0xffE2E2E2),
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.zero,
                    labelColor: const Color(0xff0087FF),
                    unselectedLabelColor: const Color(0xff333333),
                    tabs: [
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.photo,
                              size: 10,
                            ),
                            Text(
                              'Photo',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_arrow,
                              size: 10,
                            ),
                            Text(
                              'Videos',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.restore,
                              size: 10,
                            ),
                            Text(
                              'Story',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.account_circle,
                              size: 10,
                            ),
                            Text(
                              'Tagged',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: customTextColor),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xffc4c4c4),
                                    size: 40,
                                  )),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                'Add',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: primaryColorOfApp),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  images[index],
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
              /* padding: const EdgeInsets.only(left: 20), */
              height: 300,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Container(
                            /*       width: 200, */
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(photos[i]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 200,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
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
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    const BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
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
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    const BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
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
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    const BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*   pickImage(ImageSource.camera);
                                  Navigator.of(context).pop();
                                  setState(() {
                                    btnchng = false;
                                  }); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
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
