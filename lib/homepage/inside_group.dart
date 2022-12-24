import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:url_launcher/link.dart';

class InsideGroup extends StatefulWidget {
  const InsideGroup({Key? key}) : super(key: key);

  @override
  State<InsideGroup> createState() => _InsideGroupState();
}

class _InsideGroupState extends State<InsideGroup> {
  final top = 45.0;
  bool exitGroup = false;
  bool scamGroup = false;
  bool hatefulGroup = false;
  bool adultGroup = false;
  bool fakeGroup = false;
  dynamic groupValues;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: customTextColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Image.network(
                            'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
                            fit: BoxFit.cover,
                          )),
                      Positioned(
                        top: top,
                        child: Row(
                          /*   mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                          children: [
                            SizedBox(
                              width: width * 0.01,
                            ),
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
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      radius: 48,
                                      backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(97, 25),
                                  elevation: 5,
                                  /*   padding: EdgeInsets.zero, */
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  side: const BorderSide(
                                    color: Color(0xff0087FF),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 0),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              child: Row(
                                children: [
                                  const Text(
                                    "125k",
                                    style: TextStyle(
                                        color: primaryColorOfApp,
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: width * 0.001,
                                  ),
                                  const Text(
                                    "Members",
                                    style: TextStyle(
                                        color: primaryColorOfApp,
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
                                  minimumSize: const Size(97, 25),
                                  elevation: 5,
                                  /*   padding: EdgeInsets.zero, */
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  side: const BorderSide(
                                    color: Color(0xff0087FF),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 0),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              child: const Text(
                                "Joined",
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 115,
                        top: 110,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 190,
                                  /*    color: Colors.red, */
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Group Name',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/groupforchat.svg',
                                            height: 14,
                                            width: 14,
                                          ),
                                          const Text(
                                            'Public Group',
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Text(
                                  '@Group.Username',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff0087FF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 150,
                        child: Column(
                          children: [
                            const Text(
                              'Group Admin Created by @profile_username\n Bio  #content #Lorem ipsum quis nibh content....#sample #more..\n https://youtu.be/AgS_6UbQ8JM https://myttube.com ',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Row(
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        /*   isScrollControlled: true, */
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
                                                        /*   mainAxisSize:
                                                            MainAxisSize.min, */
                                                        children: [
                                                          SizedBox(
                                                            height:
                                                                height * 0.01,
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
                                                                        BorderRadius.circular(
                                                                            8)),
                                                                height: 5,
                                                                width: 100,
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                height * 0.01,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: const [
                                                              Text(
                                                                '@group_user-id',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12,
                                                                    color:
                                                                        primaryColorOfApp),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: const [
                                                              Text(
                                                                'what do you want to do?',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'I want to exit group',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Radio(
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  value:
                                                                      exitGroup,
                                                                  groupValue:
                                                                      groupValues,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      exitGroup =
                                                                          true;
                                                                      scamGroup =
                                                                          false;

                                                                      groupValues =
                                                                          exitGroup;
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'fraud or Scam group',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Radio(
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  value:
                                                                      scamGroup,
                                                                  groupValue:
                                                                      groupValues,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      groupValues =
                                                                          scamGroup;
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'hateful speech',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Radio(
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  value:
                                                                      hatefulGroup,
                                                                  groupValue:
                                                                      groupValues,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      groupValues =
                                                                          hatefulGroup;
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'adult content ',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Radio(
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  value:
                                                                      adultGroup,
                                                                  groupValue:
                                                                      groupValues,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      adultGroup =
                                                                          true;
                                                                      exitGroup =
                                                                          false;
                                                                      groupValues =
                                                                          adultGroup;
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              const Text(
                                                                'fake group',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                              Radio(
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  value:
                                                                      fakeGroup,
                                                                  groupValue:
                                                                      groupValues,
                                                                  onChanged:
                                                                      (val) {
                                                                    setState(
                                                                        () {
                                                                      groupValues =
                                                                          fakeGroup;
                                                                    });
                                                                  })
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                height * 0.05,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              OutlinedButton(
                                                                onPressed:
                                                                    () {},
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                        minimumSize: const Size(
                                                                            130, 30),
                                                                        elevation:
                                                                            0,
                                                                        /*   padding: EdgeInsets.zero, */
                                                                        tapTargetSize:
                                                                            MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                        side:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xff0087FF),
                                                                        ),
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                9,
                                                                            vertical:
                                                                                0),
                                                                        backgroundColor:
                                                                            primaryColorOfApp,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child:
                                                                    const Text(
                                                                  "Exit group",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              OutlinedButton(
                                                                onPressed:
                                                                    () {},
                                                                style: OutlinedButton
                                                                    .styleFrom(
                                                                        minimumSize: const Size(
                                                                            130,
                                                                            30),
                                                                        elevation:
                                                                            0,
                                                                        /*   padding: EdgeInsets.zero, */
                                                                        tapTargetSize:
                                                                            MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                        side:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xff0087FF),
                                                                        ),
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                9,
                                                                            vertical:
                                                                                0),
                                                                        backgroundColor:
                                                                            Colors
                                                                                .white,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0))),
                                                                child:
                                                                    const Text(
                                                                  "Exit & report",
                                                                  style: TextStyle(
                                                                      color:
                                                                          primaryColorOfApp,
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ])),
                                                positionCross(context)
                                              ],
                                            );
                                          });
                                        });
                                  },
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: const Size(140, 30),
                                      elevation: 0,
                                      side: const BorderSide(
                                        color: primaryColorOfApp,
                                      ),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/c2c.svg',
                                        width: 15,
                                        height: 15,
                                        color: primaryColorOfApp,
                                      ),
                                      SizedBox(
                                        width: width * 0.001,
                                      ),
                                      const Text(
                                        "Post",
                                        style: TextStyle(
                                            color: primaryColorOfApp,
                                            fontSize: 12,
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
                                      minimumSize: const Size(140, 30),
                                      elevation: 0,
                                      /*   padding: EdgeInsets.zero, */
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      side: const BorderSide(
                                        color: Color(0xff0087FF),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 9, vertical: 0),
                                      backgroundColor: primaryColorOfApp,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  child: const Text(
                                    "Create Group",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userlist.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        margin: EdgeInsets.zero,
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
                                          backgroundColor: primaryColorOfApp,
                                          child: CircleAvatar(
                                            radius: 17,
                                            backgroundColor: Colors.white,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundImage: NetworkImage(
                                                userlist[index].image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        top: 26,
                                        child: CircleAvatar(
                                          radius: 4,
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
                                          const Text('nyraa grover ',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold)),
                                          Text(userlist[index].userId,
                                              style: const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color: primaryColorOfApp)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.0),
                                            child: Text(userlist[index].status,
                                                style: const TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: Color(0xff08A434))),
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
                                            padding: EdgeInsets.only(left: 5.0),
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
                                                        const Color(0xff0087FF),
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
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: primaryColorOfApp),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          minimumSize: const Size(65.0, 25.0),
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 40.0, vertical: 20.0),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
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
                                  padding: const EdgeInsets.only(left: 15.0),
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
                                            fontFamily: 'Poppins', fontSize: 8),
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
                                ),
                                /*  sizedbox(context), */
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
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
                                            fontFamily: 'Poppins', fontSize: 8),
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
                                ),
                                /*    sizedbox(context), */
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
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
                                            fontFamily: 'Poppins', fontSize: 8),
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
                                ),
                                /*    sizedbox(context), */
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
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
                                            fontFamily: 'Poppins', fontSize: 8),
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
                                  padding: const EdgeInsets.only(left: 25.0),
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
                                            fontFamily: 'Poppins', fontSize: 8),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.only(right: 8.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            minimumSize: const Size(159, 33),
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
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
