import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/people_profile.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:image_picker/image_picker.dart';

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
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

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
                      final provider =
                          Provider.of<Googleprovider>(context, listen: false);
                      provider.logout();
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
                      'assets/c2c.svg',
                      width: 17,
                      height: 17,
                    ))),
            SizedBox(
              width: width * 0.03,
            ),
          ],
        ),
        body: SingleChildScrollView(
          /*     controller: controller, */
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 8,
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
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: primaryColorOfApp),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      color: Color(0xffc4c4c4),
                                      size: 43,
                                    )),
                                Positioned(
                                  top: 41,
                                  left: 32,
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 13,
                                      margin: const EdgeInsets.all(0),
                                      padding: const EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1.5),
                                          shape: BoxShape.circle,
                                          color: primaryColorOfApp),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 10,
                                          ))),
                                )
                              ]),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
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
                                  padding: const EdgeInsets.all(1.5),
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      radius: 23.5,
                                      backgroundImage: NetworkImage(
                                        images[index],
                                      ),
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
                height: height * 0.004,
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
                                height: height * 0.006,
                              ),
                              Row(
                                /*       mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                                children: [
                                  Row(children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 5.0, left: 10),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: primaryColorOfApp,
                                        child: CircleAvatar(
                                          radius: 14.2,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            radius: 12.5,
                                            backgroundImage: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3.0, top: 5),
                                      child: Container(
                                        alignment: Alignment.center,
                                        /* color: Colors.red, */
                                        width: 146,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text('Sponsered by',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    color: Color(0xff737373))),
                                            SizedBox(
                                              width: width * 0.001,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const PeopleProfile()),
                                                );
                                              },
                                              child: const Text('@SPIDER-MAN',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 11,
                                                      color:
                                                          primaryColorOfApp)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                  SizedBox(
                                    width: width * 0.13,
                                  ),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: primaryColorOfApp),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          minimumSize: const Size(65.0, 24.0),
                                          foregroundColor: Colors.white,
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 40.0, vertical: 20.0),
                                          backgroundColor: primaryColorOfApp,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                      onPressed: () {},
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  SizedBox(
                                    width: 5,
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_vert,
                                          size: 17,
                                        )),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 4),
                                    child: Image.network(
                                      'https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2022/09/11/199737-bramhastra-tw.jpg?itok=nGR3gI8o ',
                                      height: 130,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      SvgPicture.asset(
                                        'assets/likeicon.svg',
                                        height: 20,
                                        width: 20,
                                        color: primaryColorOfApp,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const Text(
                                        'Like 67k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins', fontSize: 8),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * 0.04,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      SvgPicture.asset(
                                        'assets/shareicon.svg',
                                        height: 18,
                                        width: 18,
                                        color: iconColor,
                                      ),
                                      SizedBox(
                                        height: height * 0.013,
                                      ),
                                      const Text(
                                        'Share 10k',
                                        style: TextStyle(
                                            fontFamily: 'Poppins', fontSize: 8),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text(
                                    "100M+",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Views",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 28,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          minimumSize: const Size(95.0, 30.0),
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
                                                  BorderRadius.circular(5.0))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(1.0),
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(
                                              color: primaryColorOfApp,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
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
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              child: CircleAvatar(
                                                radius: 17,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundImage: NetworkImage(
                                                      userlist[index].image),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            top: 26,
                                            child: CircleAvatar(
                                              radius: 4,
                                              backgroundColor:
                                                  Color(0xff08A434),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(userlist[index].username,
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(userlist[index].userId,
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      color:
                                                          primaryColorOfApp)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0),
                                                child: Text(
                                                    userlist[index].status,
                                                    style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff08A434))),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(userlist[index].location,
                                                  style: const TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                  )),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.0),
                                                child: Iconify(
                                                  Ri.share_box_line,
                                                  color: primaryColorOfApp,
                                                  size: 10,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                                child: Link(
                                                  target: LinkTarget.self,
                                                  uri: Uri.parse(
                                                      'https://myttube.com/'),
                                                  builder:
                                                      (context, followLink) {
                                                    return TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        foregroundColor:
                                                            const Color(
                                                                0xff0087FF),
                                                      ),
                                                      onPressed: followLink,
                                                      child: const Text(
                                                        'https://myttube.com',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 8),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
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
                                              minimumSize:
                                                  const Size(65.0, 25.0),
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
                                          child: const Text(
                                            'following',
                                            style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontFamily: 'Poppins',
                                                fontSize: 12),
                                          )),
                                      /*    SizedBox(
                                  width: 5,
                                ), */
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                          )),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4.0, right: 4),
                                        child: Image.network(
                                          userlist[index].image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  /*      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly, */
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/likeicon.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Like',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .likecount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*  sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/commenticon.svg',
                                            height: 18,
                                            width: 18,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Comments',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .commentcount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/shareicon.svg',
                                            height: 18,
                                            width: 18,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Share',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .sharecount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/gifticon1.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Gift',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .giftcount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /* sizedbox(context), */
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 30.0, left: 25),
                                      child: Text(
                                        userlist[index].viewcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                    /*  Text(
                                    'View',
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                  ), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/starsave.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Saved',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            '' /* userlist[index].giftcount.toString() */,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                            text: '#Timepass',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 9),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: ' @followmyteam',
                                                style: TextStyle(
                                                    color: primaryColorOfApp,
                                                    fontSize: 8),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' #Study#content#content#sample#morecontentxlam....',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 8),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Iconify(
                                            Bi.check_circle_fill,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              'boat',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                  color: Color(0xff737373),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8),
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
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 17,
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
                                          height: 130,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 32,
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
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: Row(
                                          children: const [
                                            Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
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
                                Row(
                                    /*    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly, */
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 4.0, left: 5),
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Color(0xff0A8794),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 14,
                                            child: Text('F',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff0A8794),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w900)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: const [
                                                Text('Furniture',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xff0A8794),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w900)),
                                                Text('@furniture.com',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            primaryColorOfApp,
                                                        letterSpacing: 0.5)),
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Text('Sponsered',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff737373),
                                                      fontSize: 10,
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.2,
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
                                                fontSize: 12),
                                          )),
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(Icons.more_vert,
                                              size: 18)),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                          'Avail up to 50% additional discount on best furniture in the ..',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            color: Color(
                                                0xff121212), /*   fontWeight: FontWeight.bold */
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
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
                                SizedBox(
                                  height: 40,
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                'Order Now',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Icon(
                                              Icons.chevron_right,
                                              size: 20,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    /*        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly, */
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/likeicon.svg',
                                              height: 18,
                                              width: 18,
                                              color: primaryColorOfApp,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Like',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                                Text(
                                                  userlist[index]
                                                      .likecount
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/shareicon.svg',
                                              height: 18,
                                              width: 18,
                                              color: iconColor,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Share',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                                Text(
                                                  userlist[index]
                                                      .sharecount
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      /*  sizedbox(context), */
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/commenticon.svg',
                                              height: 18,
                                              width: 18,
                                              color: iconColor,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  'Comments',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                                Text(
                                                  userlist[index]
                                                      .commentcount
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 8),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30.0, bottom: 20),
                                        child: Row(
                                          children: const [
                                            Text(
                                              '10k+',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Views',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.19,
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/starsave.svg',
                                            height: 18,
                                            width: 18,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'Save',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 8),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.015,
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
                                                child: Image.network(
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
                                                          NetworkImage(
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
                                                child: Image.network(
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
                                                          NetworkImage(
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
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              child: CircleAvatar(
                                                radius: 17,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundImage: NetworkImage(
                                                      userlist[index].image),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            top: 26,
                                            child: CircleAvatar(
                                              radius: 4,
                                              backgroundColor:
                                                  Color(0xff08A434),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Text('nyraa grover ',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(userlist[index].userId,
                                                  style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      color:
                                                          primaryColorOfApp)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0),
                                                child: Text(
                                                    userlist[index].status,
                                                    style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff08A434))),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(userlist[index].location,
                                                  style: const TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                  )),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.0),
                                                child: Iconify(
                                                  Ri.share_box_line,
                                                  color: primaryColorOfApp,
                                                  size: 10,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                                child: Link(
                                                  target: LinkTarget.self,
                                                  uri: Uri.parse(
                                                      'https://myttube.com/'),
                                                  builder:
                                                      (context, followLink) {
                                                    return TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        tapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        foregroundColor:
                                                            const Color(
                                                                0xff0087FF),
                                                      ),
                                                      onPressed: followLink,
                                                      child: const Text(
                                                        'https://myttube.com',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 8),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
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
                                              minimumSize:
                                                  const Size(65.0, 25.0),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          onPressed: () {},
                                          child: const Text(
                                            'following',
                                            style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontFamily: 'Poppins',
                                                fontSize: 12),
                                          )),
                                      /*    SizedBox(
                                    width: 5,
                                  ), */
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                          )),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4.0, left: 4),
                                        child: Image.network(
                                          userlist[index].image,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  /*      mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly, */
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/likeicon.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Like',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .likecount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*  sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/commenticon.svg',
                                            height: 18,
                                            width: 18,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Comments',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .commentcount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/shareicon.svg',
                                            height: 18,
                                            width: 18,
                                            color: iconColor,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Share',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .sharecount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*    sizedbox(context), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/gifticon1.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Gift',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            userlist[index]
                                                .giftcount
                                                .toString(),
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    /* sizedbox(context), */
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 30.0, left: 25),
                                      child: Text(
                                        userlist[index].viewcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                    /*  Text(
                                      'View',
                                      style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                                    ), */
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/starsave.svg',
                                            height: 18,
                                            width: 18,
                                            color: primaryColorOfApp,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            'Saved',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 8),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          const Text(
                                            '' /* userlist[index].giftcount.toString() */,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                            text: '#Timepass',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 9),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: ' @followmyteam',
                                                style: TextStyle(
                                                    color: primaryColorOfApp,
                                                    fontSize: 8),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' #Study#content#content#sample#morecontentxlam....',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 8),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Iconify(
                                            Bi.check_circle_fill,
                                            color: Color(0xffFD6B06),
                                            size: 18,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              'Xiaomi',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.0),
                                            child: Text(
                                              'Sponsered',
                                              style: TextStyle(
                                                  color: Color(0xff737373),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8),
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
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 17,
                                          )),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 140,
                                      width: 159,
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrOCwZkwuVGBWL0nU_CxxB2x2HtmxDAoeTfw&usqp=CAU',
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
                                          height: 140,
                                          width: 159,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwTt3L2d15j1RMm4L7lpch4bZoOXUKSF9lw&usqp=CAU',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 99,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                minimumSize:
                                                    const Size(159, 33),
                                                backgroundColor:
                                                    const Color(0xffFD6B06),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0))),
                                            child: const Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
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
    image:
        'https://images.unsplash.com/photo-1667382137349-0f5cb5818a7c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
    username: '@Akash',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://images.unsplash.com/photo-1667467931331-30c9783f8bf6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY5fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
    image:
        'https://images.unsplash.com/photo-1662795854059-547d94855285?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
    image:
        'https://img.freepik.com/free-photo/portrait-middle-age-man-videographer-studio_613910-11063.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
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
    image:
        'https://images.news18.com/ibnlive/uploads/2022/09/virat-kohli-asia-cup-ap.jpg',
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
    image:
        'https://m.economictimes.com/thumb/msid-95167227,width-1200,height-900,resizemode-4,imgsize-54742/urvashi-rautela-to-romance-ram-pothineni.jpg',
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
    image:
        'https://upload.wikimedia.org/wikipedia/commons/2/2e/Urvashi_Rautela%2C_2016.jpg',
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
    image:
        'https://assets.vogue.in/photos/636505edc50b613e5402602e/2:3/w_2560%2Cc_limit/Alia%2520Bhatt.jpg',
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
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Alia_Bhatt_at_Berlinale_2022_Ausschnitt.jpg/1200px-Alia_Bhatt_at_Berlinale_2022_Ausschnitt.jpg',
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
    image:
        'https://i.pinimg.com/564x/9b/79/31/9b793177878721edabbd51f6296b61f5--aamir-khan-prince.jpg',
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
    image:
        'https://img.mensxp.com/media/content/2020/Mar/Bollywood-Blockbusters-Aamir-Khan-Declined-1200x900_5e6cd30229e73.jpeg',
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
    image:
        'https://www.koimoi.com/wp-content/new-galleries/2020/07/5-years-of-bajrangi-bhaijaan-one-of-the-most-respected-all-time-blockbusters-of-salman-khan-0001.jpg',
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
    image:
        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201508/bajrangi-bhaijaan-collectio_647_082615065533.jpg?VersionId=6KVftt4jFxT1217QcqGrKZzo7joD2MTI',
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
    image:
        'https://m.economictimes.com/thumb/msid-93765979,width-1200,height-900,resizemode-4,imgsize-33664/ranbir-kapoor.jpg',
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
    image:
        'https://akm-img-a-in.tosshub.com/aajtak/images/photo_gallery/202111/2-10_1.jpg',
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
    image:
        'https://img.mensxp.com/media/content/2022/Nov/Header---Instagram_6360e9e1d1d64.jpeg?w=820&h=540&cc=1',
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
    image:
        'https://www.rri.res.in/sites/default/files/2022-09/Abhisek%20Tamang.jpg',
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
    image:
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
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
    image:
        'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
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
    image:
        'https://i.insider.com/5cb8b133b8342c1b45130629?width=1136&format=jpeg',
    likecount: '67k',
    commentcount: '47k',
    sharecount: '10k',
    giftcount: '15',
    viewcount: '500k+ Views',
  ),
];
