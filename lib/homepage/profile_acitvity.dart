import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/delete1.dart';
import 'package:flutter_application_1/homepage/groups_list.dart';
import 'package:flutter_application_1/homepage/post_tab.dart';
import 'package:flutter_application_1/homepage/visited.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
            const Divider(
              height: 1,
            ),
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
                  icon: SvgPicture.asset(
                    'assets/arrowicon.svg',
                    height: 10,
                  ),
                )
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
                        padding: const EdgeInsets.only(top: 5.0),
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
                        padding: const EdgeInsets.only(top: 5.0),
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
                        padding: const EdgeInsets.only(top: 5.0),
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
              height: height * 0.01,
            ),
            Row(
              children: [
                const Text(
                  'Time',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Text(
                  'Friday',
                  style: TextStyle(
                      color: Color(0xff037F26),
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const Text(
                  '22-January-2022',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: 100,
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
                    groupsSpace: 28,
                    barTouchData: BarTouchData(enabled: true),
                    barGroups: BarData.barData
                        .map((data) => BarChartGroupData(x: data.id, barRods: [
                              BarChartRodData(
                                  toY: data.y,
                                  color: data.color,
                                  width: 17,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)))
                            ]))
                        .toList(),
                    backgroundColor: Colors.white),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Visited Site',
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 12),
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
                          height: 10,
                        )),
                  ],
                ),
                const Text(
                  'recently visited site',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10),
                ),
                SizedBox(
                  height: 65,
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
                            height: 65,
                            width: 57,
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
                  const Text(
                    'Groups',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 12),
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
                      height: 10,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 73,
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
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/chatgroup.svg',
                            height: 44,
                            width: 44,
                            /*       color: primaryColorOfApp, */
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Public-A',
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Delete',
                      style: TextStyle(
                          color: Color(0xffED1B24),
                          fontFamily: 'Poppins',
                          fontSize: 12),
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
                        height: 10,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'recently visited site',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10),
                ),
                SizedBox(
                  height: 65,
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
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              photos[index],
                              height: 65,
                              width: 57,
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
