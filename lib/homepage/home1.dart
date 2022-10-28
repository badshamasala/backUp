import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/scrollToHideWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  late ScrollController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
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

  
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                  color: const Color(0xff18346D),
                  fontFamily: 'Satisfy',
                  fontSize: width * 0.08,
                  shadows: [
                    const Shadow(
                      blurRadius: 8.0,
                      color: Color(0xff0087FF),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                    padding: EdgeInsets.all(0),
                    constraints: BoxConstraints(),
                    onPressed: () {},
                    icon: Iconify(
                      Bi.qr_code_scan,
                      size: 20,
                      color: iconColor,
                    ))),
            SizedBox(
              width: width * 0.01,
            ),
            Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                    padding: EdgeInsets.all(0),
                    constraints: BoxConstraints(),
                    onPressed: () {},
                    icon: Iconify(
                      Ooui.bell,
                      size: 20,
                      color: iconColor,
                    ))),
            SizedBox(
              width: width * 0.01,
            ),
            Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    /*   borderRadius: BorderRadius.circular(40), */
                    border: Border.all(width: 1, color: primaryColorOfApp)),
                child: IconButton(
                    padding: EdgeInsets.all(0),
                    constraints: BoxConstraints(),
                    onPressed: () {},
                    icon: Iconify(
                      Mdi.comment_plus,
                      size: 20,
                      color: iconColor,
                    ))),
            SizedBox(
              width: width * 0.01,
            ),
          ],
        ),
        
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                child: ListView(
                  children: [
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: primaryColorOfApp),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(
                                'assets/new.svg',
                                width: 60,
                              ),
                            ),
                            Positioned(
                              top: 55,
                              left: 45,
                              child: Container(
                                  height: 20,
                                  margin: EdgeInsets.all(0),
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      shape: BoxShape.circle,
                                      color: primaryColorOfApp),
                                  child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      constraints: BoxConstraints(),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        size: 15,
                                      ))),
                            )
                          ]),
                          Text(
                            'Add Story',
                            style: TextStyle(
                                color: primaryColorOfApp,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/un.svg',
                              width: 61,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Rashid',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/un.svg',
                              width: 61,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Farhan',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/un.svg',
                              width: 61,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Akhtar',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/un.svg',
                              width: 61,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Farhan',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ],
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Flexible(
                child: ListView.builder(
                    /* controller: controller, */
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: userlist.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      NetworkImage(userlist[index].image),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 165,
                                    child: Row(
                                      children: [
                                        Text(userlist[index].userId,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 165,
                                    child: Row(
                                      children: [
                                        Text(userlist[index].des,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: primaryColorOfApp)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      elevation: 0,
                                      minimumSize: const Size(65.0, 30.0),
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 40.0, vertical: 20.0),
                                      backgroundColor: const Color(0xff0087FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert)),
                            ]),
                            Image.network(userlist[index].image),
                            sizedbox(context),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/likeicon.svg',
                                      color: primaryColorOfApp,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Like',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].likecount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                                /*  sizedbox(context), */
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/commenticon.svg',
                                      color: iconColor,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Comments',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].commentcount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                                /*    sizedbox(context), */
                                Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/shareicon.svg',
                                      color: iconColor,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].sharecount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                                /*    sizedbox(context), */
                                Column(
                                  children: [
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {},
                                        icon: Iconify(
                                          EmojioneMonotone.wrapped_gift,
                                          color: primaryColorOfApp,
                                        )),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Gift',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].giftcount.toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                                /* sizedbox(context), */
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30.0),
                                  child: Text(
                                    userlist[index].viewcount.toString() +
                                        "k Views",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                /*  Text(
                                  'View',
                                  style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                ), */
                                Column(
                                  children: [
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {},
                                        icon: Iconify(Bi.bookmark_star)),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'Save',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      '' /* userlist[index].giftcount.toString() */,
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })),
              ),
            ],
          ),
        )
        );
  }
}

sizedbox(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return SizedBox(
    height: height * 0.02,
  );
}

class Modal {
  final String userId;
  final String des;
  final String image;
  final int likecount;
  final int commentcount;
  final int sharecount;
  final int giftcount;
  final int viewcount;

  const Modal({
    required this.userId,
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
  Modal(
    userId: '@Rashid',
    des: 'Sponsered by https://myttube.com/',
    image:
        'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Akash',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/free-photo/view-3d-glasses-movies-tickets_23-2149558745.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Pravin',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/premium-vector/realistic-movie-clapper-slapstick_260559-141.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/free-photo/portrait-middle-age-man-videographer-studio_613910-11063.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
];
