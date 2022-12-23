// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/formfill.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/NEW_FOLDER/history1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Friends1 extends StatefulWidget {
  const Friends1({Key? key}) : super(key: key);

  @override
  State<Friends1> createState() => _Friends1State();
}

class _Friends1State extends State<Friends1> {
  Map myMap = {
    "User1": "HOSPITAL",
    "User2": "PATIENT",
  };
  late FocusNode fullNamefocusNode;

  @override
  void initState() {
    super.initState();
    fullNamefocusNode = FocusNode();

    // listen to focus changes
    /*   focusNode.addListener(() {
    
      setState(() {
        focus = true;
      });
    }); */
  }


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
    final provider = Provider.of<GetCountImage>(context, listen: false);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -10.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Friends',
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
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColorOfApp,
              )),
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
                    text: 'Friends',
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
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      shrinkWrap: true,
                      itemCount: photos.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundImage:
                                              AssetImage(photos[index])),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '@abdcprofile',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: primaryColorOfApp,
                                                  fontSize: 10),
                                            ),
                                            Text(
                                              'profile name',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: customTextColor,
                                                  fontSize: 10),
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
                                                BorderRadius.circular(5.0))),
                                    child: const Text(
                                      "Remove",
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        cursorColor: primaryColorOfApp,
         
                    
                        decoration: buildInputdecoration('e.g. Profile Name'),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ListView.separated(
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          shrinkWrap: true,
                          itemCount: provider.historylist.length,
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
                                              backgroundImage: AssetImage(
                                                  provider.historylist[index].image)),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  '@abdcprofile',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: primaryColorOfApp,
                                                      fontSize: 10),
                                                ),
                                                Text(
                                                  'profile name',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: customTextColor,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Checkbox(
                                          activeColor: primaryColorOfApp,
                                          shape: const CircleBorder(),
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          value: provider.historylist[index].checkValue,
                                          onChanged: (value) async {
                                            setState(() {
                                              provider.historylist[index].checkValue =
                                                  value!;
                                            });
                                            print(
                                                provider.historylist[index].checkValue);
                                          })
                                    ],
                                  ),
                                )
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }


}
  buildInputdecoration(String labeltext) {
    return InputDecoration(
        isDense: true,
        labelText: labeltext,
        errorStyle: const TextStyle(fontSize: 8, height: 0.2),
        labelStyle: TextStyle(
            color: const Color(0xffc4c4c4),
            fontFamily: 'Poppins',
            fontSize: 12),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: customTextColor, width: 0.5)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5),
            borderRadius: BorderRadius.circular(5)));
  }
