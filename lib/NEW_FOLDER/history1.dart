// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/cil.dart';
import 'package:iconify_flutter/icons/ion.dart';

class History1 extends StatefulWidget {
  const History1({Key? key}) : super(key: key);

  @override
  State<History1> createState() => _History1State();
}

class _History1State extends State<History1> {
  bool checkicon = false;
  bool checkKiValue = false;
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
          elevation: 0,
          iconTheme: const IconThemeData(
            color: primaryColorOfApp, // <-- SEE HERE
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'History',
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
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(5)),
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
                    text: 'Viewed',
                  ),
                  Tab(
                    text: 'Search',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        checkicon
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Color(0xffED1B24),
                                        size: 15,
                                      ),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {},
                                      label: const Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: Color(0xffED1B24),
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      )),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          checkicon = false;
                                        });
                                      },
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ))
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Recent viewed',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 12),
                                  ),
                                  TextButton.icon(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          deletefunction();
                                        });
                                      },
                                      label: const Text(
                                        'Clear all',
                                        style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ))
                                ],
                              ),
                        const Divider(),
                        ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemCount: historylist.length,
                            itemBuilder: (context, index) {
                              return historylist.isEmpty
                                  ? Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.red,
                                    )
                                  : InkWell(
                                      onLongPress: () {
                                        setState(() {
                                          checkicon = true;
                                        });
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                width: 190,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 17,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  historylist[
                                                                          index]
                                                                      .profileImage),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              historylist[index]
                                                                  .userId,
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    primaryColorOfApp,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Text(
                                                              historylist[index]
                                                                  .username,
                                                              style:
                                                                  const TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    checkicon
                                                        ? Checkbox(
                                                            activeColor:
                                                                primaryColorOfApp,
                                                            shape:
                                                                const CircleBorder(),
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            value: historylist[
                                                                    index]
                                                                .checkValue,
                                                            onChanged:
                                                                (value) async {
                                                              setState(() {
                                                                historylist[index]
                                                                        .checkValue =
                                                                    value!;
                                                              });
                                                              print(historylist[
                                                                      index]
                                                                  .checkValue);
                                                            })
                                                        : const Text('')
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: height * 0.05,
                                              ),
                                              SizedBox(
                                                child: SizedBox(
                                                  width: 190,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        historylist[index]
                                                            .createdAt,
                                                        style: const TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                        ),
                                                      ),
                                                      Text(
                                                        historylist[index]
                                                            .viewcount,
                                                        style: const TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              historylist[index].image,
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                            }),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Recent Search',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            ),
                            TextButton.icon(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                onPressed: () {
                                  setState(() {
                                    deletefunction();
                                  });
                                },
                                label: const Text(
                                  'Clear all',
                                  style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ))
                          ],
                        ),
                        const Divider(),
                        ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                            itemCount: historylist.length,
                            itemBuilder: (context, index) {
                              return historylist.isEmpty
                                  ? Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.red,
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Iconify(Cil.history),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: CircleAvatar(
                                                radius: 17,
                                                backgroundImage: NetworkImage(
                                                    historylist[index]
                                                        .profileImage),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    historylist[index].userId,
                                                    style: const TextStyle(
                                                      color: primaryColorOfApp,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    historylist[index].username,
                                                    style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    historylist[index]
                                                        .createdAt,
                                                    style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 7,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Iconify(
                                                Ion.md_close_circle_outline)),
                                      ],
                                    );
                            }),
                      ],
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  deletefunction() {
    historylist.clear();
  }
}

class HistoryModal {
  final String userId;
  final String profileImage;
  final String createdAt;
  final String username;
  final String image;
  final String viewcount;
  late bool checkValue;

  HistoryModal({
    required this.userId,
    required this.profileImage,
    required this.createdAt,
    required this.username,
    required this.image,
    required this.viewcount,
    required this.checkValue,
  });
}

List<HistoryModal> historylist = [
  HistoryModal(
    userId: "@abdcprofile",
    profileImage:
        "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp",
    createdAt: "09-September 2022  7:33PM",
    username: "profile name",
    image:
        "https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=",
    viewcount: "You & 101M+ Views",
    checkValue: false,
  ),
  HistoryModal(
    userId: "@abdcprofile",
    profileImage:
        "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp",
    createdAt: "09-September 2022  7:33PM",
    username: "profile name",
    image:
        "https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=",
    viewcount: "You & 101M+ Views",
    checkValue: false,
  ),
  HistoryModal(
    userId: "@abdcprofile",
    profileImage:
        "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp",
    createdAt: "09-September 2022  7:33PM",
    username: "profile name",
    image:
        "https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=",
    viewcount: "You & 101M+ Views",
    checkValue: false,
  ),
];
