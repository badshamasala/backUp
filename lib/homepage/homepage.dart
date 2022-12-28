import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chatmytube.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/reels.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String svgIcon =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36"><path fill="currentColor" d="M33 19a1 1 0 0 1-.71-.29L18 4.41L3.71 18.71A1 1 0 0 1 2.3 17.3l15-15a1 1 0 0 1 1.41 0l15 15A1 1 0 0 1 33 19Z" class="clr-i-solid clr-i-solid-path-1"/><path fill="currentColor" d="M18 7.79L6 19.83V32a2 2 0 0 0 2 2h7V24h6v10h7a2 2 0 0 0 2-2V19.76Z" class="clr-i-solid clr-i-solid-path-2"/><path fill="none" d="M0 0h36v36H0z"/></svg>';
  late ScrollController controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }

  int currentIndex = 0;
  final List<Widget> screens = <Widget>[
    const Home1(),
    const Search(),
    Reels(),
    const Chatmytube(),
    ProfileSelf()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: ConvexAppBar(
            style: TabStyle.flip,
            /* top: -15, */
            backgroundColor: Colors.white,
            color: Colors.white,
            activeColor: Colors.white,
            items: [
              TabItem(
                icon: SvgPicture.asset(
                  'assets/hometabicon.svg',
                ),
              ),
              TabItem(
                icon: SvgPicture.asset(
                  'assets/searchtab.svg',
                ),
              ),
              TabItem(
                icon: Image.asset(
                  'assets/logo.png',
                  height: 3.h,
                  width: 3.w,
                ),
                /* fit: BoxFit.cover */
              ),
              TabItem(
                icon: SvgPicture.asset(
                  'assets/tabbaricon.svg',
                ),
              ),
              TabItem(
                icon: CircleAvatar(
                  radius: 14.sp,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: const AssetImage('assets/image3.jpg'),
                ),
              ),
            ],
            onTap: (index) => setState(() => currentIndex = index),
          ),
        ));
  }
}
