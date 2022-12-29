import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/delete1.dart';
import 'package:flutter_application_1/homepage/groups_list.dart';
import 'package:flutter_application_1/homepage/post_tab.dart';
import 'package:flutter_application_1/homepage/visited.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class ProfileAcitvity extends StatefulWidget {
  const ProfileAcitvity({Key? key}) : super(key: key);

  @override
  State<ProfileAcitvity> createState() => _ProfileAcitvityState();
}

class _ProfileAcitvityState extends State<ProfileAcitvity> {
  var images = [
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
  List<Map<String, dynamic>> postList = [
    {"icon": Bx.photo_album, "label": "Post", "count": "130"},
    {"icon": Ic.round_history, "label": "Story", "count": "130"},
    {
      "icon": MaterialSymbols.play_arrow_outline_rounded,
      "label": "Video",
      "count": "130"
    },
    {"icon": Gg.edit_highlight, "label": "High", "count": "130"},
    {"icon": Bi.people, "label": "Live", "count": "130"},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Profile Activity',
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
            Divider(
              height: 0.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 13.sp),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/arrowicon.svg',
                    height: 10.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 13.h,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.sp),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: customTextColor, width: 0.5),
                ),
                child: ListView.separated(
padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const VerticalDivider(
                        color: Colors.black,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostTab(
                                      value: index == 0
                                          ? 0
                                          : index == 1
                                              ? 1
                                              : index == 2
                                                  ? 2
                                                  : index == 3
                                                      ? 3
                                                      : 4,
                                    )),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColorOfApp),
                                  child: Padding(
                                    padding: EdgeInsets.all(index == 2
                                        ? 5.sp
                                        : index == 1
                                            ? 5.sp
                                            : 8.sp),
                                    child: Iconify(
                                      postList[index]["icon"],
                                      color: Colors.white,
                                      size: index == 2
                                          ? 27.sp
                                          : index == 1
                                              ? 26.sp
                                              : 20.sp,
                                    ),
                                  )),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                postList[index]["label"],
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                postList[index]["count"],
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: postList.length),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 13.sp),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: const Color(0xff037F26),
                      fontFamily: 'Poppins',
                      fontSize: 12.sp),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  '22-January-2022',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 15.h,
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
                    groupsSpace: MediaQuery.of(context).size.height > 667
                        ? 27.sp
                        : 25.sp,
                    barTouchData: BarTouchData(enabled: true),
                    barGroups: BarData.barData
                        .map((data) => BarChartGroupData(x: data.id, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: data.color,
                                  width: 5.w,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)))
                            ]))
                        .toList(),
                    backgroundColor: Colors.white),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Visited Site',
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 13.sp),
                    ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Visited()),
                          );
                        },
                        icon: SvgPicture.asset(
                          'assets/arrowicon.svg',
                          height: 10.sp,
                        )),
                  ],
                ),
                Text(
                  'recently visited site',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 10.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return const VerticalDivider(
                          width: 5,
                          color: Colors.transparent,
                        );
                      },
                      itemCount: images.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset(
                            images[index],
                            height: 10.h,
                            width: 20.w,
                            fit: BoxFit.cover,
                          ),
                        );
                      })),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groups',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 13.sp),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroupsList()),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/arrowicon.svg',
                      height: 10.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return VerticalDivider(
                      width: 3.w,
                      color: Colors.transparent,
                    );
                  },
                  itemCount: images.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1, color: primaryColorOfApp)),
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: const Iconify(
                                Eva.people_outline,
                                color: primaryColorOfApp,
                              ),
                            )),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Public-A',
                          style: TextStyle(
                              color: customTextColor,
                              fontFamily: 'Poppins',
                              fontSize: 8.sp),
                        )
                      ],
                    );
                  })),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delete',
                      style: TextStyle(
                          color: const Color(0xffED1B24),
                          fontFamily: 'Poppins',
                          fontSize: 13.sp),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Delete1()),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/arrowicon.svg',
                        height: 10.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  'recently visited site',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 10.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return const VerticalDivider(
                          width: 5,
                          color: Colors.transparent,
                        );
                      },
                      itemCount: photos.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.sp),
                            child: Image.asset(
                              photos[index],
                              height: 10.h,
                              width: 20.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      })),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget getTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: customTextColor,
    fontFamily: 'Poppins',
    fontSize: 10,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Sun', style: style);
      break;
    case 1:
      text = const Text('Mon', style: style);
      break;
    case 2:
      text = const Text('Tue', style: style);
      break;
    case 3:
      text = const Text('Wed', style: style);
      break;
    case 4:
      text = const Text('Thu', style: style);
      break;
    case 5:
      text = const Text('Fri', style: style);
      break;
    case 6:
      text = const Text('Sat', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 0,
    child: text,
  );
}

class Data {
  final dynamic id;
  final String name;
  final double y;
  final Color color;
  Data({
    required this.id,
    required this.name,
    required this.y,
    required this.color,
  });
}

class BarData {
  static List<Data> barData = [
    Data(id: 0, name: 'Sun', y: 2, color: const Color(0xffC2E2FF)),
    Data(id: 1, name: 'Mon', y: 1.6, color: const Color(0xffA7D6FF)),
    Data(id: 2, name: 'Tue', y: 1.7, color: const Color(0xffA7D6FF)),
    Data(id: 3, name: 'Wed', y: 1.9, color: primaryColorOfApp),
    Data(id: 4, name: 'Thu', y: 2, color: const Color(0xff41A5FE)),
    Data(id: 5, name: 'Fri', y: 1.5, color: const Color(0xff037F26)),
    Data(id: 6, name: 'Sat', y: 1.5, color: const Color(0xff289AFF)),
  ];
}

verticalDivider() {
  return const VerticalDivider(
    thickness: 0.5,
    width: 0,
    color: customTextColor,
  );
}
