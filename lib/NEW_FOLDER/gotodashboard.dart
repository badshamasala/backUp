import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_acitvity.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Gotodashboard extends StatefulWidget {
  const Gotodashboard({Key? key}) : super(key: key);

  @override
  State<Gotodashboard> createState() => _GotodashboardState();
}

class _GotodashboardState extends State<Gotodashboard> {
  Map myMap = {
    "User1": "Images",
    "User2": "Videos",
  };

  var dropdownkivalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Go to Dashboard',
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
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Insights',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Color(0xff037F26),
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const UploadImage().radius(),
                    border: Border.all(color: primaryColorOfApp, width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        height: 5.h,
                        width: 30.w,
                        child: DropdownButton(
                            iconEnabledColor: customTextColor,
                            focusColor: primaryColorOfApp,
                            borderRadius: BorderRadius.circular(5.sp),
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                color: primaryColorOfApp),
                            /*   isDense: true, */
                            elevation: 0,
                            hint: Text(
                              'weekly',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.sp,
                                  color: customTextColor),
                            ),
                            value: dropdownkivalue,
                            items: myMap.entries
                                .map((e) => DropdownMenuItem(
                                    value: e.value, child: Text(e.value)))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                dropdownkivalue = val;
                              });
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Points Collected You',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
              child: BarChart(
                BarChartData(
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: getTitles,
                          /*     reservedSize: 38, */
                        ),
                      ),
                    ),
                    alignment: BarChartAlignment.center,
                    maxY: 2,
                    minY: 0,
                    groupsSpace: 20.sp,
                    barTouchData: BarTouchData(enabled: true),
                    barGroups: BarData.barData
                        .map((data) => BarChartGroupData(x: data.id, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: data.color,
                                  width: 17.sp,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.sp),
                                      topRight: Radius.circular(10.sp)))
                            ]))
                        .toList(),
                    backgroundColor: Colors.white),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Total Visits Your Profile ',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
              ],
            ),
            Container(
              color: Color(0xffe2e2e2),
              height: 20.h,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'You Time Spent',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Today',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '1h 57m',
                  style: TextStyle(
                      color: primaryColorOfApp,
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
              child: BarChart(
                BarChartData(
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: getTitles,
                          /*     reservedSize: 38, */
                        ),
                      ),
                    ),
                    alignment: BarChartAlignment.center,
                    maxY: 2,
                    minY: 0,
                    groupsSpace: 20.sp,
                    barTouchData: BarTouchData(enabled: true),
                    barGroups: BarData.barData
                        .map((data) => BarChartGroupData(x: data.id, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: data.color,
                                  width: 17.sp,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.sp),
                                      topRight: Radius.circular(10.sp)))
                            ]))
                        .toList(),
                    backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
