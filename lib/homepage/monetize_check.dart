import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/rewards_point.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class MonetizeCheck extends StatefulWidget {
  const MonetizeCheck({Key? key}) : super(key: key);

  @override
  State<MonetizeCheck> createState() => _MonetizeCheckState();
}

class _MonetizeCheckState extends State<MonetizeCheck> {
  bool switch1 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Monetize',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/monetize2.svg',
                  height: 150,
                  width: 300,
                  /*  fit: BoxFit.cover, */
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    'Required',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: customTextColor,
                        fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'after successful 10k followers complete,',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 10.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'your gift button automatically ON',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 10.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'show your every post/content below',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 10.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w, bottom: 0.5.h),
                  child: Text(
                    'if you are not interested from accepting gift',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: customTextColor,
                        fontSize: 9.sp),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: customTextColor),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: Text(
                      'Please this mode Off',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 10.sp),
                    ),
                  ),
                  Switch.adaptive(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: switch1,
                      onChanged: ((value) {
                        setState(() {
                          switch1 = value;
                        });
                      }))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Your profile is not Verify',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10.sp),
                ),
                Iconify(
                  Bi.patch_check,
                  size: 20.sp,
                  color: const Color(0xffED1B24),
                ),
                Text(
                  'send requiest to ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  width: 12.w,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: () {},
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: primaryColorOfApp,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Review',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 12.sp),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      alignment: Alignment.bottomLeft,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    'terms of services',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      alignment: Alignment.bottomLeft,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    'monetize policy',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '&',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        alignment: Alignment.topRight,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      'read more',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: primaryColorOfApp,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

showScratchCard(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return DefaultTabController(
          length: 2,
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      RichText(
                        text: const TextSpan(
                          text: 'Rewards from',
                          style: TextStyle(
                              color: customTextColor,
                              fontFamily: 'Poppins',
                              fontSize: 10),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'myttube’s',
                                style: TextStyle(
                                  color: primaryColorOfApp,
                                  fontFamily: 'Satisfy',
                                )),
                            TextSpan(
                                text: 'Sponshored partners',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  /*    SizedBox(
                                            height: height * 0.03,
                                          ), */
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE2E2E2),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            width: 0.5, color: const Color(0xffE2E2E2)),
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
                          text: 'Rewards',
                        ),
                        Tab(
                          text: 'Expired',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: TabBarView(children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: height * 0.01,
                                );
                              },
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const RewardsPoint()),
                                            );
                                          },
                                          child: SvgPicture.asset(
                                            'assets/Group2929.svg',
                                            width: 100,
                                            height: 75,
                                          ),
                                        ),
                                        Container(
                                          width: 125,
                                          height: 75,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(width: 0.6),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(5),
                                                      bottomRight:
                                                          Radius.circular(5))),
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/awardicon.svg',
                                              ),
                                              const Text(
                                                'Scratch this card',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins'),
                                              ),
                                              const Text(
                                                'Win to Surprise Gift',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins'),
                                              ),
                                              const Text(
                                                'Scratch this card',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              })),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xff7E7E7E)),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '₹ 300 Flat OFF',
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'UBER2021FIRS..',
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'First rIDE From uBER ',
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'expired December 2022',
                                            style: TextStyle(
                                                color: Color(0xff7E7E7E),
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Image.asset('assets/expired.png')
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                height: 10,
                              );
                            },
                            itemCount: 6),
                      )
                    ]),
                  ),
                ]),
                positionCross(context)
              ],
            );
          }),
        );
      });
}

showRecievedGift(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          borderRadius: BorderRadius.circular(8)),
                      height: 5,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: primaryColorOfApp,
                        )),
                    const Text(
                      'Received Gift from fans/followers',
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 10),
                    ),
                  ],
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.grey,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)),
                        ],
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(width: 0.6, color: primaryColorOfApp),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                '@Profile_Username',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/gifticon1.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'GIFT ',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                      Text(
                                        ' 5',
                                        style: TextStyle(
                                            color: primaryColorOfApp,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '\u{20B9}',
                                    style: TextStyle(
                                        fontSize: 29, color: primaryColorOfApp),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 18.0),
                                    child: Text(
                                      '\u{20B9} 1825.00',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        '\u{20B9} ',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        ' 1825.00',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  const Text(
                                    '*tax applicable & conditions apply',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 8),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    minimumSize: const Size(130.0, 30),
                                    // padding: EdgeInsets.symmetric(
                                    //     horizontal: 40.0, vertical: 20.0),
                                    backgroundColor: const Color(0xff0087FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            const UploadImage().radius())),
                                child: const Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            showFlipkart(context);
                          },
                          child: Column(
                            children: [
                              const Text(
                                'Sended you gift Gift amount autometically added your main wallet',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '@abdcprofile',
                                              style: TextStyle(
                                                color: primaryColorOfApp,
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Text(
                                              'profile name',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Text(
                                              '25-November 2022  7:33PM',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                              width: 0.6,
                                              color: primaryColorOfApp),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 10,
                                              backgroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            const Text(
                                              'Flipkart',
                                              style: TextStyle(
                                                fontSize: 8,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            const Text(
                                              '\u{20B9} 825.00',
                                              style: TextStyle(
                                                fontSize: 8,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 1,
                        );
                      },
                      itemCount: 10),
                )
              ]),
              positionCross(context)
            ],
          );
        });
      });
}

showFlipkart(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E2E2),
                          borderRadius: BorderRadius.circular(8)),
                      height: 5,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Image.network(
                  'https://d1o7uku192uawx.cloudfront.net/mobile/media/catalog/product/3/1/312x200_flipkart.png',
                  height: 100,
                  width: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Flipkart Gift Voucher ₹ 1000',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Iconify(
                        MaterialSymbols.error_circle_rounded,
                        color: primaryColorOfApp,
                      ),
                      Text(
                        'Expires December 2022',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'copy Code & Use at Brand Official Checkout page ',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                width: 0.6, color: primaryColorOfApp),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: const [
                              Iconify(MaterialSymbols.content_copy_outline),
                              Text(
                                'FLIPKART2022ORDER',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: const Size(80, 30),
                            // padding: EdgeInsets.symmetric(
                            //     horizontal: 40.0, vertical: 20.0),
                            backgroundColor: const Color(0xff0087FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: const Text(
                          "SHOP NOW",
                          style: TextStyle(
                              color: Colors.white,
                              /*       fontSize: 18, */
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        '*terms and conditions apply',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                )
              ]),
              positionCross(context)
            ],
          );
        });
      });
}

showCollectedPoints(context) {
  Size size = MediaQuery.of(context).size;
  double height = size.height, width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Hey @profile username',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Your reward points details is below',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 1, color: primaryColorOfApp),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Today 26 January 2022',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 10),
                              ),
                              Text(
                                'January',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/digitalicon.svg',
                                color: primaryColorOfApp,
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text(
                                'YOUR RANK LEVEL-0',
                                style: TextStyle(
                                    color: Color(0xff0B1C3D),
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'VI-1',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              'LK-2',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              'SR-3',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              'VISIT',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                          color: primaryColorOfApp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00013',
                              style: TextStyle(
                                  color: Color(0xff0B1C3D),
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '@Profile_Username',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '*NOTE: you not collect yet, any gift from myttube',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 8),
                              ),
                              Text(
                                'See More',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  )
                ]),
              ),
              positionCross(context)
            ],
          );
        });
      });
}
