// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/cil.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

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
    final provider = Provider.of<GetCountImage>(context, listen: false);
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
          title: Text('History',
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
                                  provider.tempList.isEmpty
                                      ? Container()
                                      : Row(
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
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                ),
                                                onPressed: () {
                                                  provider.deleteSelectItem();
                                                  setState(() {
                                                    checkicon = false;
                                                  });
                                                },
                                                label: const Text(
                                                  'Delete',
                                                  style: TextStyle(
                                                    color: Color(0xffED1B24),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                  ),
                                                )),
                                            Text(
                                              ' (${context.watch<GetCountImage>().count.toString()} Selected)',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 8.sp,
                                                  color: customTextColor),
                                            ),
                                          ],
                                        ),
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
                            itemCount: provider.historylist.length,
                            itemBuilder: (context, index) {
                              return provider.historylist.isEmpty
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
                                                              AssetImage(provider
                                                                  .historylist[
                                                                      index]
                                                                  .profileImage),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              provider
                                                                  .historylist[
                                                                      index]
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
                                                              provider
                                                                  .historylist[
                                                                      index]
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
                                                            value: provider
                                                                .historylist[
                                                                    index]
                                                                .checkValue,
                                                            onChanged:
                                                                (value) async {
                                                              setState(() {
                                                                provider
                                                                    .historylist[
                                                                        index]
                                                                    .checkValue = value!;
                                                              });
                                                              provider
                                                                  .getUpdate(
                                                                      index);
                                                              print(provider
                                                                  .historylist[
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
                                                        provider
                                                            .historylist[index]
                                                            .createdAt,
                                                        style: const TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                        ),
                                                      ),
                                                      Text(
                                                        provider
                                                            .historylist[index]
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
                                            child: Image.asset(
                                              provider.historylist[index].image,
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
                            itemCount: provider.historylist.length,
                            itemBuilder: (context, index) {
                              return provider.historylist.isEmpty
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
                                                backgroundImage: AssetImage(
                                                    provider.historylist[index]
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
                                                    provider.historylist[index]
                                                        .userId,
                                                    style: const TextStyle(
                                                      color: primaryColorOfApp,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    provider.historylist[index]
                                                        .username,
                                                    style: const TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    provider.historylist[index]
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
    final provider = Provider.of<GetCountImage>(context, listen: false);
    provider.historylist.clear();
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

class GetCountImage extends ChangeNotifier {
  List<HistoryModal> historylist = [
    HistoryModal(
      userId: "@abdcprofile",
      profileImage: "assets/image1.webp",
      createdAt: "09-September 2022  7:33PM",
      username: "profile name",
      image: "assets/image2.jpg",
      viewcount: "You & 101M+ Views",
      checkValue: false,
    ),
    HistoryModal(
      userId: "@abdcprofile",
      profileImage: "assets/image3.jpg",
      createdAt: "09-September 2022  7:33PM",
      username: "profile name",
      image: "assets/image4.webp",
      viewcount: "You & 101M+ Views",
      checkValue: false,
    ),
    HistoryModal(
      userId: "@abdcprofile",
      profileImage: "assets/image5.jpeg",
      createdAt: "09-September 2022  7:33PM",
      username: "profile name",
      image: "assets/image6.webp",
      viewcount: "You & 101M+ Views",
      checkValue: false,
    ),
  ];
  List tempList = [];

  int get count => tempList.length;
  int get _count => historylist.length;

  getUpdate(index) {
    if (tempList.contains(historylist[index])) {
      tempList.remove(historylist[index]);
    } else {
      tempList.add(historylist[index]);
    }
    print(tempList.length);
    print(tempList);
    notifyListeners();
  }

  deleteSelectItem() {
    historylist.removeWhere((element) => element.checkValue == true);
    notifyListeners();
  }
}
