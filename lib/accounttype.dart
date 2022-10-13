import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

class AccountType extends StatefulWidget {
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  var size, height, width;
  language _site = language.english;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: 80,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 0,
                    height: 50,
                    width: 288,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 0.5, color: Color(0xff515253)),
                          borderRadius: BorderRadius.circular(10)),
                      /*  width: 150,
              height: 150, */
                      /*  color: Colors.green[300], */
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.08,
                          ),
                          Icon(
                            Icons.lock,
                            color: Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            '+91 8689880061',
                            style: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontFamily: 'Poppins',
                                fontSize: width * 0.06),
                          ),
                          SizedBox(
                            width: width * 0.18,
                          ),
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 30,
                    width: 170,
                    height: 10,
                    child: Container(
                      /*   width: 200,
              height: 150, */
                      color: Colors.white,
                      child: Text(
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
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Text(
                    'this contact won\'t be shared anyone or anywhere',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: Color(0xff333333)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'select type of Account',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Color(0xff515253)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'you can change this anytime',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: width * 0.045,
                        color: Color(0xff515253)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                visualDensity: VisualDensity(vertical: 3),
                title: Text(
                  'Viewer or private',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515253)),
                ),
                trailing: Transform.scale(
                  scale: 1.3,
                  child: Radio(
                    value: language.english,
                    groupValue: _site,
                    onChanged: (language? value) {
                      setState(() {
                        _site = value!;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  '#content-excellent for Entertainment,\n collect points, surprise gift and more',
                  style:
                      TextStyle(fontFamily: 'Poppins', fontSize: width * 0.035),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                visualDensity: VisualDensity(vertical: 3),
                title: Text(
                  'Business or Brand',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515253)),
                ),
                trailing: Transform.scale(
                  scale: 1.3,
                  child: Radio(
                    value: language.hindi,
                    groupValue: _site,
                    onChanged: (language? value) {
                      setState(() {
                        _site = value!;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  '#content-excellent for grow your\n brand, business in the world and more',
                  style:
                      TextStyle(fontFamily: 'Poppins', fontSize: width * 0.034),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                visualDensity: VisualDensity(vertical: 3),
                title: Text(
                  'creator or public figure',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515253)),
                ),
                trailing: Transform.scale(
                  scale: 1.3,
                  child: Radio(
                    value: language.marathi,
                    groupValue: _site,
                    onChanged: (language? value) {
                      setState(() {
                        _site = value!;
                      });
                    },
                  ),
                ),
                subtitle: Text(
                  '#content-excellent for collaboration,\n earn money and many more',
                  style:
                      TextStyle(fontFamily: 'Poppins', fontSize: width * 0.035),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
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
                  "Confirm & Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: 15,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Text(
                      'I accepted ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff515253),
                          fontSize: width * 0.03),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'terms of services ',
                        style: TextStyle(fontSize: 11),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Color(0xff0087FF),
                      ),
                    ),
                    Text(
                      '& ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff515253),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('privacy policy',
                          style: TextStyle(fontSize: 11)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Color(0xff0087FF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Text(
                      'and ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff515253),
                          fontSize: width * 0.03),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('license agreement',
                          style: TextStyle(fontSize: 11)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Color(0xff0087FF),
                      ),
                    ),
                    Text(
                      ' &',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff515253),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('read more', style: TextStyle(fontSize: 11)),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Color(0xff0087FF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Text('you have an account?',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: width * 0.04)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'login',
                        style: TextStyle(
                            color: Color(
                              0xff0087FF,
                            ),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
