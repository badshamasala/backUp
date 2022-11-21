import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/post_tab.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

class ProfileAcitvity extends StatefulWidget {
  const ProfileAcitvity({Key? key}) : super(key: key);

  @override
  State<ProfileAcitvity> createState() => _ProfileAcitvityState();
}

class _ProfileAcitvityState extends State<ProfileAcitvity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
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
        backgroundColor: Colors.white,
        title: const Text(
          'Profile Activity',
          style: TextStyle(
              color: customTextColor, fontFamily: 'Poppins', fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Post',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Iconify(
                      Eva.arrow_right_fill,
                      size: 15,
                      color: customTextColor,
                    ))
              ],
            ),
            Container(
              height: 82,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 0.5, color: customTextColor),
                  borderRadius: BorderRadius.circular(5)),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostTab(
                                    value: 0,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 3.0),
                                child: SvgPicture.asset(
                                  'assets/posticon.svg',
                                  height: 18,
                                  width: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Post',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                            const Text(
                              '130',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostTab(
                                    value: 1,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: SvgPicture.asset(
                                'assets/historyicon.svg',
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Story',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                            const Text(
                              '130',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostTab(
                                    value: 2,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: SvgPicture.asset(
                                'assets/videoicon.svg',
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'video',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                            const Text(
                              '130',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostTab(
                                    value: 3,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: SvgPicture.asset(
                                'assets/highlights.svg',
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 1.0),
                              child: Text(
                                'High',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 1.0),
                              child: Text(
                                '130',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PostTab(
                                    value: 4,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: primaryColorOfApp,
                              child: SvgPicture.asset(
                                'assets/privacygroup.svg',
                                /*    height: 18,
                                width: 18, */
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 1.0),
                              child: Text(
                                'Live',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 1.0, bottom: 2),
                              child: Text(
                                '130',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                /*     titlesData:
                        FlTitlesData(bottomTitles: BarTitles.getTopBottomTitles()), */
                    alignment: BarChartAlignment.start,
                    maxY: 20,
                    minY: -20,
                    groupsSpace: 12,
                    barTouchData: BarTouchData(enabled: true),
                    barGroups: BarData.barData
                        .map((data) => BarChartGroupData(x: data.id, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: data.color,
                                  width: 22,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5)))
                            ]))
                        .toList(),
                    backgroundColor: const Color(0xffe2e2e2)
                    // read about it in the BarChartData section
                    ),
                swapAnimationDuration:
                    const Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BarTitles {
 /*  static SideTitles getTopBottomTitles() => SideTitles(
      showTitles: true,
      getTitlesWidget: (double id) => BarData()
          .barData
          .firstWhere((element) => element.id == id.toInt())
          .name); */
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
  static int interval = 15;
  static List<Data> barData = [
    Data(id: 0, name: 'Sun', y: 15, color: const Color(0xffC2E2FF)),
    Data(id: 1, name: 'Mon', y: 12, color: const Color(0xffA7D6FF)),
    Data(id: 2, name: 'Tue', y: 11, color: const Color(0xffA7D6FF)),
    Data(id: 3, name: 'Wed', y: 15, color: primaryColorOfApp),
    Data(id: 4, name: 'Thu', y: 15, color: const Color(0xff41A5FE)),
    Data(id: 5, name: 'Fri', y: 15, color: const Color(0xff037F26)),
    Data(id: 6, name: 'Sat', y: 15, color: const Color(0xff289AFF)),
  ];
}

verticalDivider() {
  return const VerticalDivider(
    thickness: 0.5,
    width: 0,
    color: customTextColor,
  );
}
