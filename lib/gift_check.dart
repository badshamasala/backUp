import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

import 'homepage/profile_self.dart';

class GiftCheck extends StatefulWidget {
  const GiftCheck({Key? key}) : super(key: key);

  @override
  State<GiftCheck> createState() => _GiftCheckState();
}

class _GiftCheckState extends State<GiftCheck> {
  @override
  Widget build(BuildContext context) {
    Size size;
    double height;
    size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      // <-- SEE HERE
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.0),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE2E2E2),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            height: 5,
                                            width: 100,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Gift send to',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: primaryColorOfApp,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      const Divider(),
                                      InkWell(
                                        onTap: () {
                                          buildloginActivity(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/loginActivity.svg',
                                                  height: 18,
                                                  width: 18,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Login Activity',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                            const Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: customTextColor,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          buildSavePassword(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/savePassword.svg',
                                                  height: 18,
                                                  width: 18,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Saved Password',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                            const Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          buildPassword(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/securepass.svg',
                                                  height: 18,
                                                  width: 18,
                                                ),
                                                const SizedBox(
                                                  width: 13,
                                                ),
                                                Text(
                                                  'Password',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                            const Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          buildMobile(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: SvgPicture.asset(
                                                    'assets/mobile1.svg',
                                                    height: 18,
                                                    width: 18,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  'Mobile',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                            const Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          buildEmail(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/email.svg',
                                                  height: 15,
                                                  width: 15,
                                                ),
                                                const SizedBox(
                                                  width: 9,
                                                ),
                                                Text(
                                                  'Email',
                                                  style: ProfileSelf()
                                                      .buildtextstyle(),
                                                ),
                                              ],
                                            ),
                                            const Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                    ])),
                            positionCross(context)
                          ],
                        );
                      });
                    });
              },
              child: const Text('btn'))
        ],
      ),
    );
  }
}
