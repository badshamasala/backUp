import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/phonenumber.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuestLogin extends StatefulWidget {
  const GuestLogin({super.key});

  @override
  State<GuestLogin> createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  Language _site = Language.english;
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Image.asset('assets/group1.png'),
              const Text(
                'your favorite star',
                style: TextStyle(
                  color: Color(0xff515253),
                  fontFamily: 'Poppins',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Container(
                                      color: Colors.black,
                                      height: 5,
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('choose Language'),
                                  const Divider(),
                                  ListTile(
                                    visualDensity:  VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'English',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: Language.english,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'Hindi',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: Language.hindi,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Bengali',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.bengali,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Gujarati',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.gujrati,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Marathi',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.marathi,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Urdu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.urud,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Odia (oria)',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.odia,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Kannada',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.kannada,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Tamil',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.tamil,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Telugu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: Language.telugu,
                                      groupValue: _site,
                                      onChanged: (Language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              );
                            });
                          },
                        );
                      },
                      child: const Text(
                        'Choose Language',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      )),
                  const FaIcon(
                    FontAwesomeIcons.globe,
                    size: 15,
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(0.0, 40),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneNumber()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Guest Login",
                    style: TextStyle(color: Color(0xff0087FF), fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('don\'t have an account?'),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneNumber()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*  padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff0087FF), fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Language {
  english,
  hindi,
  marathi,
  urud,
  telugu,
  bengali,
  gujrati,
  odia,
  kannada,
  tamil
}
