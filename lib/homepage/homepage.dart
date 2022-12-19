import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chatmytube.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/reels.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    const Reels(),
    const Chatmytube(),
    ProfileSelf()
  ];
 /*  var _navBarsItems = [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/hometabicon.svg',
        height: 25,
        width: 25,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/searchtab.svg',
        height: 25,
        width: 25,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/tabbaricon.svg',
        height: 27,
        width: 27,
      ),
    ),
    PersistentBottomNavBarItem(
        icon: CircleAvatar(
      radius: 14,
      backgroundColor: primaryColorOfApp,
      child: CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.grey.shade800,
            backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
          )),
    )),
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: screens.elementAt(currentIndex),
      bottomSheet: SizedBox(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: SvgPicture.asset(
                'assets/hometabicon.svg',
                height: 25,
                width: 25,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: SvgPicture.asset(
                'assets/searchtab.svg',
                height: 25,
                width: 25,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Image(
                  image: const AssetImage(
                    'assets/logo.png',
                  ),
                  height: 4.h,
                  width: 8.w,
                  fit: BoxFit.fitHeight),
            ),
            SizedBox(
              width: 1.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: SvgPicture.asset(
                'assets/tabbaricon.svg',
                height: 27,
                width: 27,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              child: CircleAvatar(
                radius: 14,
                backgroundColor: primaryColorOfApp,
                child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey.shade800,
                      backgroundImage: const NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
                    )),
              ),
            )
          ],
        ),
      ),
      /* bottomNavigationBar: PersistentTabView(
          context,
          /*    controller: _controller, */
          screens: screens,
          items: _navBarsItems,
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style1, // Choose the nav bar style with this property.
        ) */
      /*    bottomNavigationBar: CurvedNavigationBar(
        height: 45,
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          //Handle button tap
        },
      ), */
      /* bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color(0xff0B1C3D),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: SvgPicture.asset(
                      'assets/hometabicon.svg',
                      height: 20,
                      width: 25,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: SvgPicture.asset(
                      'assets/searchtab.svg',
                      height: 25,
                      width: 25,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SvgPicture.asset(
                      'assets/tabbaricon.svg',
                      height: 27,
                      width: 27,
                    ),
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: CircleAvatar(
                    radius: 14,
                    backgroundColor: primaryColorOfApp,
                    child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey.shade800,
                          backgroundImage: const NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
                        )),
                  ),
                  label: ''),
            ]),
      ), */
      /*  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.white,
          onPressed: () {
            /* Overlay.of(context)?.insert(entry); */
          },
          child: const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Image(
              image: AssetImage('assets/logo.png'),
              height: 40,
              width: 40,
            ),
          ),
        ),
      ), */
    );
  }
}
