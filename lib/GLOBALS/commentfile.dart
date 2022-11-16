import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:share_plus/share_plus.dart';

dynamic groupseenonline;

var everyone = 'Everyone';
var followers = 'Followers';
var following = 'Following';
var off = 'Off';
var sourceLocation = LatLng(19.0715252, 72.8692906);
buildsecurity(context) {
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
                            icon: Icon(
                              Icons.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          'Security',
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
                        buildloginActivity(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/loginActivity.svg',
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Login Activity',
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
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/savePassword.svg',
                                height: 18,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Saved Password',
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
                              'assets/securepass.svg',
                              height: 18,
                              width: 18,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Password',
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
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: SvgPicture.asset(
                                  'assets/mobile1.svg',
                                  height: 18,
                                  width: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Mobile',
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
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/email.svg',
                                height: 15,
                                width: 15,
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              Text(
                                'Email',
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

buildloginActivity(context) {
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
                            icon: Icon(
                              Icons.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          'Login Activity',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'are you logged in ?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 8),
                        ),
                      ],
                    ),
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: height * 0.01,
                          );
                        },
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return SizedBox(
                            height: 40,
                            child: ListTile(
                              horizontalTitleGap: 0,
                              leading: SvgPicture.asset('assets/location.svg'),
                              title: Row(
                                children: [
                                  Text(
                                    'Apple iphone',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    'Active Online',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xff038026),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                'Mumbai, Maharashtra November 30 at 12:30 pm',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    buildLoginHistory(context);
                                  },
                                  icon: Icon(Icons.more_vert)),
                            ),
                          );
                        })),
                    SizedBox(
                      height: height * 0.1,
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
      });
}
buildSavePassword(context) {
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
                            icon: Icon(
                              Icons.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          'Login Activity',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'are you logged in ?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 8),
                        ),
                      ],
                    ),
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: height * 0.01,
                          );
                        },
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return SizedBox(
                            height: 40,
                            child: ListTile(
                              horizontalTitleGap: 0,
                              leading: SvgPicture.asset('assets/location.svg'),
                              title: Row(
                                children: [
                                  Text(
                                    'Apple iphone',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: customTextColor,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    'Active Online',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xff038026),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                'Mumbai, Maharashtra November 30 at 12:30 pm',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: customTextColor,
                                    fontSize: 10),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    buildLoginHistory(context);
                                  },
                                  icon: Icon(Icons.more_vert)),
                            ),
                          );
                        })),
                    SizedBox(
                      height: height * 0.1,
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
      });
}

