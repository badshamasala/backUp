// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/formfill.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/archive_post/history1.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class FavoriteProfile extends StatefulWidget {
  const FavoriteProfile({Key? key}) : super(key: key);

  @override
  State<FavoriteProfile> createState() => _FavoriteProfileState();
}

class _FavoriteProfileState extends State<FavoriteProfile> {
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
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Favorites Profile',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 13.sp)),
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
              height: 5.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(10)),
              child: const TabBar(
                labelStyle: TextStyle(fontFamily: 'Poppins'),
                indicatorWeight: 0.1,
                indicatorColor: Colors.transparent,
                automaticIndicatorColorAdjustment: false,
                /* isScrollable: true, */
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.zero,
                labelColor: primaryColorOfApp,
                unselectedLabelColor: Color(0xff333333),
                tabs: [
                  Tab(
                    text: 'Favorite',
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
                        return const Divider(
                          color: Colors.transparent,
                        );
                      },
                      shrinkWrap: true,
                      itemCount: photos.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 2.sp),
                          child: Column(
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
                                          backgroundColor: Colors.black,
                                          radius: 18.sp,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 17.sp,
                                            child: CircleAvatar(
                                                radius: 16.sp,
                                                backgroundImage:
                                                    AssetImage(photos[index])),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 1.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '@abdcprofile',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: primaryColorOfApp,
                                                    fontSize: 11.sp),
                                              ),
                                              Text(
                                                'profile name',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: customTextColor,
                                                    fontSize: 11.sp),
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
                                          minimumSize: Size(30.w, 5.h),
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 40.0, vertical: 20.0),
                                          backgroundColor:
                                              const Color(0xff0087FF),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                      child: Text(
                                        "Remove",
                                        style: TextStyle(
                                            color: Colors.white,
                                            /*       fontSize: 18, */
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
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
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        /* validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        }, */
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
                                                  provider.historylist[index]
                                                      .image)),
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
                                          value: provider
                                              .historylist[index].checkValue,
                                          onChanged: (value) async {
                                            setState(() {
                                              provider.historylist[index]
                                                  .checkValue = value!;
                                            });
                                            print(provider
                                                .historylist[index].checkValue);
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

  buildInputdecoration(String labeltext) {
    return InputDecoration(
        isDense: true,
        labelText: labeltext,
        errorStyle: const TextStyle(fontSize: 8, height: 0.2),
        labelStyle: TextStyle(
            color: fullNamefocusNode.hasFocus
                ? customTextColor
                : const Color(0xffc4c4c4),
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
}
