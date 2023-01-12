// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ri.dart';

class Peopleprofiletab extends StatefulWidget {
  final value;
  const Peopleprofiletab({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<Peopleprofiletab> createState() => _PeopleprofiletabState();
}

class _PeopleprofiletabState extends State<Peopleprofiletab>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: 3, initialIndex: widget.value);
  
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return /* DefaultTabController(
        length: 3,
        child: */
        Scaffold(
            appBar: AppBar(
              titleSpacing: 1,
              automaticallyImplyLeading: true,
              iconTheme: const IconThemeData(color: primaryColorOfApp),
              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: primaryColorOfApp,
                    child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.grey.shade800,
                          backgroundImage: const NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
                        )),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Text(
                    '@Nanncyjain23',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Color(0xff0087FF)),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Iconify(
                    Bi.patch_check,
                    size: 15,
                    color: primaryColorOfApp,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Text(
                    'Nanncy Jain',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: customTextColor),
                  ),
                ],
              ),
            ),
            body: Column(children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffE2E2E2),
                    shape: BoxShape.rectangle,
                    border:
                        Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TabBar(
                    controller: tabController,
                    indicatorWeight: 1,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.zero,
                    labelColor: const Color(0xff0087FF),
                    unselectedLabelColor: const Color(0xff333333),
                    tabs: const [
                      Tab(
                        height: 20,
                        child: Text(
                          'Followers',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Text(
                          'Following',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 11),
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Text(
                          'Connect',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Iconify(
                                    Ri.search_line,
                                    size: 15,
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(),
                                isDense: true,
                                labelText: 'Search Profile Name',
                                labelStyle: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff737373)),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Rajan Mistry-1 ',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                                Text(
                                                  '@m.rajan02',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: const Size(80, 30),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  const Color(0xff0087FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: const Text(
                                            "follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                /*       fontSize: 18, */
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Iconify(
                                    Ri.search_line,
                                    size: 15,
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(),
                                isDense: true,
                                labelText: 'Search Profile Name',
                                labelStyle: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff737373)),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Rajan Mistry-1 ',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                                Text(
                                                  '@m.rajan02',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: const Size(80, 30),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  const Color(0xff0087FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: const Text(
                                            "follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                /*       fontSize: 18, */
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Iconify(
                                    Ri.search_line,
                                    size: 15,
                                    color: Color(0xffDADADA),
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(),
                                isDense: true,
                                labelText: 'Search Profile Name',
                                labelStyle: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff737373)),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'Rajan Mistry-1 ',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                                Text(
                                                  '@m.rajan02',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              minimumSize: const Size(80, 30),
                                              // padding: EdgeInsets.symmetric(
                                              //     horizontal: 40.0, vertical: 20.0),
                                              backgroundColor:
                                                  const Color(0xff0087FF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: const Text(
                                            "follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                /*       fontSize: 18, */
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]));
    /*  ); */
  }
}
