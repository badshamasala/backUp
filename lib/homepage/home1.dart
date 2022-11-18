import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/people_profile.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';

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
        backgroundColor: const Color(0xffc4c4c4),
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
                    height: height * 0.05,
                    width: width * 0.11,
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
                      /*  final provider =
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
                      'assets/c2c.svg',
                      width: 17,
                      height: 17,
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
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: primaryColorOfApp),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      color: Color(0xffc4c4c4),
                                      size: 40,
                                    )),
                                Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                      height: 20,
                                      margin: const EdgeInsets.all(0),
                                      padding: const EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          shape: BoxShape.circle,
                                          color: primaryColorOfApp),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 15,
                                          ))),
                                )
                              ]),
                              const SizedBox(
                                height: 2,
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
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: primaryColorOfApp,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1QprGHP-E72bJzurFg83woK-h_i4Fu0WPfQ&usqp=CAU'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: SizedBox(
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Sponsered by',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10)),
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
                                            fontSize: 10,
                                            color: primaryColorOfApp)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: width * 0.08,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side:
                                    const BorderSide(color: primaryColorOfApp),
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                elevation: 0,
                                minimumSize: const Size(60.0, 30.0),
                                foregroundColor: Colors.white,
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 40.0, vertical: 20.0),
                                backgroundColor: primaryColorOfApp,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            onPressed: () {},
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            )),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2022/09/11/199737-bramhastra-tw.jpg?itok=nGR3gI8o ',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width * 0.02,
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
                            width: 20,
                          ),
                          const Text(
                            "100M+",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Views",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 90,
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
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                    /* controller: controller, */
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: userlist.length,
                    itemBuilder: ((context, index) {
                      if (index.isEven) {
                        return Card(
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
                                            radius: 23,
                                            backgroundColor: primaryColorOfApp,
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor: Colors.white,
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    userlist[index].image),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 30,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Color(0xff08A434),
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
                                                    color: primaryColorOfApp)),
                                            Text(userlist[index].status,
                                                style: const TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: Color(0xff08A434))),
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
                                                builder: (context, followLink) {
                                                  return TextButton(
                                                    style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
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
                                                          fontFamily: 'Poppins',
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
                                    /*  SizedBox(
                                width: width * 0.01,
                              ), */
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: primaryColorOfApp),
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            elevation: 0,
                                            minimumSize: const Size(60.0, 30.0),
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
                                        icon: const Icon(Icons.more_vert)),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      userlist[index].image,
                                      width: 305,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              sizedbox(context),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      const Text(
                                        'Like',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].likecount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                      const Text(
                                        'Comments',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].commentcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                        height: height * 0.015,
                                      ),
                                      const Text(
                                        'Share',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].sharecount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  /*    sizedbox(context), */
                                  Column(
                                    children: [
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Iconify(
                                            EmojioneMonotone.wrapped_gift,
                                            color: primaryColorOfApp,
                                          )),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      const Text(
                                        'Gift',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].giftcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  /* sizedbox(context), */
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 30.0),
                                    child: Text(
                                      userlist[index].viewcount.toString(),
                                      style: const TextStyle(
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
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon:
                                              const Iconify(Bi.bookmark_star)),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const Text(
                                        'Save',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                              color: Colors.black, fontSize: 9),
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
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 2.0),
                                          child: Text(
                                            'boat',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 2.0),
                                          child: Text(
                                            'Sponsered',
                                            style: TextStyle(
                                              color: Color(0xff737373),
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert)),
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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwTt3L2d15j1RMm4L7lpch4bZoOXUKSF9lw&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 40,
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
                                        children: const [
                                          Text(
                                            "Shop Now",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
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
                        );
                      } else if (index % 3 == 0) {
                        return Card(
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
                                    const Padding(
                                      padding: EdgeInsets.only(top: 2.0),
                                      child: CircleAvatar(
                                        radius: 23,
                                        backgroundColor: Color(0xff0A8794),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: Text('F',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff0A8794),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w900)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Text('Furniture',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Color(0xff0A8794),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                        Text('@furniture.com',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: primaryColorOfApp)),
                                      ],
                                    ),
                                    /*  SizedBox(
                                width: width * 0.01,
                              ), */
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: primaryColorOfApp),
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            elevation: 0,
                                            foregroundColor: Colors.white,
                                            minimumSize: const Size(60.0, 30.0),
                                            // padding: EdgeInsets.symmetric(
                                            //     horizontal: 40.0, vertical: 20.0),
                                            backgroundColor: primaryColorOfApp,
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
                                    /*    SizedBox(
                                width: 5,
                              ), */
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert)),
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
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'assets/furniture.png',
                                      width: 306,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      elevation: 0,
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xff0C616A),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Order Now',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            size: 15,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                        Row(
                                          children: [
                                            const Text(
                                              'Like',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10),
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
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/shareicon.svg',
                                          color: iconColor,
                                        ),
                                        SizedBox(
                                          height: height * 0.015,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Share',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10),
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
                                        Row(
                                          children: [
                                            const Text(
                                              'Comments',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10),
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
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30.0),
                                      child: Text(
                                        userlist[index].viewcount.toString(),
                                        style: const TextStyle(
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
                                        SvgPicture.asset(
                                          'assets/saveicon.svg',
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
                                                  fontSize: 10),
                                            ),
                                            /* Text(
                                              userlist[index]
                                                  .commentcount
                                                  .toString(),
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10),
                                            ), */
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Card(
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
                                            radius: 23,
                                            backgroundColor: primaryColorOfApp,
                                            child: CircleAvatar(
                                              radius: 22,
                                              backgroundColor: Colors.white,
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    userlist[index].image),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 30,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Color(0xff08A434),
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
                                            const Text('nyraa grover',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            const Text('@nyra_kameover',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: primaryColorOfApp)),
                                            Text(userlist[index].status,
                                                style: const TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: Color(0xff08A434))),
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
                                                builder: (context, followLink) {
                                                  return TextButton(
                                                    style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
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
                                                          fontFamily: 'Poppins',
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
                                    /*  SizedBox(
                                width: width * 0.01,
                              ), */
                                    OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: primaryColorOfApp),
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            elevation: 0,
                                            minimumSize: const Size(60.0, 30.0),
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
                                        icon: const Icon(Icons.more_vert)),
                                  ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      userlist[index].image,
                                      width: 305,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              sizedbox(context),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      const Text(
                                        'Like',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].likecount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                      const Text(
                                        'Comments',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].commentcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                        height: height * 0.015,
                                      ),
                                      const Text(
                                        'Share',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].sharecount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  /*    sizedbox(context), */
                                  Column(
                                    children: [
                                      IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon: const Iconify(
                                            EmojioneMonotone.wrapped_gift,
                                            color: primaryColorOfApp,
                                          )),
                                      SizedBox(
                                        height: height * 0.015,
                                      ),
                                      const Text(
                                        'Gift',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        userlist[index].giftcount.toString(),
                                        style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  /* sizedbox(context), */
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 30.0),
                                    child: Text(
                                      userlist[index].viewcount.toString(),
                                      style: const TextStyle(
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
                                          constraints: const BoxConstraints(),
                                          onPressed: () {},
                                          icon:
                                              const Iconify(Bi.bookmark_star)),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      const Text(
                                        'Save',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
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
                                              color: Colors.black, fontSize: 9),
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
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 2.0),
                                          child: Text(
                                            'Xiaomi',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 2.0),
                                          child: Text(
                                            'Sponsered',
                                            style: TextStyle(
                                              color: Color(0xff737373),
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert)),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrOCwZkwuVGBWL0nU_CxxB2x2HtmxDAoeTfw&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const VerticalDivider(
                                    width: 5,
                                  ),
                                  Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwTt3L2d15j1RMm4L7lpch4bZoOXUKSF9lw&usqp=CAU',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 106,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: const Size(150, 40),
                                              backgroundColor:
                                                  const Color(0xffFD6B06),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: SizedBox(
                                            width: 120,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  "Shop Now",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }
                    })),
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Suggested for you',
                            style: TextStyle(
                                color: Color(0xff333333),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                          Text('View All',
                              style: TextStyle(
                                  color: primaryColorOfApp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const VerticalDivider(
                              color: Colors.white,
                              width: 5,
                            );
                          },
                          itemCount: userlist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    userlist[index].image,
                                    height: 200,
                                    width: 100,
                                    fit: BoxFit.cover,
                                    colorBlendMode: BlendMode.darken,
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  child: CircleAvatar(
                                    radius: 23,
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage:
                                            NetworkImage(images[index]),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  child: Text(userlist[index].userId,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10)),
                                ),
                                Positioned(
                                  top: 85,
                                  child: Text(userlist[index].username,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600)),
                                ),
                                const Positioned(
                                  top: 145,
                                  child: Text('Suggested for you',
                                      style: TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10)),
                                ),
                                Positioned(
                                  top: 165,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: primaryColorOfApp),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          minimumSize: const Size(80.0, 30.0),
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
                                            fontSize: 12),
                                      )),
                                ),
                              ],
                            );
                          })),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                        /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: primaryColorOfApp,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset('assets/flipkart.png'),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text('flipKart',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: primaryColorOfApp,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        Iconify(
                                          Bi.patch_check,
                                          size: 15,
                                          color: primaryColorOfApp,
                                        ),
                                      ],
                                    ),
                                    const Text('Sponsored',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.3,
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: primaryColorOfApp),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  elevation: 0,
                                  foregroundColor: Colors.white,
                                  minimumSize: const Size(70.0, 30.0),
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 40.0, vertical: 20.0),
                                  backgroundColor: primaryColorOfApp,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onPressed: () {},
                              child: const Text(
                                'follow',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 12),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert)),
                        ]),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const VerticalDivider(
                              /*     color: Colors.white, */
                              width: 5,
                            );
                          },
                          itemCount: userlist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJQL_Ix8CVodVD7BI_iCdSCefj-_3Z-kpJ5w&usqp=CAU',
                                  height: 100,
                                  width: 100,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Boats',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10)),
                                          Text('Order only on ',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10)),
                                          Text('Flipkart App',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10)),
                                        ],
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
                                                  const Size(80.0, 30.0),
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
                                          child: const Text(
                                            'Shop Now',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          })),
                    ),
                  ],
                ),
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
];
