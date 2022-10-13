import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/phonenumber.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuestLogin extends StatefulWidget {
  const GuestLogin({super.key});

  @override
  State<GuestLogin> createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  var size, height, width;
  language _site = language.english;
  @override
  Widget build(BuildContext context) {
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
              Text(
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
                                  SizedBox(
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
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('choose language'),
                                  Divider(),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'English',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: language.english,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text(
                                      'Hindi',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    trailing: Radio(
                                      value: language.hindi,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Bengali',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.bengali,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Gujarati',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.gujrati,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Marathi',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.marathi,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Urdu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.urud,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Odia (oria)',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.odia,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Kannada',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.kannada,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Tamil',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.tamil,
                                      groupValue: _site,
                                      onChanged: (language? value) {
                                        setState(() {
                                          _site = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(vertical: -3),
                                    dense: true,
                                    leading: const Text('Telugu',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    trailing: Radio(
                                      value: language.telugu,
                                      groupValue: _site,
                                      onChanged: (language? value) {
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
                      child: Text(
                        'Choose language',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black),
                      )),
                  FaIcon(
                    FontAwesomeIcons.globe,
                    size: 15,
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(0.0, 40),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
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
                      side: BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
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
                children: [
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
                      side: BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*  padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
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

enum language {
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
