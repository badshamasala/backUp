import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:provider/provider.dart';

import '../GOOGLE LOGIN/googleprovider.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
            /* mainAxisAlignment: MainAxisAlignment.start, */
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
                    onPressed: () {
                      final provider =
                          Provider.of<Googleprovider>(context, listen: false);
                      provider.logout();
                    },
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
              width: width * 0.05,
            ),
          ],
        ),
        body: SingleChildScrollView(
          /*     controller: controller, */
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListView.separated(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Stack(children: [
                                Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: primaryColorOfApp),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: Color(0xffc4c4c4),
                                      size: 40,
                                    )),
                                Positioned(
                                  top: 30,
                                  left: 30,
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
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Add Story',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              )
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
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
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                names[index],
                                style: TextStyle(
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
              Card(
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 166,
                            child: Row(
                              children: [
                                Text('Sponsered by @SPIDER-MAN',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 10)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              elevation: 0,
                              minimumSize: const Size(65.0, 30.0),
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 40.0, vertical: 20.0),
                              backgroundColor: const Color(0xff0087FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
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
                    Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            SvgPicture.asset(
                              'assets/likeicon.svg',
                              color: primaryColorOfApp,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Like 67k',
                              style:
                                  TextStyle(fontFamily: 'Poppins', fontSize: 8),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            SvgPicture.asset(
                              'assets/shareicon.svg',
                              color: iconColor,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              'Share 10k',
                              style:
                                  TextStyle(fontFamily: 'Poppins', fontSize: 8),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "100M+ Views",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 110,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                /*     minimumSize: Size(50, 30), */
                                elevation: 0,
                                /* padding: EdgeInsets.zero, */
                                /*   tapTargetSize: MaterialTapTargetSize.shrinkWrap, */
                                side: const BorderSide(
                                  color: Color(0xff0087FF),
                                ),
                                /*       padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
                            ),
                            RichText(
                              text: TextSpan(
                                  text: '#Timepass',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' @followmyteam',
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontSize: 8),
                                    ),
                                    TextSpan(
                                      text:
                                          ' #Study#content#content#sample#more',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 8),
                                    )
                                  ]),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Icon(
                                  Icons.check_circle_outline_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  'boat',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  'Sponsered',
                                  style: TextStyle(
                                    color: Color(0xff737373),
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.45,
                                ),
                                Icon(Icons.more_vert)
                              ],
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  width: 310,
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwTt3L2d15j1RMm4L7lpch4bZoOXUKSF9lw&usqp=CAU',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      /* Navigator.push(
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
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Shop Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
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
        ));
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
