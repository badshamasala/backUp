import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chatmytube.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/reels.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black.withOpacity(0.9),
        body: screens.elementAt(currentIndex),
        bottomNavigationBar: ConvexAppBar(
          top: -15,
          backgroundColor: Colors.white,
          color: customTextColor,
          activeColor: Color.fromARGB(255, 200, 226, 249),
          items: [
            TabItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(13.sp),
                child: SvgPicture.asset(
                  'assets/hometabicon.svg',
                ),
              ),
              icon: SvgPicture.asset(
                'assets/hometabicon.svg',
              ),
            ),
            TabItem(
              /*  isIconBlend: true, */
              activeIcon: Padding(
                padding: EdgeInsets.all(13.sp),
                child: SvgPicture.asset(
                  'assets/searchtab.svg',
                ),
              ),
              icon: SvgPicture.asset(
                'assets/searchtab.svg',
              ),
            ),
            TabItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(11.sp),
                child: Image(
                    image: const AssetImage(
                      'assets/logo.png',
                    ),
                    height: 5.h,
                    width: 5.w,
                    fit: BoxFit.cover),
              ),
              icon: Image(
                  image: const AssetImage(
                    'assets/logo.png',
                  ),
                  height: 5.h,
                  width: 5.w,
                  fit: BoxFit.cover),
            ),
            TabItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(13.sp),
                child: SvgPicture.asset(
                  'assets/tabbaricon.svg',
                ),
              ),
              icon: SvgPicture.asset(
                'assets/tabbaricon.svg',
              ),
            ),
            TabItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(10.sp),
                child: CircleAvatar(
                  radius: 15.sp,
                  backgroundColor: primaryColorOfApp,
                  child: CircleAvatar(
                      radius: 14.sp,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 13.sp,
                        backgroundColor: Colors.grey.shade800,
                        backgroundImage: const AssetImage('assets/image1.webp'),
                      )),
                ),
              ),
              icon: CircleAvatar(
                radius: 14.sp,
                backgroundColor: Colors.grey.shade800,
                backgroundImage: const AssetImage('assets/image3.jpg'),
              ),
            ),
          ],
          onTap: (index) => setState(() => currentIndex = index),
        ));
  }
}
