import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

class Interaction1 extends StatefulWidget {
  const Interaction1({Key? key}) : super(key: key);

  @override
  State<Interaction1> createState() => _Interaction1State();
}

class _Interaction1State extends State<Interaction1> {
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          /*   leadingWidth: 8, */
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Interactions',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff333333),
              )),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: primaryColorOfApp,
                )),
          ),
        ),
        body: Column(
          children: [
            
            
            ButtonsTabBar(
              borderWidth: 1,
              buttonMargin: EdgeInsets.all(6),
              borderColor: primaryColorOfApp,
              unselectedBorderColor: primaryColorOfApp,
              contentPadding: EdgeInsets.symmetric(horizontal: 24),
              radius: 20,
              backgroundColor: Color(0xff0087FF),
              unselectedBackgroundColor: Color(0xffFFFFFF),
              unselectedLabelStyle: TextStyle(color: Color(0xff0087FF)),
              labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
              tabs: [
                Tab(
                  text: "Viewed me",
                ),
                Tab(
                  text: "Public-Survey",
                ),
                Tab(
                  text: "Likes-Post",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Visit Your Profile',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    images[index])),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
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
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Your Survey Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: customTextColor),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: SvgPicture.asset(
                                                'assets/graph.svg',
                                                width: 60,
                                                height: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Likes Your Post',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                images[index],
                                                height: 40,
                                                width: 40,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '@abdcprofile',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    'profile name',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    '25-November 2022  7:33PM',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: customTextColor,
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                          color: Color(0xff333333),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
