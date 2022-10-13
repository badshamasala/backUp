import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/comment.dart';
import 'package:flutter_application_1/homepage/home1.dart';
import 'package:flutter_application_1/homepage/profile.dart';
import 'package:flutter_application_1/homepage/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    const Home1(),
    const Search(),
    const Comment(),
    const Profile()
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 241, 229, 228),
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
                    ),
                  ),
                  label: 'home'),
              const BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                    ),
                  ),
                  label: 'home'),
              const BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: FaIcon(
                      FontAwesomeIcons.comment,
                    ),
                  ),
                  label: 'home'),
              const BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                  ),
                  label: 'home'),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
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
    );
  }
}