buildLoginHistory(context) {
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
                        Text(
                          'Login History',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
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
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Oppo 11 Pro',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'Active Offline',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff038026),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'be careful ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff038026),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'are you sure, logged in by you ? ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(140, 35),
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
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: const Text(
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
                              minimumSize: Size(135, 35),
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
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: const Text(
                              "Log Out",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.1,
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

buildTextDesign(fontsize, color, fontWeight) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontsize,
      color: color,
      fontWeight: fontWeight);
}

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
aboutProfile(context) {
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 168, 161, 161),
                        border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 168, 161, 161)),
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
                      children: [
                        const Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 12,
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
                  const Divider(),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            ListTile(
                                              minVerticalPadding: 10,
                                              horizontalTitleGap: 4,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: -3),
                                              dense: true,
                                              leading: const CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                              ),
                                              title: Row(
                                                children: [
                                                  Text(
                                                    '@Nanncyjain23 ',
                                                    style: TextStyle(
                                                        color:
                                                            primaryColorOfApp,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  Iconify(
                                                    Bi.patch_check,
                                                    size: 15,
                                                    color: primaryColorOfApp,
                                                  ),
                                                ],
                                              ),
                                              subtitle: Text(
                                                '@m.rajan02',
                                                style: ProfileSelf()
                                                    .buildtextstyle(),
                                              ),
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'Information about this profile',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'this is viewer’s private profile ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'this profile created in 24-july-2018 ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'this profile created in india ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'this profile is verified  ',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      ),
                                                      Iconify(
                                                        Bi.patch_check,
                                                        size: 15,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'this profile current rating is',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      ),
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.green,
                                                        size: 17,
                                                      ),
                                                      const Text(
                                                        '4.8',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.04,
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Text(
                                                        'how much would you like to ratings this profile?',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      RatingBar.builder(
                                                        itemSize: 20,
                                                        initialRating: 3,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: false,
                                                        itemCount: 5,
                                                        itemPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    4.0),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                          Icons.star,
                                                          color: Colors.green,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                elevation: 0,
                                                                minimumSize:
                                                                    const Size(
                                                                        120,
                                                                        35),
                                                                // padding: EdgeInsets.symmetric(
                                                                //     horizontal: 40.0, vertical: 20.0),
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xff0087FF),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0))),
                                                        child: Text(
                                                          "Submit",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  width * 0.045,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.2,
                                                  ),
                                                ],
                                              ),
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
                    title: Text(
                      'About profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/setabout.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/hearticon.svg',
                              height: 18,
                              width:
                                  18, /*  color: value1 ? Colors.red : Colors.black */
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text('my favourties profile',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: value1
                                          ? const Color(0xff0087FF)
                                          : Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: const CircleBorder(),
                            value: value1,
                            onChanged: (value1) {
                              print('object');
                              setState(() {
                                value1 = value1!;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/friendicon.svg',
                              height: 18,
                              width:
                                  18, /*           color: value1 ? Colors.red : Colors.black */
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text('my close friends',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: value1
                                          ? const Color(0xff0087FF)
                                          : Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: const CircleBorder(),
                            value: value2,
                            onChanged: (value2) {
                              setState(() {
                                value2 = value2!;
                              });
                            }),
                      ),
                    ],
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
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
                                (BuildContext context, StateSetter setState) {
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
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE2E2E2),
                                                border: Border.all(
                                                  width: 0.5,
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 5,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 18.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                children: [
                                                  const Text(
                                                    'send to chat-box ',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 8),
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
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 8),
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
                                                  final box =
                                                      context.findRenderObject()
                                                          as RenderBox?;
                                                  Share.share('aasd',
                                                      subject: 'axaa',
                                                      sharePositionOrigin: box!
                                                              .localToGlobal(
                                                                  Offset.zero) &
                                                          box.size);
                                                },
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      'share to',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8),
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Color(
                                                                    0xff333333),
                                                                width: 0.5)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Color(
                                                                    0xff0087FF),
                                                                width: 0.5)),
                                                labelText: 'Search',
                                              ))),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: 3,
                                              itemBuilder: ((context, index) {
                                                return ListTile(
                                                  minVerticalPadding: 10,
                                                  horizontalTitleGap: 4,
                                                  visualDensity:
                                                      const VisualDensity(
                                                          vertical: -3),
                                                  dense: true,
                                                  leading: const CircleAvatar(
                                                    radius: 20,
                                                    backgroundImage: NetworkImage(
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                  ),
                                                  title: Text(
                                                    'Rajan Mistry-1 ',
                                                    style: ProfileSelf()
                                                        .buildtextstyle(),
                                                  ),
                                                  subtitle: Text(
                                                    '@m.rajan02',
                                                    style: ProfileSelf()
                                                        .buildtextstyle(),
                                                  ),
                                                  trailing: OutlinedButton(
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                              elevation: 0,
                                                              minimumSize:
                                                                  const Size(
                                                                      80, 30),
                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              side:
                                                                  const BorderSide(
                                                                color: Color(
                                                                    0xff0087FF),
                                                              ),
                                                              backgroundColor:
                                                                  Colors.white,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Send',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 10),
                                                      )),
                                                );
                                              })),
                                          SizedBox(
                                            height: height * 0.2,
                                          )
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
                    title: Text(
                      'share this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/shareicon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0),
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
                                                    width: 0.5,
                                                    color: const Color(
                                                        0xffE2E2E2)),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 5,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
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
                                          Container(
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
                                                            color: const Color(
                                                                0xff515253)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    /*  width: 150,
                height: 150, */
                                                    /*  color: Colors.green[300], */
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '26548 rank ',
                                                                style: TextStyle(
                                                                    color:
                                                                        primaryColorOfApp,
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              const Text(
                                                                '489659984 ',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              const Text(
                                                                'Points',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 8.0),
                                                          child: Image.asset(
                                                              'assets/earnpoints.png'),
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
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
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
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8),
                                              )
                                            ],
                                          ),
                                          const Divider(),
                                          Container(
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
                                                            color: const Color(
                                                                0xff515253)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    /*  width: 150,
                height: 150, */
                                                    /*  color: Colors.green[300], */
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              const Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              const Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'No. 1 rank',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              const Text(
                                                                '2565489659984',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins'),
                                                              ),
                                                              Text(
                                                                '@abcprofile',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        primaryColorOfApp),
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
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
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
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
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
                                                          color:
                                                              Color(0xff515253),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
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
                    title: Text(
                      'earn points this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: Iconify(
                      EmojioneMonotone.wrapped_gift,
                      color: customTextColor,
                      size: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'this profile joined multiple group ',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
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
                                                              Text(
                                                                  'you can join this group ',
                                                                  style: ProfileSelf()
                                                                      .buildtextstyle()),
                                                            ],
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  'Shopping Center',
                                                                  style: ProfileSelf()
                                                                      .buildtextstyle()),
                                                              Text(
                                                                '@see-groups',
                                                                style: TextStyle(
                                                                    color:
                                                                        primaryColorOfApp,
                                                                    fontFamily:
                                                                        'Poppins'),
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
                    title: Text(
                      'group join? this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/privacygroup.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      setState(() {
                        urlvariable = true;
                      });
                    },
                    title: Text(
                      'copy URL this profile',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color:
                              urlvariable ? primaryColorOfApp : customTextColor,
                          fontSize: 10),
                    ),
                    leading: SvgPicture.asset(
                      'assets/urlicon.svg',
                      color: urlvariable ? primaryColorOfApp : customTextColor,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
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
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 18.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image(
                                                          image:
                                                              const AssetImage(
                                                            'assets/logo.png',
                                                          ),
                                                          height:
                                                              height * 0.055,
                                                          width: width * 0.12,
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      Text(
                                                        'myttube',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xff0087FF),
                                                          fontFamily: 'Satisfy',
                                                          fontSize:
                                                              width * 0.08,
                                                          shadows: [
                                                            const Shadow(
                                                              blurRadius: 5.0,
                                                              color: Color(
                                                                  0xff000000),
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
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                              elevation: 0,
                                                              side: BorderSide(
                                                                  width: 0.5,
                                                                  color:
                                                                      primaryColorOfApp),
                                                              minimumSize:
                                                                  const Size(
                                                                      80, 30),
                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'follow',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 10),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 250,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: primaryColorOfApp,
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  shape: BoxShape.rectangle),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(30.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                primaryColorOfApp,
                                                            width: 0.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        shape:
                                                            BoxShape.rectangle),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: [
                                                          const Iconify(
                                                            Bi.qr_code,
                                                            size: 140,
                                                          ),
                                                          Text(
                                                            '@Nanncyjain23',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    primaryColorOfApp,
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
                                              padding: const EdgeInsets.only(
                                                  left: 28.0),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    'LOGIN:',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    'https://myttube.com',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Icon(
                                                        Icons.download,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                      const Text(
                                                          'download QR code')
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/shareicon.svg',
                                                        height: 18,
                                                        width: 18,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                      const Text(
                                                          'share QR code')
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.2,
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
                    title: Text(
                      'QR Code this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: const Iconify(
                      Bi.qr_code_scan,
                      size: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
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
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'report this profile ',
                                                  style: buildTextDesign(null,
                                                      null, FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 11.0),
                                                  child: SvgPicture.asset(
                                                    'assets/blockicon.svg',
                                                    height: 18,
                                                    width: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'what do you want to do?',
                                                  style: buildTextDesign(
                                                      11.0, null, null),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'harassment message',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Report Post, Message, Comments',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Copyrights',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'intellectual property defamation',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
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
                                                    backgroundColor:
                                                        primaryColorOfApp,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0))),
                                                child: const Text(
                                                  "report",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
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
                    title: Text(
                      'Report this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/reporticon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 10,
                    visualDensity: const VisualDensity(vertical: -3),
                    dense: true,
                    onTap: () {
                      showModalBottomSheet(
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
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
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
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: const Color(
                                                          0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'are you sure block this profile?',
                                                  style: buildTextDesign(null,
                                                      null, FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 11.0),
                                                  child: SvgPicture.asset(
                                                    'assets/blockicon.svg',
                                                    height: 18,
                                                    width: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'why you blocking this profile?',
                                                  style: buildTextDesign(
                                                      11.0, null, null),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'harassment message',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'hateful speech',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'adult content',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'fake account',
                                                  style: buildTextDesign(
                                                      10.0, null, null),
                                                ),
                                                Radio(
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    groupValue: groupseenonline,
                                                    value: everyone,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        groupseenonline =
                                                            everyone;
                                                      });
                                                    })
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                OutlinedButton(
                                                  onPressed: () {
                                                    /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          minimumSize:
                                                              const Size(
                                                                  120, 37),
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xff0087FF),
                                                          ),
                                                          /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                          backgroundColor:
                                                              primaryColorOfApp,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: const Text(
                                                    "Block",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xff0087FF),
                                                          ),
                                                          /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0))),
                                                  child: Text(
                                                    "Block & report",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            primaryColorOfApp,
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
                    title: Text(
                      'Block this profile',
                      style: ProfileSelf().buildtextstyle(),
                    ),
                    leading: SvgPicture.asset(
                      'assets/blockicon.svg',
                      height: 18,
                      width: 18,
                    ),
                    trailing: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: Color(0xff333333),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  )
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
