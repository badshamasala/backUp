import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/CHAT_APP/shared_preference.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/people_profile.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:image_picker/image_picker.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  var images = [
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
  late ScrollController controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    getmytubeGender();
    controller = ScrollController();
  }

  getmytubeGender() async {
    await SharedPref.getmytubeGender().then((value) {
      /*   print(_isLoggedIn); */
      if (value != null) {
        setState(() {});
      }
    });
  }

  bool floatchupa = true;

  @override
  void dispose() {
    controller.dispose();
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  method1() {
    setState(() {
      floatchupa = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return Scaffold(
        backgroundColor: customTextColor,
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    image: const AssetImage(
                      'assets/logo.png',
                    ),
                    height: height * 0.04,
                    width: width * 0.10,
                    fit: BoxFit.fitHeight),
                Text(
                  'myttube',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff0B1C3D),
                    fontFamily: 'Satisfy',
                    fontSize: width * 0.08,
                    shadows: const [
                      Shadow(
                        blurRadius: 8.0,
                        color: Color(0xff2C81F8),
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      /*   final provider =
                          Provider.of<Googleprovider>(context, listen: false);
                      provider.logout(); */
                    },
                    icon: const Iconify(
                      Bi.qr_code_scan,
                      size: 17,
                      color: iconColor,
                    ))),
            SizedBox(
              width: width * 0.015,
            ),
            Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Iconify(
                      Ooui.bell,
                      size: 19,
                      color: iconColor,
                    ))),
            SizedBox(
              width: width * 0.015,
            ),
            Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/gifticon1.svg',
                    height: 3.h,
                    width: 3.w,
                    color: customTextColor,
                  ),
                )),
            SizedBox(
              width: width * 0.03,
            ),
          ],
        ),
        /*  floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton: Visibility(
          visible: floatchupa,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: FloatingActionButton(
              mini: true,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0,
              backgroundColor: primaryColorOfApp,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        insetPadding: EdgeInsets.zero,
                        contentPadding: EdgeInsets.zero,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.white.withOpacity(0.8),
                        content: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: [
                                  Divider(
                                    height: 15,
                                    color: Colors.transparent,
                                  ),
                                  InkWell(
                                    onDoubleTap: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        floatchupa = true;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 0.5,
                                              spreadRadius: 0.5,
                                              offset: Offset(
                                                2,
                                                3,
                                              ),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          color: primaryColorOfApp),
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.all(15.0),
                                          child: SvgPicture.asset(
                                            'assets/penicon.svg',
                                            height: 38,
                                            width: 20,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    'CREATE POST-CHOOSE ONE',
                                    style: TextStyle(
                                        color: primaryColorOfApp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.2),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 15,
                                color: Colors.transparent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Iconify(
                                          Ic.outline_add_photo_alternate,
                                          color: primaryColorOfApp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Add Photo',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          /* fontWeight: FontWeight.w600, */
                                          letterSpacing: 0.2),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                height: 15,
                                color: Colors.transparent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Iconify(
                                            MaterialSymbols
                                                .video_call_rounded,
                                            color: primaryColorOfApp),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Add Video',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          /*     fontWeight: FontWeight.w600, */
                                          letterSpacing: 0.2),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                height: 15,
                                color: Colors.transparent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Iconify(Ic.outline_poll,
                                            color: primaryColorOfApp),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Create Poll',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          /* fontWeight: FontWeight.w600, */
                                          letterSpacing: 0.2),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                height: 15,
                                color: Colors.transparent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(25),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Iconify(
                                            MaterialSymbols
                                                .record_voice_over,
                                            color: primaryColorOfApp),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Live Podcast',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          /*      fontWeight: FontWeight.w600, */
                                          letterSpacing: 0.2),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                height: 15,
                                color: Colors.transparent,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(25),
                                    elevation: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Iconify(Ic.baseline_live_tv,
                                            color: primaryColorOfApp),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Live',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          /* fontWeight: FontWeight.w600, */
                                          letterSpacing: 0.2),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                height: 25,
                                color: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).then((_) {
              /*     print('dekhjte----------'); */
                  setState(() {
                    floatchupa = true;
                  });
                });
              /*   print('sssssssssss'); */
                setState(() {
        /*           print('12345677'); */
                  floatchupa = false;
                });
              },
              child: SvgPicture.asset(
                'assets/c2c.svg',
                width: 17,
                height: 17,
                color: Colors.white,
              ),
            ),
          ),
        ), */
        body: SingleChildScrollView(
          /*     controller: controller, */
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                height: 13.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 2.1.w,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Stack(children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.sp,
                                          color: primaryColorOfApp),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.sp),
                                      child: Icon(
                                        Icons.person,
                                        color: const Color(0xffc4c4c4),
                                        size: 40.sp,
                                      ),
                                    )),
                                Positioned(
                                  top: 6.h,
                                  left: 10.w,
                                  child: Container(
                                      height: 2.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.5.w),
                                          shape: BoxShape.circle,
                                          color: primaryColorOfApp),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 10.sp,
                                            color: Colors.black,
                                          ))),
                                )
                              ]),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Add Story',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              )
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff2C81F8),
                                        Color(0xff03194B)
                                      ]),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(1.5.sp),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.sp),
                                      child: CircleAvatar(
                                        radius: 23.sp,
                                        backgroundImage: AssetImage(
                                          images[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                names[index],
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              )
                            ],
                          );
                        }
                      }),
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Flexible(
                child: ListView.builder(
                    /* controller: controller, */
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: userlist.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Card(
                          margin: EdgeInsets.zero,
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  CircleAvatar(
                                    radius: 15.sp,
                                    backgroundColor: primaryColorOfApp,
                                    child: CircleAvatar(
                                      radius: 14.sp,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 13.sp,
                                        backgroundImage: const NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text('Sponsered by',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 10.sp,
                                          color: const Color(0xff737373))),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PeopleProfile()),
                                      );
                                    },
                                    child: Text('@SPIDER-MAN',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp,
                                            color: primaryColorOfApp)),
                                  ),
                                  const Spacer(),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: primaryColorOfApp),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          minimumSize: Size(20.5.w, 3.8.h),
                                          foregroundColor: Colors.white,
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 40.0, vertical: 20.0),
                                          backgroundColor: primaryColorOfApp,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  IconButton(
                                      /* padding: EdgeInsets.zero, */
                                      constraints: const BoxConstraints(),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert,
                                        size: 19.sp,
                                      )),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.sp),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Image.asset(
                                    'assets/bookshow.webp',
                                    height: 20.h,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      SvgPicture.asset(
                                        'assets/likeicon.svg',
                                        height: 3.h,
                                        width: 3.w,
                                        color: primaryColorOfApp,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Like 67k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      SvgPicture.asset(
                                        'assets/shareicon.svg',
                                        height: 3.h,
                                        width: 3.w,
                                        color: iconColor,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Text(
                                        'Share 10k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 8.sp),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "100M+",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Views",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 2.w),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          minimumSize: Size(30.w, 5.h),
                                          elevation: 0,
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          side: const BorderSide(
                                            color: Color(0xff0087FF),
                                          ),
                                          /*       padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.sp))),
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            color: primaryColorOfApp,
                                            fontSize: 12.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      } else if (index.isEven) {
                        return Padding(
                          padding: EdgeInsets.only(top: 0.5.h),
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Row(
                                      /*   mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly, */
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CircleAvatar(
                                                  radius: 18.sp,
                                                  backgroundColor:
                                                      primaryColorOfApp,
                                                  child: CircleAvatar(
                                                    radius: 17.sp,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 16.sp,
                                                      backgroundImage:
                                                          AssetImage(
                                                              userlist[index]
                                                                  .image),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 1.h,
                                                  child: CircleAvatar(
                                                    radius: 4.sp,
                                                    backgroundColor:
                                                        const Color(0xff08A434),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .username,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text(
                                                          userlist[index]
                                                              .userId,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.sp,
                                                              color:
                                                                  primaryColorOfApp)),
                                                      Text(
                                                          userlist[index]
                                                              .status,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8.sp,
                                                              color: const Color(
                                                                  0xff08A434))),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 0.3.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .location,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 8.sp,
                                                          )),
                                                      Iconify(
                                                        Ri.share_box_line,
                                                        color:
                                                            primaryColorOfApp,
                                                        size: 9.sp,
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                        child: Link(
                                                          target:
                                                              LinkTarget.self,
                                                          uri: Uri.parse(
                                                            'https://myttube.com/',
                                                          ),
                                                          builder: (context,
                                                              followLink) {
                                                            return TextButton(
                                                              style: TextButton
                                                                  .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                tapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                foregroundColor:
                                                                    const Color(
                                                                        0xff0087FF),
                                                              ),
                                                              onPressed:
                                                                  followLink,
                                                              child: Text(
                                                                'https://myttube.com',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8.sp),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        /*    SizedBox(
                                          width: 2.w,
                                        ), */
                                        OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: primaryColorOfApp),
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                elevation: 0,
                                                minimumSize:
                                                    Size(20.5.w, 3.8.h),
                                                // padding: EdgeInsets.symmetric(
                                                //     horizontal: 40.0, vertical: 20.0),
                                                backgroundColor: Colors.white,
                                                foregroundColor:
                                                    primaryColorOfApp,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0))),
                                            onPressed: () {},
                                            child: Text(
                                              'following',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.sp),
                                            )),
                                        /*    SizedBox(
                                    width: 5,
                                  ), */
                                        IconButton(
                                            /* padding: EdgeInsets.zero, */
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_vert,
                                              size: 19.sp,
                                            )),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4.0, right: 4),
                                        child: Image.asset(
                                          userlist[index].image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/likeicon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Like',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].likecount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*  sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/commenticon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Comments',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index]
                                              .commentcount
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.sp),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/shareicon.svg',
                                            height: 3.h,
                                            width: 3.w,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: 1.3.h,
                                          ),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                          Text(
                                            userlist[index]
                                                .sharecount
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/gifticon1.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'GIFT',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].giftcount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /* sizedbox(context), */
                                    Text(
                                      userlist[index].viewcount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5),
                                    ),
                                    /*  Text(
                                      'View',
                                      style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                    ), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/starsave.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          'Saved',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          '' /* userlist[index].giftcount.toString() */,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: '#Timepass',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8.sp),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: ' @followmyteam',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontSize: 10.sp),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' #Study#content#content#samplekkxajkjax',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8.sp),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.sp),
                                      child: Row(
                                        children: [
                                          Iconify(
                                            Bi.check_circle_fill,
                                            color: Colors.red,
                                            size: 19.sp,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 2.sp),
                                            child: Text(
                                              'boat',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 2.sp),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff737373),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_vert,
                                            size: 19.sp,
                                          )),
                                    )
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          'https://cdn.shopify.com/s/files/1/0057/8938/4802/articles/boAt-Rockerz-510---Best-Wireless-Headphones-of-2021_1_1024x.jpg?v=1611915753',
                                          width: double.infinity,
                                          height: 20.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 5.h,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      } else if (index % 3 == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                    /*    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly, */
                                    children: [
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      CircleAvatar(
                                        radius: 16.sp,
                                        backgroundColor:
                                            const Color(0xff0A8794),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 14.5.sp,
                                          child: Text('F',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color:
                                                      const Color(0xff0A8794),
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w900)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 5.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Furniture',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: const Color(
                                                            0xff0A8794),
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w900)),
                                                Text('@furniture.com',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.sp,
                                                        color:
                                                            primaryColorOfApp,
                                                        letterSpacing: 0.5)),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text('Sponsered',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: const Color(
                                                          0xff737373),
                                                      fontSize: 10.sp,
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: primaryColorOfApp),
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              elevation: 0,
                                              minimumSize: Size(20.5.w, 3.8.h),
                                              foregroundColor: Colors.white,
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          onPressed: () {},
                                          child: Text(
                                            'Follow',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      IconButton(
                                          /*    padding: EdgeInsets.zero, */
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_vert,
                                            size: 19.sp,
                                          )),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Avail up to 50% additional discount on best furinute is the',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp,
                                            color: const Color(
                                                0xff121212), /*   fontWeight: FontWeight.bold */
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4.0, right: 4),
                                        child: Image.asset(
                                          'assets/furniture.png',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.w),
                                  child: SizedBox(
                                    height: 6.h,
                                    width: double.infinity,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              const Color(0xff0C616A),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: EdgeInsets.all(8.sp),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.sp),
                                                child: Text(
                                                  'Order Now',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Icon(
                                                Icons.chevron_right,
                                                size: 20.sp,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/likeicon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Like',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Text(
                                                userlist[index]
                                                    .likecount
                                                    .toString(),
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8.sp),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/shareicon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Share',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Text(
                                                userlist[index]
                                                    .sharecount
                                                    .toString(),
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8.sp),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    /*  sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/commenticon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Comments',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Text(
                                                userlist[index]
                                                    .commentcount
                                                    .toString(),
                                                style: TextStyle(
                                                    wordSpacing: 0,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8.sp),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '10k+',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Views',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/starsave.svg',
                                          height: 3.5.h,
                                          width: 3.5.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Save',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9.sp),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                )
                              ],
                            ),
                          ),
                        );
                      } else if (index % 7 == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: Column(
                              children: [
                                Row(
                                    /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5),
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: primaryColorOfApp,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 14.5,
                                            child: Image.network(
                                              'https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png',
                                              height: 15,
                                              width: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0, top: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: const [
                                                    Text('flipKart',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                primaryColorOfApp,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.0),
                                                      child: Iconify(
                                                        Bi.patch_check,
                                                        size: 14,
                                                        color:
                                                            primaryColorOfApp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text('Sponsored',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 6,
                                                        /*              fontWeight: FontWeight.bold, */
                                                        color:
                                                            Color(0xff737373),
                                                        letterSpacing: 0.5)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.4,
                                      ),
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: primaryColorOfApp),
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              elevation: 0,
                                              foregroundColor: Colors.white,
                                              minimumSize:
                                                  const Size(65.0, 25.0),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          onPressed: () {},
                                          child: const Text(
                                            'follow',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 17,
                                          )),
                                    ]),
                                SizedBox(
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: userlist.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, top: 5),
                                          child: Container(
                                            width: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.7,
                                                    color: const Color(
                                                        0xffc4c4c4)),
                                                shape: BoxShape.rectangle),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 1.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 0.7,
                                                              color: const Color(
                                                                  0xffc4c4c4)),
                                                          shape: BoxShape
                                                              .rectangle),
                                                      child: Image.network(
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJQL_Ix8CVodVD7BI_iCdSCefj-_3Z-kpJ5w&usqp=CAU',
                                                        height: 160,
                                                        width: 160,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Boats',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8)),
                                                            Text(
                                                                'Order only on ',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8)),
                                                            Text('Flipkart App',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8)),
                                                          ],
                                                        ),
                                                        OutlinedButton(
                                                            style: OutlinedButton
                                                                .styleFrom(
                                                                    side: const BorderSide(
                                                                        color:
                                                                            primaryColorOfApp),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    tapTargetSize:
                                                                        MaterialTapTargetSize
                                                                            .shrinkWrap,
                                                                    elevation:
                                                                        0,
                                                                    minimumSize:
                                                                        const Size(
                                                                            80.0,
                                                                            30.0),
                                                                    foregroundColor:
                                                                        Colors
                                                                            .white,
                                                                    // padding: EdgeInsets.symmetric(
                                                                    //     horizontal: 40.0, vertical: 20.0),
                                                                    backgroundColor:
                                                                        primaryColorOfApp,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0))),
                                                            onPressed: () {},
                                                            child: const Text(
                                                              'Shop Now',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      })),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                )
                              ],
                            ),
                          ),
                        );
                      } else if (index % 5 == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'More Videos',
                                            style: TextStyle(
                                                color: Color(0xff333333),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                          Icon(
                                            Icons.play_arrow,
                                            color: primaryColorOfApp,
                                          )
                                        ],
                                      ),
                                      const Text('View All',
                                          style: TextStyle(
                                              color: primaryColorOfApp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 180,
                                  child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: userlist.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.asset(
                                                  userlist[index].image.isEmpty
                                                      ? 'text'
                                                      : userlist[index].image,
                                                  height: 170,
                                                  width: 100,
                                                  fit: BoxFit.cover,
                                                  colorBlendMode:
                                                      BlendMode.darken,
                                                ),
                                              ),
                                              Positioned(
                                                top: 100,
                                                child: CircleAvatar(
                                                  radius: 23,
                                                  child: CircleAvatar(
                                                    radius: 22,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 20,
                                                      backgroundImage:
                                                          AssetImage(
                                                              userlist[index]
                                                                  .image),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 150,
                                                child: Text(
                                                    userlist[index].userId,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 8)),
                                              ),
                                            ],
                                          ),
                                        );
                                      })),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (index % 11 == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Suggested for you',
                                        style: TextStyle(
                                            color: Color(0xff333333),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                      ),
                                      Text('View All',
                                          style: TextStyle(
                                              color: primaryColorOfApp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 180,
                                  child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: userlist.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: ((context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.asset(
                                                  userlist[index].image,
                                                  height: 170,
                                                  width: 100,
                                                  fit: BoxFit.cover,
                                                  colorBlendMode:
                                                      BlendMode.darken,
                                                ),
                                              ),
                                              Positioned(
                                                top: 15,
                                                child: CircleAvatar(
                                                  radius: 23,
                                                  child: CircleAvatar(
                                                    radius: 22,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 20,
                                                      backgroundImage:
                                                          AssetImage(
                                                              userlist[index]
                                                                  .image),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 70,
                                                child: Text(
                                                    userlist[index].userId,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8)),
                                              ),
                                              Positioned(
                                                top: 85,
                                                child: Text(
                                                    userlist[index].username,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10)),
                                              ),
                                              const Positioned(
                                                top: 120,
                                                child: Text('Suggested for you',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffD9D9D9),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 8)),
                                              ),
                                              Positioned(
                                                top: 135,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            side: const BorderSide(
                                                                color:
                                                                    primaryColorOfApp),
                                                            padding:
                                                                EdgeInsets.zero,
                                                            tapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            elevation: 0,
                                                            minimumSize:
                                                                const Size(
                                                                    80.0, 25.0),
                                                            foregroundColor:
                                                                Colors.white,
                                                            // padding: EdgeInsets.symmetric(
                                                            //     horizontal: 40.0, vertical: 20.0),
                                                            backgroundColor:
                                                                primaryColorOfApp,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Follow',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        );
                                      })),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else if (index.isOdd) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Row(
                                      /*   mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly, */
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CircleAvatar(
                                                  radius: 18.sp,
                                                  backgroundColor:
                                                      primaryColorOfApp,
                                                  child: CircleAvatar(
                                                    radius: 17.sp,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 16.sp,
                                                      backgroundImage:
                                                          AssetImage(
                                                              userlist[index]
                                                                  .image),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 1.h,
                                                  child: CircleAvatar(
                                                    radius: 4.sp,
                                                    backgroundColor:
                                                        const Color(0xff08A434),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .username,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text(
                                                          userlist[index]
                                                              .userId,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.sp,
                                                              color:
                                                                  primaryColorOfApp)),
                                                      Text(
                                                          userlist[index]
                                                              .status,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 8.sp,
                                                              color: const Color(
                                                                  0xff08A434))),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 0.3.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                          userlist[index]
                                                              .location,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 8.sp,
                                                          )),
                                                      Iconify(
                                                        Ri.share_box_line,
                                                        color:
                                                            primaryColorOfApp,
                                                        size: 9.sp,
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                        child: Link(
                                                          target:
                                                              LinkTarget.self,
                                                          uri: Uri.parse(
                                                            'https://myttube.com/',
                                                          ),
                                                          builder: (context,
                                                              followLink) {
                                                            return TextButton(
                                                              style: TextButton
                                                                  .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                tapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                foregroundColor:
                                                                    const Color(
                                                                        0xff0087FF),
                                                              ),
                                                              onPressed:
                                                                  followLink,
                                                              child: Text(
                                                                'https://myttube.com',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        8.sp),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        /*    SizedBox(
                                          width: 2.w,
                                        ), */
                                        OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: primaryColorOfApp),
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                elevation: 0,
                                                minimumSize:
                                                    Size(20.5.w, 3.8.h),
                                                // padding: EdgeInsets.symmetric(
                                                //     horizontal: 40.0, vertical: 20.0),
                                                backgroundColor: Colors.white,
                                                foregroundColor:
                                                    primaryColorOfApp,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0))),
                                            onPressed: () {},
                                            child: Text(
                                              'following',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11.sp),
                                            )),
                                        /*    SizedBox(
                                    width: 5,
                                  ), */
                                        IconButton(
                                            /* padding: EdgeInsets.zero, */
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_vert,
                                              size: 19.sp,
                                            )),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4.0, left: 4),
                                        child: Image.asset(
                                          userlist[index].image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/likeicon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Like',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].likecount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*  sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/commenticon.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'Comments',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index]
                                              .commentcount
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.sp),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/shareicon.svg',
                                            height: 3.h,
                                            width: 3.w,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: 1.3.h,
                                          ),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                          Text(
                                            userlist[index]
                                                .sharecount
                                                .toString(),
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/gifticon1.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          'GIFT',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        Text(
                                          userlist[index].giftcount.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                      ],
                                    ),
                                    /* sizedbox(context), */
                                    Text(
                                      userlist[index].viewcount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5),
                                    ),
                                    /*  Text(
                                      'View',
                                      style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                    ), */
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/starsave.svg',
                                          height: 3.h,
                                          width: 3.w,
                                          color: primaryColorOfApp,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          'Saved',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 8.sp),
                                        ),
                                        SizedBox(
                                          height: 1.3.h,
                                        ),
                                        Text(
                                          '' /* userlist[index].giftcount.toString() */,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: '#Timepass',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 8.sp),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: ' @followmyteam',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: primaryColorOfApp,
                                                  fontSize: 10.sp),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' #Study#content#content#sample#',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8.sp),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Iconify(
                                            Bi.check_circle_fill,
                                            color: const Color(0xffFD6B06),
                                            size: 19.sp,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.0),
                                            child: Text(
                                              'Xiaomi',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.0),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xff737373),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.more_vert,
                                            size: 19.sp,
                                          )),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                      width: 49.5.w,
                                      child: Image.asset(
                                        'assets/xiomiadd.webp',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    /*   const VerticalDivider(
                                      width: 5,
                                    ), */
                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                          width: 49.5.w,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwTt3L2d15j1RMm4L7lpch4bZoOXUKSF9lw&usqp=CAU',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 14.h,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                minimumSize: Size(49.5.w, 5.h),
                                                backgroundColor:
                                                    const Color(0xffFD6B06),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0))),
                                            child: Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
              ),
            ],
          ),
        ));
  }
}

