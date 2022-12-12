import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

class Archive extends StatefulWidget {

  const Archive({ Key? key }) : super(key: key);

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {

   @override
   Widget build(BuildContext context) {
     Size size;
    double height;
    double width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Column(
             children: [
               Container(
                                                decoration: BoxDecoration(
                                                    color: const Color(0xffE2E2E2),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                        width: 0.5,
                                                        color: const Color(
                                                            0xffE2E2E2)),
                                                    borderRadius:
                                                        BorderRadius.circular(10)),
                                                child: const TabBar(
                                                  indicatorWeight: 0.1,
                                                  automaticIndicatorColorAdjustment:
                                                      false,
                                                  /* isScrollable: true, */
                                                  indicatorSize:
                                                      TabBarIndicatorSize.label,
                                                  indicatorPadding: EdgeInsets.zero,
                                                  labelColor: primaryColorOfApp,
                                                  unselectedLabelColor:
                                                      Color(0xff333333),
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
                  SizedBox(
                                            height: 390,
                                            child: TabBarView(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: height * 0.01,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                       
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/awardicon.svg',
                                                                height: 18,
                                                                width: 18,
                                                              ),
                                                              SizedBox(
                                                                width: width * 0.01,
                                                              ),
                                                              RichText(
                                                                text:
                                                                    const TextSpan(
                                                                  text:
                                                                      'Rewards from',
                                                                  style: TextStyle(
                                                                      color:
                                                                          customTextColor,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          10),
                                                                  children: <
                                                                      TextSpan>[
                                                                    TextSpan(
                                                                        text:
                                                                            'myttube’s',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              primaryColorOfApp,
                                                                          fontFamily:
                                                                              'Satisfy',
                                                                        )),
                                                                    TextSpan(
                                                                        text:
                                                                            'Sponshored partners',
                                                                        style: TextStyle(
                                                                            color:
                                                                                customTextColor,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                10)),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Iconify(
                                                            Eva.arrow_right_fill,
                                                            size: 15,
                                                            color: Color(
                                                                0xff333333),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                     
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/gifticon1.svg',
                                                                height: 20,
                                                                width: 20,
                                                              ),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              const Text(
                                                                'Received Gift from Fans/Followers',
                                                                style: TextStyle(
                                                                    fontFamily: 'Poppins',
                                                                    color: Color(0xff333333),
                                                                    /*     fontWeight:
                                                                FontWeight.bold, */
                                                                    fontSize: 10),
                                                              ),
                                                            ],
                                                          ),
                                                          const Iconify(
                                                            Eva.arrow_right_fill,
                                                            size: 15,
                                                            color: Color(
                                                                0xff333333),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.03,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                              
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SvgPicture.asset(
                                                                'assets/digitalicon.svg',
                                                                height: 15,
                                                                width: 15,
                                                                color:
                                                                    primaryColorOfApp,
                                                              ),
                                                              SizedBox(
                                                                width: width *
                                                                    0.01,
                                                              ),
                                                              RichText(
                                                                text:
                                                                    const TextSpan(
                                                                  text:
                                                                      'Collect Points from',
                                                                  style: TextStyle(
                                                                      color:
                                                                          customTextColor,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          10),
                                                                  children: <
                                                                      TextSpan>[
                                                                    TextSpan(
                                                                        text:
                                                                            'myttube’s',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              primaryColorOfApp,
                                                                          fontFamily:
                                                                              'Satisfy',
                                                                        )),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Iconify(
                                                            Eva.arrow_right_fill,
                                                            size: 15,
                                                            color: Color(
                                                                0xff333333),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.05,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        const Text(
                                                          'Invite your friends\n Win surprise gift',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xff333333),
                                                              /*     fontWeight:
                                                              FontWeight.bold, */
                                                              fontSize: 10),
                                                        ),
                                                        OutlinedButton.icon(
                                                          icon:
                                                              SvgPicture.asset(
                                                            'assets/inviteicon.svg',
                                                            /*     height: 18,
                                                            width: 18, */
                                                          ),
                                                          onPressed: () {},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                                  minimumSize:
                                                                      const Size(
                                                                          140,
                                                                          35),
                                                                  /*    minimumSize: Size(32, 30), */
                                                                  elevation: 0,
                                                                  /* padding: EdgeInsets.zero, */
                                                                  tapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  side:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xff0087FF),
                                                                  ),
                                                                  /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                                                  foregroundColor:
                                                                      primaryColorOfApp,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                          label: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    1.0),
                                                            child: Text(
                                                              "Invite",
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins'),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/multidigi.svg',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/awardicon.svg',
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ]),
                                          ),                             
             ],
           ),
       );
  }
}