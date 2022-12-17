// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chat_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class ArchiveCheck extends StatefulWidget {
  const ArchiveCheck({Key? key}) : super(key: key);

  @override
  State<ArchiveCheck> createState() => _ArchiveCheckState();
}

class _ArchiveCheckState extends State<ArchiveCheck> {
  Map myMap = {
    "User1": "HOSPITAL",
    "User2": "PATIENT",
  };

  var dropdownkivalue;
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: primaryColorOfApp, // <-- SEE HERE
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Archive',
            style: TextStyle(
                color: customTextColor, fontFamily: 'Poppins', fontSize: 15),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: primaryColorOfApp,
                )),
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
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
                    text: 'Chat-Box',
                  ),
                  Tab(
                    text: 'All Post',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child:  ListView.separated(
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
                            }))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const UploadImage().radius(),
                              border:
                                  Border.all(color: Colors.black, width: 0.5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: DropdownButton(
                                  hint: const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'select ',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Color(0xffC4C4C4)),
                                    ),
                                  ),
                                  value: dropdownkivalue,
                                  items: myMap.entries
                                      .map((e) => DropdownMenuItem(
                                          value: e.value, child: Text(e.value)))
                                      .toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      dropdownkivalue = val;
                                    });
                                  }),
                            ),
                          ),
                          ElevatedButton.icon(
                            icon: SvgPicture.asset(
                              'assets/c2c.svg',
                              /* width: 17,
                              height: 17, */
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                minimumSize: const Size(80, 30),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 40.0, vertical: 20.0),
                                backgroundColor: const Color(0xff0087FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            label: const Text(
                              "Create",
                              style: TextStyle(
                                  color: Colors.white,
                                  /*       fontSize: 18, */
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
