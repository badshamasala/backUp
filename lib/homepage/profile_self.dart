// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GETX/gettimer.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/NEW_FOLDER/gotodashboard.dart';
import 'package:flutter_application_1/homepage/blkcomntfrom.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/edit_profile_page.dart';
import 'package:flutter_application_1/homepage/monetize_check.dart';
import 'package:flutter_application_1/homepage/setting1.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';
import 'package:flutter_application_1/interaction.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/tabler.dart';

import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:iconify_flutter/icons/mdi.dart';

var privacyList = [
  {"icon": 'assets/profileactivityicon.svg', "label": "Activity Status"},
  {"icon": 'assets/digitalicon.svg', "label": "Show Reward Points"},
  {"icon": 'assets/privacygroup.svg', "label": "Groups"},
  {"icon": 'assets/commenticon.svg', "label": "Comments"},
  {"icon": 'assets/privacypost.svg', "label": "Post-Photo & Video"},
  {"icon": 'assets/historyicon.svg', "label": "Story"},
  {"icon": 'assets/liveicon.svg', "label": "Live"},
  {"icon": 'assets/setchat2.svg', "label": "Chat-Box"},
  {"icon": 'assets/@.svg', "label": "Mention"},
  {"icon": 'assets/gifticon1.svg', "label": "Send me GIFT"},
  {"icon": 'assets/blockicon.svg', "label": "Block Profile List"},
];

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
                        Text(
                          'Add/Change Address',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 12.sp),
                        ),
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormField(
                        cursorColor: primaryColorOfApp,
                        decoration: buildaddressDecotaion(
                          'Search Location',
                          Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Icon(
                              Icons.search,
                              color: Color(0xffe2e2e2),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormField(
                        cursorColor: primaryColorOfApp,
                        decoration: buildaddressDecotaion(
                            'Enter Street/Village', null)),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormField(
                        cursorColor: primaryColorOfApp,
                        decoration:
                            buildaddressDecotaion('Enter Road/Landmark', null)),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44.w,
                          height: 4.h,
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
                          width: 44.w,
                          height: 4.h,
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
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44.w,
                          height: 4.h,
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
                            width: 44.w,
                            height: 4.h,
                            child: TextFormField(
                                cursorColor: primaryColorOfApp,
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
                      height: 4.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 0.5, color: const Color(0xff515253)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 15.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: sourceLocation, zoom: 14.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
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
                                borderRadius: BorderRadius.circular(10.0))),
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ]),
                ),
                positionCross(context)
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
                                              positionCross(context)
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
              positionCross(context)
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
                        width: 0.5.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const Setting1());
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(5.sp),
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
                      textAlign: TextAlign.justify,
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
                      onPressed: () {
                        Get.to(() => Gotodashboard());
                      },
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
                        Icon(
                          Icons.photo_library,
                          size: 15.sp,
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
                        Icon(
                          Icons.play_arrow_outlined,
                          size: 20.sp,
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
                                    padding: EdgeInsets.all(12.sp),
                                    child: SvgPicture.asset(
                                      'assets/addicon.svg',
                                      height: 3.5.h,
                                      width: 3.5.w,
                                      fit: BoxFit.cover,
                                      /*    height: 18,
                                      width: 18, */
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                top: 5.5.h,
                                child: Column(
                                  children: [
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
                                          /*height: 18,
                                             width : 18,*/
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '20-Aug-2020',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 10.sp),
                                        )
                                      ],
                                    )
                                  ],
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
                              Positioned(
                                top: 5.5.h,
                                child: Column(
                                  children: [
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
                                          /*height: 18,
                                             width : 18,*/
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '@arvind_khanna1',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 9.sp),
                                        )
                                      ],
                                    )
                                  ],
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

