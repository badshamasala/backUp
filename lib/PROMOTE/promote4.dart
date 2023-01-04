import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/reviewAds.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/la.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/mingcute.dart';
import 'package:sizer/sizer.dart';

class Promote4 extends StatefulWidget {
  final value1;
  final value;
  final groupValue;
  final groupseenonline;
  const Promote4({Key? key, required this.value1,
      required this.value,
      required this.groupValue,
      required this.groupseenonline}) : super(key: key);

  @override
  State<Promote4> createState() => _Promote4State();
}

class _Promote4State extends State<Promote4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Promote',
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
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => ReviewAds(
                                  value: widget.value,
                                  groupValue: widget.groupValue,
                                  groupseenonline: widget.groupseenonline,
                                ));
                },
                style: OutlinedButton.styleFrom(
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Text(
                  "Review Ads",
                  style: TextStyle(
                      color: primaryColorOfApp,
                      fontSize: 12.sp,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (rect) => const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff2C81F8),
                    Color(0xff03194B),
                  ]).createShader(rect),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "100% guaranteed viewability",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 15.sp
                            : 17.sp,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Row(
                children: [
                  Text(
                    "You Selected Plan ${widget.value1}",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 10.sp
                            : 12.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Row(
                children: [
                  Text(
                    "Audience type Automatic",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 10.sp
                            : 12.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: customTextColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Row(
                        children: [
                          Text(
                            "Your Promote Summary",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
                                        ? 10.sp
                                        : 12.sp),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Standard-Single",
                          style: TextStyle(
                              color: customTextColor,
                              fontFamily: "Poppins",
                              fontSize: MediaQuery.of(context).size.height > 667
                                  ? 10.sp
                                  : 12.sp),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "5 Paise  value for money",
                          style: TextStyle(
                              color: customTextColor,
                              fontFamily: "Poppins",
                              fontSize: MediaQuery.of(context).size.height > 667
                                  ? 10.sp
                                  : 12.sp),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1 Million Impressions audiences",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
                                        ? 10.sp
                                        : 12.sp),
                          ),
                          Row(
                            children: [
                              Iconify(
                                MaterialSymbols.currency_rupee_rounded,
                                size: 16.sp,
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: "Poppins",
                                    fontSize:
                                        MediaQuery.of(context).size.height > 667
                                            ? 10.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Selected Plan X 3 Months",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
                                        ? 10.sp
                                        : 12.sp),
                          ),
                          Row(
                            children: [
                              Iconify(
                                MaterialSymbols.currency_rupee_rounded,
                                size: 16.sp,
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: "Poppins",
                                    fontSize:
                                        MediaQuery.of(context).size.height > 667
                                            ? 10.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gov.Taxes",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
                                        ? 10.sp
                                        : 12.sp),
                          ),
                          Row(
                            children: [
                              Iconify(
                                MaterialSymbols.currency_rupee_rounded,
                                size: 16.sp,
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: "Poppins",
                                    fontSize:
                                        MediaQuery.of(context).size.height > 667
                                            ? 10.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.height > 667
                                        ? 12.sp
                                        : 14.sp),
                          ),
                          Row(
                            children: [
                              Iconify(MaterialSymbols.currency_rupee_rounded),
                              Text(
                                "5000",
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: "Poppins",
                                    fontSize:
                                        MediaQuery.of(context).size.height > 667
                                            ? 10.sp
                                            : 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: primaryColorOfApp),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Iconify(
                      La.wallet,
                      color: primaryColorOfApp,
                    ),
                    Text(
                      "Your Available Balance",
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: "Poppins",
                          fontSize: MediaQuery.of(context).size.height > 667
                              ? 12.sp
                              : 14.sp),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Iconify(MaterialSymbols.currency_rupee_rounded),
                    Text(
                      "0.00",
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: "Poppins",
                          fontSize: MediaQuery.of(context).size.height > 667
                              ? 10.sp
                              : 12.sp),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: primaryColorOfApp,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Promote Now",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
