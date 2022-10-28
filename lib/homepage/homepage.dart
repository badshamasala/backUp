import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/comment.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/scrollToHideWidget.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController();
  }
  int currentIndex = 0;
  final screens = [
    const Home1(),
    const Search(),
    const Comment(),
    const ProfileSelf()
  ];

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: ScrollToHideWidget(
          controller: controller,
          child: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 249, 246, 246),
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: const Color(0xff0B1C3D),
              items: [
                const BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: FaIcon(
                        FontAwesomeIcons.house,
                        size: 20,
                      ),
                    ),
                    label: 'home'),
                const BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 20,
                      ),
                    ),
                    label: ''),
                const BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: FaIcon(
                        FontAwesomeIcons.comment,
                        size: 20,
                      ),
                    ),
                    label: 'home'),
                const BottomNavigationBarItem(
                    icon: FaIcon(
                      FontAwesomeIcons.user,
                      size: 20,
                    ),
                    label: ''),
              ]),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 25),
        child: FloatingActionButton(
          elevation: 0,
          child: const Image(
            image: AssetImage('assets/logo.png'),
            height: 35,
            width: 35,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            /* Overlay.of(context)?.insert(entry); */
          },
        ),
      ),
    );
  }
}
