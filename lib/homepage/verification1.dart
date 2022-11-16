import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';

class Verification1 extends StatefulWidget {
  const Verification1({Key? key}) : super(key: key);

  @override
  State<Verification1> createState() => _Verification1State();
}

class _Verification1State extends State<Verification1> {
  List items = [
    'item1',
    'item2',
    'item3',
  ];
  bool valueofswitch = false;
  String? value;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Verification',
          style: TextStyle(
              fontSize: 15, fontFamily: 'Poppins', color: customTextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Text(
              '#Content-Request for verification your private profile',
              style: TextStyle(
                  fontSize: 10, fontFamily: 'Poppins', color: customTextColor),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              'For Your Private Profile Caiteria # Content',
              style: TextStyle(
                  fontSize: 10, fontFamily: 'Poppins', color: customTextColor),
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
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 3),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    labelText: '',
                                    border: InputBorder.none,
                                  )),
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
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 3),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    labelText: '',
                                    border: InputBorder.none,
                                  )),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    width: 100,
                    height: 10,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'Enter Your Full Name',
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
              height: 38,
              decoration: BoxDecoration(
                borderRadius: UploadImage().radius(),
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      hint: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'select your business categories*',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        ),
                      ),
                      isExpanded: true,
                      value: value,
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      elevation: 0,
                      /*  minimumSize:
                                                                    Size(80, 30), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onPressed: () {},
                  child: Text(
                    'Attach Document',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 10),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'e.g. Use Current Loaction',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
                Switch.adaptive(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColorOfApp,
                    value: valueofswitch,
                    onChanged: (valueofswitch) {
                      setState(() {
                        this.valueofswitch = valueofswitch;
                      });
                    })
              ],
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
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 3),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    labelText: '',
                                    border: InputBorder.none,
                                  )),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    width: 90,
                    height: 10,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'Enter Street/Village',
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
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 3),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    labelText: '',
                                    border: InputBorder.none,
                                  )),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    width: 100,
                    height: 10,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'Enter Road/Landmark',
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
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'select city',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xffC4C4C4)),
                          ),
                        ),
                        /*  isExpanded: true, */
                        value: value,
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            this.value = value as String?;
                          });
                        }),
                  ),
                ),
                Container(
                  width: 140,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'select state',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xffC4C4C4)),
                          ),
                        ),
                        /*  isExpanded: true, */
                        value: value,
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            this.value = value as String?;
                          });
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 0.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'select city',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xffC4C4C4)),
                          ),
                        ),
                        /*  isExpanded: true, */
                        value: value,
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            this.value = value as String?;
                          });
                        }),
                  ),
                ),
                SizedBox(
                    width: 140,
                    height: 30,
                    child: TextFormField(
                        decoration: WidgetProfilePage().buildInputdecoration(
                      null,
                      'Pin Code',
                      null,
                      'Pin Code',
                    ))),
              ],
            ),
            SizedBox(
              height: height * 0.02,
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
                            padding:
                                const EdgeInsets.only(left: 18.0, bottom: 3),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 210,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                    labelText: '',
                                    border: InputBorder.none,
                                  )),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    width: 75,
                    height: 10,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'website link any',
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
          ],
        ),
      ),
    );
  }
}
