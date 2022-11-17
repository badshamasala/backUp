// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';

class SelfProfile extends StatefulWidget {
  const SelfProfile({Key? key}) : super(key: key);

  @override
  State<SelfProfile> createState() => _SelfProfileState();
}

class _SelfProfileState extends State<SelfProfile> {
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;
  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;
  /* */

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
              color: primaryColorOfApp,
            )),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Poppins',
              /*    fontWeight: FontWeight.bold, */
              color: customTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 7,
                        left: 0,
                        height: 40,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(5)),
                          /*  width: 150,
                    height: 150, */
                          /*  color: Colors.green[300], */
                          child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, bottom: 3),
                                child: TextFormField(
                                    enabled: username,
                                    decoration: InputDecoration(
                                      labelText: username ? '' : '',
                                      suffixIcon: const Padding(
                                        padding:
                                            EdgeInsets.only(left: 18.0),
                                        child: Icon(
                                          Icons.check_circle_outline_outlined,
                                          color: Color(0xff038026),
                                        ),
                                      ),
                                      border: InputBorder.none,
                                    )),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 10,
                        width: 70,
                        height: 10,
                        child: Container(
                          /*   width: 200,
                    height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Your Username',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      cancel
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: const VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = false;
                                  cancel = false;
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Text('Cancel?',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600)),
                              ),
                            )
                          : TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: const VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = true;
                                  cancel = true;
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Text('Change',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: primaryColorOfApp,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 7,
                        left: 0,
                        height: 40,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(5)),
                          /*  width: 150,
                      height: 150, */
                          /*  color: Colors.green[300], */
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * 0.02,
                              ),
                              const Icon(
                                Icons.lock,
                                color: Color(0xff737373),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                '+91 8689880061',
                                style: TextStyle(
                                    color: const Color(0xffC4C4C4),
                                    fontFamily: 'Poppins',
                                    fontSize: width * 0.06),
                              ),
                              SizedBox(
                                width: width * 0.27,
                              ),
                              const Icon(
                                Icons.check_circle_outline,
                                color: Color(0xff038026),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 10,
                        width: 170,
                        height: 13,
                        child: Container(
                          /*   width: 200,
                      height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Your 10 digit Mobile number is verified',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  /*   color: Colors.red, */
                  height: 13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Change',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  /* color: Colors.red, */
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 7,
                        left: 0,
                        height: 40,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(5)),
                          /*  width: 150,
                    height: 150, */
                          /*  color: Colors.green[300], */
                          child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, bottom: 3),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 210,
                                      child: TextFormField(
                                          enabled: bio,
                                          decoration: const InputDecoration(
                                            labelText: '',
                                            border: InputBorder.none,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 32.0),
                                      child: Container(
                                        child: bio1
                                            ? IconButton(
                                                padding: const EdgeInsets.all(0),
                                                constraints: const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    bio = false;
                                                    bio1 = false;
                                                  });
                                                },
                                                icon: const Iconify(
                                                  Bx.edit,
                                                  color: Color(0xffc4c4c4),
                                                ))
                                            : IconButton(
                                                padding: const EdgeInsets.all(0),
                                                constraints: const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    bio = true;
                                                    bio1 = true;
                                                  });
                                                },
                                                icon: const Iconify(
                                                  Bx.edit,
                                                  color: Color(0xffc4c4c4),
                                                )),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 10,
                        width: 60,
                        height: 10,
                        child: Container(
                          color: Colors.white,
                          child: const Text(
                            'Your Email ID',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  /*   color: Colors.red, */
                  height: 13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text('Change',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: primaryColorOfApp,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          male = false;
                          female = true;
                          other = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                            color: male
                                ? Colors.transparent
                                : const Color.fromARGB(255, 200, 226, 249),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 0.7,
                                color: male
                                    ? const Color(0xff515253)
                                    : const Color(0xff0087FF))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.male,
                                color: male
                                    ? const Color(0xff515253)
                                    : const Color(0xff0087FF),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'male',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: width * 0.05,
                                    color: male
                                        ? const Color(0xff515253)
                                        : const Color(0xff0087FF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          female = false;
                          male = true;
                          other = true;
                        });
                      },
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                            color: female
                                ? Colors.transparent
                                : const Color.fromARGB(255, 247, 212, 214),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 0.7,
                                color: female
                                    ? const Color(0xff515253)
                                    : const Color(0xffF96A70))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.female,
                              color: female
                                  ? const Color(0xff515253)
                                  : const Color(0xffF96A70),
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: width * 0.05,
                                  color: female
                                      ? const Color(0xff515253)
                                      : const Color(0xffF96A70)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          other = false;
                          male = true;
                          female = true;
                        });
                      },
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                            color: other
                                ? Colors.transparent
                                : const Color.fromARGB(255, 232, 203, 246),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 0.7,
                                color: other
                                    ? const Color(0xff515253)
                                    : const Color(0xff56027D))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.transgender,
                                size: 17,
                                color: other
                                    ? const Color(0xff515253)
                                    : const Color(0xff56027D),
                              ),
                            ),
                            Text(
                              'other',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: width * 0.05,
                                  color: other
                                      ? const Color(0xff515253)
                                      : const Color(0xff56027D)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                SizedBox(
                  /* color: Colors.red, */
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 7,
                        left: 0,
                        height: 40,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(5)),
                          /*  width: 150,
                    height: 150, */
                          /*  color: Colors.green[300], */
                          child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, bottom: 3),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 210,
                                      child: TextFormField(
                                          enabled: bio,
                                          decoration: const InputDecoration(
                                            labelText: '',
                                            border: InputBorder.none,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 32.0),
                                      child: Container(
                                        child: bio1
                                            ? IconButton(
                                                padding: const EdgeInsets.all(0),
                                                constraints: const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    bio = false;
                                                    bio1 = false;
                                                  });
                                                },
                                                icon: const Iconify(
                                                  Bx.edit,
                                                  color: Color(0xffc4c4c4),
                                                ))
                                            : IconButton(
                                                padding: const EdgeInsets.all(0),
                                                constraints: const BoxConstraints(),
                                                onPressed: () {
                                                  setState(() {
                                                    bio = true;
                                                    bio1 = true;
                                                  });
                                                },
                                                icon: const Iconify(
                                                  Bx.edit,
                                                  color: Color(0xffc4c4c4),
                                                )),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 10,
                        width: 57,
                        height: 10,
                        child: Container(
                          color: Colors.white,
                          child: const Text(
                            'Date of Birth',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: customTextColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Dont show to anyone",
                              style: TextStyle(
                                  color: const Color(0xff515253),
                                  fontFamily: 'Poppins',
                                  fontSize: width * 0.03),
                            ),
                          ),
                          Switch.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: primaryColorOfApp,
                              value: valueofswitch,
                              onChanged: (valueofswitch) {
                                setState(() {
                                  this.valueofswitch = valueofswitch;
                                });
                              })
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Show my email id followers ",
                              style: TextStyle(
                                  color: const Color(0xff515253),
                                  fontFamily: 'Poppins',
                                  fontSize: width * 0.03),
                            ),
                          ),
                          Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupemail,
                              value: emailid,
                              onChanged: (val) {
                                setState(() {
                                  emailid = true;
                                  emailid1 = false;
                                  groupemail = emailid;
                                });
                              })
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Show my email id  everyone",
                              style: TextStyle(
                                  color: const Color(0xff515253),
                                  fontFamily: 'Poppins',
                                  fontSize: width * 0.03),
                            ),
                          ),
                          Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupemail,
                              value: emailid1,
                              onChanged: (value) {
                                setState(() {
                                  emailid = false;
                                  emailid1 = true;
                                  groupemail = emailid1;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      ProfileSelf().buildaddresspage(context);
                      /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xff0087FF), width: 0.5),
                        /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      "Add Your Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: primaryColorOfApp,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeInterest()),
                      );
                      /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xff0087FF), width: 0.5),
                        /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      "Change Interest",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: primaryColorOfApp,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(140, 35),
                          /*    minimumSize: Size(32, 30), */
                          elevation: 0,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          side: const BorderSide(
                            color: Color(0xff0087FF),
                          ),
                          /*  padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(135, 35),
                          /*  minimumSize: Size(32, 30), */
                          elevation: 0,
                          /* padding: EdgeInsets.zero, */
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                          /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                          backgroundColor: primaryColorOfApp,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                          "Save Changes",
                          style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