sizedbox(context) {
  Size size;
  double height;
  size = MediaQuery.of(context).size;
  height = size.height;
  return SizedBox(
    height: height * 0.02,
  );
}

class Modal {
  final String userId;
  final String status;
  final String location;
  final String username;
  final String des;
  final String image;
  final String likecount;
  final String commentcount;
  final String sharecount;
  final String giftcount;
  final String viewcount;

  const Modal({
    required this.userId,
    required this.status,
    required this.location,
    required this.username,
    required this.des,
    required this.image,
    required this.likecount,
    required this.commentcount,
    required this.sharecount,
    required this.giftcount,
    required this.viewcount,
  });
}

final userlist = [
  const Modal(
    userId: '@m.mehta23',
    status: 'Online',
    location: 'mumbai',
    username: 'meenal mehta',
    des: 'Sponsered by https://myttube.com/',
    image: 'assets/image1.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Akash',
    status: 'Online',
    location: 'mumbai',
    username: 'Akash',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image2.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Pravin',
    status: 'Online',
    location: 'mumbai',
    username: '@Pravin',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image3.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image4.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image5.jpeg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image6.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image7.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image8.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image9.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image1.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image2.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image3.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image4.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image5.jpeg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image6.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image7.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image8.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image9.jpg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image1.webp',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
  const Modal(
    userId: '@Farhan',
    status: 'Online',
    location: 'mumbai',
    username: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image: 'assets/image5.jpeg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
];
