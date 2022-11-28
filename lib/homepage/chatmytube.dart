import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chat_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/charm.dart';

class Chatmytube extends StatefulWidget {
  const Chatmytube({Key? key}) : super(key: key);

  @override
  State<Chatmytube> createState() => _ChatmytubeState();
}

class _ChatmytubeState extends State<Chatmytube> {
  var photos = [
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',
    'https://img.freepik.com/free-photo/pleased-woman-with-light-brown-skin-posing-with-crossed-arms-smiling-while-people-her-working-indoor-portrait-tired-students-with-laptop-african-curly-girl_197531-3760.jpg?w=2000',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
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
                    Text(
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
                    Text(
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
              child: TabBar(
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
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(
                                    Icons.search,
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(),
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
                            separatorBuilder: (context, index) => Divider(
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
                                      color: Color(0xffF0F0F0),
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
                                                  backgroundImage: NetworkImage(
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
                                                      Text(
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
                                                  Text(
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
                          backgroundImage: NetworkImage(photos[index]),
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
                        subtitle: Text(
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
                          backgroundImage: NetworkImage(photos[index]),
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
                        subtitle: Text(
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
