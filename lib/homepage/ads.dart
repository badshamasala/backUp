// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/link.dart';

class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  List changeinterest = [
    'Enternainment',
    'Technologies',
    'Education',
    'Finance',
    'Music',
    'Hollywood',
    'Foods',
    'Events',
    'Gov. & Law',
    'Health',
    'Fashion',
    'Business',
    'Beauty',
    'Lifestyle',
    'Bollywood',
    'Sports',
    'Science',
    'News',
    'Tourism',
    'International',
  ];
  List templist = [];
  @override
  Widget build(BuildContext context) {
    Size size;
    double height;
    size = MediaQuery.of(context).size;
    height = size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Ads',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 15.sp)),
          leading: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Iconify(
                Mdi.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
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
                    text: 'Activity',
                  ),
                  Tab(
                    text: 'Change',
                  ),
                ],
              ),
            ),
            Expanded(
              /*   height: 300, */
              child: TabBarView(children: [
                ListView.builder(
                    itemCount: userlist.length,
                    itemBuilder: (context, index) {
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
                                              backgroundImage: AssetImage(
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
                                                  fontWeight: FontWeight.bold)),
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
                                            padding: EdgeInsets.only(
                                                left: 5.0),
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
                                  /*  SizedBox(
                                  width: width * 0.01,
                                ), */
                                  OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: primaryColorOfApp),
                                          padding: EdgeInsets.zero,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          elevation: 0,
                                          minimumSize: const Size(60.0, 30.0),
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
                                      icon: const Icon(Icons.more_vert)),
                                ]),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    userlist[index].image,
                                    width: 305,
                                    fit: BoxFit.cover,
                                  )),
                            ),
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
                                    const Text(
                                      'Like',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].likecount.toString(),
                                      style: const TextStyle(
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
                                    const Text(
                                      'Comments',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].commentcount.toString(),
                                      style: const TextStyle(
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
                                      height: height * 0.015,
                                    ),
                                    const Text(
                                      'Share',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].sharecount.toString(),
                                      style: const TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
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
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      userlist[index].giftcount.toString(),
                                      style: const TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                  ],
                                ),
                                /* sizedbox(context), */
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30.0),
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
                                        icon: const Iconify(Bi.bookmark_star)),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    const Text(
                                      'Save',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    const Text(
                                      '' /* userlist[index].giftcount.toString() */,
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        padding:
                                            EdgeInsets.only(left: 2.0),
                                        child: Text(
                                          'Xiaomi',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 2.0),
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
                                        borderRadius: BorderRadius.circular(5),
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
                                            backgroundColor: const Color(0xffFD6B06),
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
                    }),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Choose Your Interest (minimum 5 Options)',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GridView.builder(
                            padding: const EdgeInsets.all(0),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 33,
                                    /*     childAspectRatio: 3.5, */
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    crossAxisCount: 2),
                            itemCount: changeinterest.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    if (templist
                                        .contains(changeinterest[index])) {
                                      templist.remove(changeinterest[index]);
                                    } else {
                                      templist.add(changeinterest[index]);
                                    }
                                  });
                                  print(templist);
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: templist
                                                .contains(changeinterest[index])
                                            ? primaryColorOfApp
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                            width: 0.5,
                                            color: primaryColorOfApp),
                                        shape: BoxShape.rectangle),
                                    /*  width: 50, */
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        changeinterest[index],
                                        style: TextStyle(
                                            color: templist.contains(
                                                    changeinterest[index])
                                                ? Colors.white
                                                : primaryColorOfApp,
                                            fontFamily: 'Poppins'),
                                      ),
                                    )),
                              );
                            }),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SizedBox(
                          width: double.infinity,
                           height: 6.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                /* minimumSize: const Size(0.0, 40), */
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 40.0, vertical: 20.0),
                                backgroundColor: const Color(0xff0087FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: const UploadImage().radius())),
                            child: const Text(
                              "Save Changes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
