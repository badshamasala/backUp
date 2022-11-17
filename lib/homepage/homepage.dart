import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/chatmytube.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  final screens = [
    const Home1(),
    const Search(),
    const Chatmytube(),
    ProfileSelf()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0),
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: const Color(0xff0B1C3D),
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SvgPicture.asset(
                        'assets/hometabicon.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
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
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        ),
      ),
    );
  }
}
