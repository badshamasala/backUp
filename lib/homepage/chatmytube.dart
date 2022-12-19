import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chat_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class Chatmytube extends StatefulWidget {
  const Chatmytube({Key? key}) : super(key: key);

  @override
  State<Chatmytube> createState() => _ChatmytubeState();
}

class _ChatmytubeState extends State<Chatmytube> {
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        /*  appBar: AppBar(
          title: const Text(''),
        ), */
        body: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image(
                        image: const AssetImage(
                          'assets/logo.png',
                        ),
                        height: height * 0.04,
                        width: width * 0.10,
                        fit: BoxFit.fitHeight),
                    const Text(
                      'Chat-box',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/groupforchat.svg',
                      height: 25,
                      width: 25,
                    ),
                    const Text(
                      'Groups',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(10)),
              child: const TabBar(
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    color: customTextColor,
                    fontSize: 12),
                indicatorWeight: 0.1,
                automaticIndicatorColorAdjustment: false,
                /* isScrollable: true, */
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.zero,
                labelColor: primaryColorOfApp,
                unselectedLabelColor: Color(0xff333333),
                tabs: [
                  Tab(
                    text: 'Inbox',
                  ),
                  Tab(
                    text: 'Request',
                  ),
                  Tab(
                    text: 'New',
                  ),
                ],
              ),
            ),
            Expanded(
              /*   height: 300, */
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(),
                                isDense: true,
                                labelText: 'Search',
                                errorStyle:
                                    const TextStyle(fontSize: 8, height: 0.2),
                                labelStyle: const TextStyle(
                                    color: Color(0xffDADADA),
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: Color(0xff0087FF), width: 0.5)),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                        color: customTextColor, width: 0.5)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff0087FF), width: 0.5),
                                    borderRadius: BorderRadius.circular(5)))),
                      ),
                      Flexible(
                        child: ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => const Divider(
                                  color: Colors.transparent,
                                  height: 8,
                                ),
                            itemCount: photos.length,
                            itemBuilder: ((context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatScreen(
                                              value: photos[index],
                                            )),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xffF0F0F0),
                                      shape: BoxShape.rectangle),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 16,
                                                  backgroundImage: AssetImage(
                                                      photos[index]),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            '@myttube',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    customTextColor,
                                                                fontSize: 12),
                                                          ),
                                                          Iconify(
                                                            Bi.patch_check,
                                                            size: 10,
                                                            color:
                                                                primaryColorOfApp,
                                                          ),
                                                        ],
                                                      ),
                                                      const Text(
                                                        'hello, how are you?',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            color:
                                                                customTextColor,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    '10:15 pm',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/doubletick.svg',
                                                    height: 10,
                                                    width: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    itemCount: photos.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(photos[index]),
                        ),
                        title: Row(
                          children: const [
                            Text(
                              '@myttube',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            ),
                            Iconify(
                              Bi.patch_check,
                              size: 10,
                              color: primaryColorOfApp,
                            ),
                          ],
                        ),
                        subtitle: const Text(
                          'hello, how are you?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 12),
                        ),
                      );
                    })),
                ListView.builder(
                    itemCount: photos.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(photos[index]),
                        ),
                        title: Row(
                          children: const [
                            Text(
                              '@myttube',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            ),
                            Iconify(
                              Bi.patch_check,
                              size: 10,
                              color: primaryColorOfApp,
                            ),
                          ],
                        ),
                        subtitle: const Text(
                          'hello, how are you?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: customTextColor,
                              fontSize: 12),
                        ),
                      );
                    })),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
