import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/promote.dart';
import 'package:flutter_application_1/PROMOTE/promote4.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Promote3 extends StatefulWidget {
  final value;
  final groupValue;
  final groupseenonline;
  const Promote3(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.groupseenonline})
      : super(key: key);

  @override
  State<Promote3> createState() => _Promote3State();
}

class _Promote3State extends State<Promote3> {
  var ekVariable;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PromoteProvider>(context, listen: false);
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Row(
                children: [
                  Text(
                    "Content... for more business personalized plan. contact",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 9.sp
                            : 10.sp),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Row(
                children: [
                  Text(
                    "+91-9876543210 ",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 9.sp
                            : 10.sp),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "or mail us at",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 9.sp
                            : 10.sp),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "connect@myttube.com",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 9.sp
                            : 10.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Promote4(
                            value: widget.value,
                            groupValue: widget.groupValue,
                            groupseenonline: widget.groupseenonline,
                            value1: ekVariable ?? "100 THOUSAND")),
                  );
                },
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
                    "Confirm & Next",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Consumer<PromoteProvider>(builder: (context, value, child) {
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 6.h,
                        /*     childAspectRatio: 3.5, */
                        crossAxisSpacing: 3.w,
                        mainAxisSpacing: 2,
                        crossAxisCount: 4),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(0, 6.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            side: BorderSide(
                                color: provider.isPremium
                                    ? Color(0xff47123E)
                                    : primaryColorOfApp),
                            backgroundColor: provider.emptyplan
                                    .contains(provider.planList[index])
                                ? provider.isPremium
                                    ? Color(0xff47123E)
                                    : primaryColorOfApp
                                : Colors.white,
                            foregroundColor: provider.emptyplan
                                    .contains(provider.planList[index])
                                ? Colors.white
                                : provider.isPremium
                                    ? Color(0xff47123E)
                                    : primaryColorOfApp,
                            elevation: 0),
                        onPressed: () {
                          provider.updatePlan(index);
                        },
                        child: Text(
                          provider.planList[index]["label"],
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 10.sp),
                        ),
                      );
                    },
                    itemCount: provider.planList.length);
              }),
              SizedBox(
                height: 2.h,
              ),
              Consumer<PromoteProvider>(builder: (context, value, child) {
                return GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 15.h,
                        /*     childAspectRatio: 3.5, */
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 2.h,
                        crossAxisCount: 1),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          provider.updateviewsPlan(index);
                          print(provider.planviewsList[index]["views"]);
                          setState(() {
                            ekVariable = provider.planviewsList[index]["views"];
                          });

                          /*   provider.listColor(index); */
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: provider.emptyplanviews
                                        .contains(provider.planviewsList[index])
                                    ? Color(0xff47123E)
                                    : Color(0xffffffff),
                                /* border: Border.all(
                                  width: 0.5,
                                  color: provider.emptyplanviews.contains(
                                          provider.planviewsList[index])
                                      ? Color(0xff47123E)
                                      : Color(0xff000000),
                                ), */
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.w),
                                        child: Text(
                                          provider.planviewsList[index]
                                              ["label"],
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: provider.emptyplanviews
                                                    .contains(provider
                                                        .planviewsList[index])
                                                ? Color(0xffffffff)
                                                : Color(0xff47123E),
                                            fontSize: 13
                                                .sp, /*   fontWeight: FontWeight.bold */
                                          ),
                                        ),
                                      ),
                                      provider.emptyplanviews.contains(
                                              provider.planviewsList[index])
                                          ? Iconify(
                                              AntDesign.check_circle_outlined,
                                              color: provider.emptyplanviews
                                                      .contains(provider
                                                          .planviewsList[index])
                                                  ? Colors.white
                                                  : Colors.black,
                                              size: 21.sp,
                                            )
                                          : Iconify(
                                              Ion.ios_circle_outline,
                                              color: provider.emptyplanviews
                                                      .contains(provider
                                                          .planviewsList[index])
                                                  ? Colors.white
                                                  : Colors.black,
                                              size: 22.sp,
                                            )
                                    ],
                                  ),
                                ),
                                splitline(
                                  provider.emptyplanviews.contains(
                                          provider.planviewsList[index])
                                      ? Colors.white
                                      : Color(0xff47123E),
                                ),
                                Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Text(
                                        provider.planviewsList[index]["views"],
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: provider.emptyplanviews
                                                  .contains(provider
                                                      .planviewsList[index])
                                              ? Color(0xffffffff)
                                              : Color(0xff47123E),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                              .sp, /*   fontWeight: FontWeight.bold */
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        color: provider.emptyplanviews.contains(
                                                provider.planviewsList[index])
                                            ? Color(0xffBB9858)
                                            : Color(0xff47123E),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/discount.svg',
                                              height: 2.5.h,
                                              width: 3.w,
                                              color: provider.emptyplanviews
                                                      .contains(provider
                                                          .planviewsList[index])
                                                  ? Color(0xff47123E)
                                                  : Color(0xffBB9858),
                                            ),
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            Text(
                                              "20% Discount",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: provider.emptyplanviews
                                                        .contains(provider
                                                                .planviewsList[
                                                            index])
                                                    ? Color(0xff47123E)
                                                    : Color(0xffffffff),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12
                                                    .sp, /*   fontWeight: FontWeight.bold */
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: provider.planviewsList.length);
              }),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
