import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:sizer/sizer.dart';

import '../GLOBALS/colors.dart';

class Explore1 extends StatefulWidget {
  const Explore1({Key? key}) : super(key: key);

  @override
  State<Explore1> createState() => _Explore1State();
}

class _Explore1State extends State<Explore1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Explore',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: TextFormField(
                cursorColor: primaryColorOfApp,
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    isDense: true,
                    labelText: "Search Interested",
                    hintStyle: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 10.sp),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: customTextColor, width: 0.5.sp),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: primaryColorOfApp, width: 0.5.sp),
                        borderRadius: BorderRadius.circular(5)),
                    labelStyle: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 10.sp),
                    suffixIconConstraints: BoxConstraints(),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Iconify(
                        Uil.search,
                        color: Color(0xffe2e2e2),
                        size: 19.sp,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 5.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(0)),
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
                    text: 'Foods',
                  ),
                  Tab(
                    text: 'Entertainment',
                  ),
                  Tab(
                    text: 'Education',
                  ),
                ],
              ),
            ),
            Expanded(
              /*   height: 300, */
              child: TabBarView(children: [
                Column(
                  children: [],
                ),
                Column(
                  children: [],
                ),
                Column(
                  children: [],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