index3(context) {
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
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Column(mainAxisSize: MainAxisSize.min, children: [
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
                        'Digital Collections',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff333333),
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
                        color: const Color(0xffE2E2E2),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            width: 0.5, color: const Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TabBar(
                      indicatorWeight: 0.1,
                      automaticIndicatorColorAdjustment: false,
                      /* isScrollable: true, */
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.zero,
                      labelColor: primaryColorOfApp,
                      unselectedLabelColor: Color(0xff333333),
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
                    child: TabBarView(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            InkWell(
                              onTap: () {
                                showScratchCard(context);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/awardicon.svg',
                                        height: 18,
                                        width: 18,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text: 'Rewards from',
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 10),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'myttube’s',
                                                style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Satisfy',
                                                )),
                                            TextSpan(
                                                text: 'Sponshored partners',
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10)),
                                          ],
                                        ),
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
                                showRecievedGift(context);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/gifticon1.svg',
                                        height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
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
                                showCollectedPoints(context);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/digitalicon.svg',
                                        height: 15,
                                        width: 15,
                                        color: primaryColorOfApp,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          text: 'Collect Points from',
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 10),
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
                                    size: 15,
                                    color: Color(0xff333333),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                OutlinedButton.icon(
                                  icon: SvgPicture.asset(
                                    'assets/inviteicon.svg',
                                    /*     height: 18,
                                                                width: 18, */
                                  ),
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: const Size(140, 35),
                                      /*    minimumSize: Size(32, 30), */
                                      elevation: 0,
                                      /* padding: EdgeInsets.zero, */
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      side: const BorderSide(
                                        color: Color(0xff0087FF),
                                      ),
                                      /*  padding:
                                  EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                      foregroundColor: primaryColorOfApp,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  label: const Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Text(
                                      "Invite",
                                      style: TextStyle(
                                          fontSize: 12, fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'assets/multidigi.svg',
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/awardicon.svg',
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                ]),
                positionCross(context)
              ],
            );
          }),
        );
      });
}

settingPrivacy(context) {
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
                          width: 4.w,
                        ),
                        Text(
                          'Privacy',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/setprofile.svg',
                                height: 18, width: 18),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Private Profile',
                                style: ProfileSelf().buildtextstyle()),
                          ],
                        ),
                        Switch.adaptive(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: primaryColorOfApp,
                            value: valueofswitch,
                            onChanged: (valueofswitch) {
                              setState(() {
                                valueofswitch = valueofswitch;
                              });
                            })
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: 12,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 3.3.h,
                        );
                      },
                      itemBuilder: (context, index) {
                        if (index == 11) {
                          return SizedBox(
                            height: 1.h,
                          );
                        } else {
                          return InkWell(
                            onTap: () {
                              if (index == 0) {
                                WidgetProfilePage()
                                    .buildActivityStatus(context);
                              } else if (index == 1) {
                                WidgetProfilePage()
                                    .buildShowRewardpoint(context);
                              } else if (index == 2) {
                                WidgetProfilePage().buildGroups(context);
                              } else if (index == 3) {
                                WidgetProfilePage().buildComments(context);
                              } else if (index == 4) {
                                WidgetProfilePage()
                                    .buildPostPhotoVideo(context);
                              } else if (index == 5) {
                                WidgetProfilePage().buildStory(context);
                              } else if (index == 6) {
                                WidgetProfilePage().buildLivePrivacy(context);
                              } else if (index == 7) {
                                WidgetProfilePage()
                                    .buildChatBoxPrivacy(context);
                              } else if (index == 8) {
                                WidgetProfilePage().buildMention(context);
                              } else if (index == 9) {
                                WidgetProfilePage().buildSendmeGift(context);
                              } else if (index == 10) {
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
                                    SvgPicture.asset(
                                      privacyList[index]["icon"].toString(),
                                      height: 2.5.h,
                                      width: 2.5.w,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      privacyList[index]["label"].toString(),
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
              positionCross(context)
            ],
          );
        });
      });
}

buildaddressDecotaion(labeltext, icon) {
  return InputDecoration(
      prefixIcon: icon,
      prefixIconConstraints: BoxConstraints(),
      isDense: true,
      labelText: labeltext,
      labelStyle: TextStyle(
          color: Color(0xffc4c4c4), fontFamily: 'Poppins', fontSize: 10.sp),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: primaryColorOfApp, width: 0.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: customTextColor, width: 0.5)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: primaryColorOfApp,
          ),
          borderRadius: BorderRadius.circular(5)));
}
