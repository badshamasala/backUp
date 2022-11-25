import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeuButton extends StatefulWidget {
  const NeuButton({Key? key}) : super(key: key);

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  bool isPressed = true;
  bool isPressed1 = true;

  @override
  Widget build(BuildContext context) {
    double blur = isPressed ? 5.0 : 30.0;
    Offset distance = isPressed ? const Offset(10, 10) : const Offset(28.0, 28.0);
    double blur1 = isPressed1 ? 4.0 : 2.0;
    Offset distance1 = isPressed1 ? const Offset(4, 4) : const Offset(4.0, 4.0);
    return Scaffold(
      backgroundColor: const Color(0xffe7ecef),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Center(
                child: InkWell(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xffe7ecef),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: -distance,
                          blurRadius: blur,
                          /*   spreadRadius: 0.0, */
                          inset: isPressed),
                      BoxShadow(
                          color: const Color(0xffa7a9af),
                          offset: distance,
                          blurRadius: blur,
                          /* spreadRadius: 0.0, */
                          inset: isPressed),
                    ],
                  ),
                ),
              ),
            )),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isPressed1 = !isPressed1;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: primaryColorOfApp,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: isPressed1
                              ? primaryColorOfApp
                              : const Color(0xffe7ecef),
                          offset: -distance1,
                          blurRadius: blur1,
                          /*   spreadRadius: 0.0, */
                          inset: isPressed1),
                      //Color.fromARGB(255, 1, 29, 112)
                      BoxShadow(
                          color: isPressed1
                              ? const Color.fromARGB(255, 1, 29, 112)
                              : const Color(0xffa7a9af),
                          offset: distance1,
                          blurRadius: blur1,
                          /* spreadRadius: 0.0, */
                          inset: isPressed1),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isPressed1 = !isPressed1;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    /*              border: Border.all(
                        width: 1, color: Color.fromARGB(255, 1, 29, 112)), */
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: isPressed1 ? Colors.white : const Color(0xffe7ecef),
                          offset: -distance1,
                          blurRadius: blur1,
                          /*   spreadRadius: 0.0, */
                          inset: isPressed1),
                      BoxShadow(
                          color: const Color(0xffa7a9af),
                          offset: distance1,
                          blurRadius: blur1,
                          /* spreadRadius: 0.0, */
                          inset: isPressed1),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Guest Login',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isPressed1 = !isPressed1;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    /*    border: Border.all(
                        width: 1, color: Color.fromARGB(255, 1, 29, 112)), */
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: isPressed1 ? Colors.white : const Color(0xffe7ecef),
                          offset: -distance1,
                          blurRadius: blur1,
                          /*   spreadRadius: 0.0, */
                          inset: isPressed1),
                      BoxShadow(
                          color: const Color(0xffa7a9af),
                          offset: distance1,
                          blurRadius: blur1,
                          /* spreadRadius: 0.0, */
                          inset: isPressed1),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
