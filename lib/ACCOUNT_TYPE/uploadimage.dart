import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ONBOARDING/splashscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iconify_flutter/icons/ant_design.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();

  radius() {
    return BorderRadius.circular(5);
  }
}

class _UploadImageState extends State<UploadImage> {
  var size, height, width;
  DateTime dateTime = DateTime.now();
  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool select = true;
  bool birth = true;

  bool btnchng = true;

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

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
            /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                child: image != null
                    ? ClipOval(
                        child: Image.file(
                          image!,
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      )
                    // Image. file
                    : CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.account_circle,
                            size: 80,
                            color: Color(0xffe2e2e2),
                          ),
                        ),
                      ),
              ),
              SizedBox(
                height: 19,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
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
                                return Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Container(
                                            color: const Color(0xffE2E2E2),
                                            height: 7,
                                            width: 70,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80.0),
                                              child: const Text(
                                                'Your Profile Photo',
                                                style: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Divider(),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                RawMaterialButton(
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: 45),
                                                  onPressed: () {
                                                    pickImage(
                                                        ImageSource.camera);
                                                    Navigator.of(context).pop();
                                                    setState(() {
                                                      btnchng = false;
                                                    });
                                                  },
                                                  elevation: 0,
                                                  fillColor: Color(0xffDADADA),
                                                  child: Iconify(
                                                    AntDesign.camera_filled,
                                                    color: Color(0xff0087FF),
                                                    size: 17,
                                                  ),
                                                  /*  padding: EdgeInsets.all(15.0), */
                                                  shape: CircleBorder(
                                                      /* side: BorderSide(
                                                        width: 1,
                                                        color: Color(0xff0087FF)) */
                                                      ),
                                                ),
                                                Text(
                                                  'camera',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff333333)),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                RawMaterialButton(
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(
                                                      minHeight: 45,
                                                      minWidth: 45),
                                                  onPressed: () {
                                                    pickImage(
                                                        ImageSource.gallery);
                                                    Navigator.of(context).pop();
                                                    setState(() {
                                                      btnchng = false;
                                                    });
                                                  },
                                                  elevation: 0,
                                                  fillColor: Color(0xffDADADA),
                                                  child: Iconify(
                                                    Heroicons.photo_20_solid,
                                                    color: Color(0xff0087FF),
                                                    size: 17,
                                                  ),
                                                  /*  padding: EdgeInsets.all(15.0), */
                                                  shape: CircleBorder(
                                                      /* side: BorderSide(
                                                        width: 1,
                                                        color: Color(0xff0087FF)) */
                                                      ),
                                                ),
                                                Text(
                                                  'gallery',
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff333333)),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.1,
                                        ),
                                      ],
                                    ),
                                    Positioned.fill(
                                        top: -36,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              /*   width: 45,
                                  height: 45, */
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                );
                              });
                        },
                        child: btnchng
                            ? Text(
                                'upload profile image',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: width * 0.04,
                                    color: const Color(0xff0087FF)),
                              )
                            : Text(
                                'change profile image',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: width * 0.04,
                                    color: const Color(0xff0087FF)),
                              ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: 15,
                child: Row(
                  children: [
                    Text(
                      'Select Your Gender',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: width * 0.04,
                          color: const Color(0xff515253)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
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
                          borderRadius: UploadImage().radius(),
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
                          borderRadius: UploadImage().radius(),
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
                          borderRadius: UploadImage().radius(),
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
                height: height * 0.03,
              ),
              SizedBox(
                height: 18,
                child: Row(
                  /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          select = false;
                          birth = true;
                        });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: select
                            ? const Color(0xff515253)
                            : const Color(0xff0087FF),
                      ),
                      child: const Text(
                        'Select Your Age Group',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          /*  decoration: TextDecoration.underline, */
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: width * 0.05,
                          color: const Color(0xff515253)),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          birth = false;
                          select = true;
                        });
                        showModalBottomSheet<dynamic>(
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
                                return Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Select Your Birthday',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                                color: Color(0xff000000)),
                                          ),
                                          const Divider(
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Text(
                                                'Month',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20,
                                                    color: Color(0xff000000)),
                                              ),
                                              Text(
                                                'Day',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20,
                                                    color: Color(0xff000000)),
                                              ),
                                              Text(
                                                'Year',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 20,
                                                    color: Color(0xff000000)),
                                              ),
                                            ],
                                          ),
                                          buildDatePicker(),
                                          SizedBox(
                                            height: height * 0.05,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                  width: 20,
                                                  child: Checkbox(
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      value: value,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          this.value = value!;
                                                        });
                                                      }),
                                                ),
                                                /* SizedBox(
                                            width: 15,
                                          ), */
                                                const Text(
                                                  'this won\'t be shared any ror anywhere',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff515253)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Show your birthday info everyone',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff515253)),
                                              ),
                                              Switch.adaptive(
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  value: value1,
                                                  onChanged: (value1) {
                                                    setState(() {
                                                      this.value1 = value1;
                                                    });
                                                  })
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Show your birthday info everyone',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xff515253)),
                                              ),
                                              Switch.adaptive(
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  value: value2,
                                                  onChanged: (value2) {
                                                    setState(() {
                                                      this.value2 = value2;
                                                    });
                                                  })
                                            ],
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            // height: 50,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                             /*      minimumSize:
                                                      const Size(0.0, 40), */
                                                  // padding: EdgeInsets.symmetric(
                                                  //     horizontal: 40.0, vertical: 20.0),
                                                  backgroundColor:
                                                      const Color(0xff0087FF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0))),
                                              child: Text(
                                                "Confirm & Continue",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    /* fontWeight:
                                                        FontWeight.w600 */),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.05,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned.fill(
                                        top: -36,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              /*   width: 45,
                                  height: 45, */
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                );
                              });
                            });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: birth
                            ? const Color(0xff515253)
                            : const Color(0xff0087FF),
                      ),
                      child: const Text(
                        'Your Birthday',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = false;
                    age2 = true;
                    age3 = true;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: age1
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: UploadImage().radius(),
                      border: Border.all(
                          width: 0.7,
                          color: age1
                              ? const Color(0xff515253)
                              : const Color.fromARGB(255, 165, 194, 219))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age1
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '0 to 17',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04,
                            color: age1
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age2 = false;
                    age1 = true;
                    age3 = true;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: age2
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: UploadImage().radius(),
                      border: Border.all(
                          width: 0.7,
                          color: age2
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age2
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '18 to 29',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04,
                            color: age2
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = false;
                    age4 = true;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: age3
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: UploadImage().radius(),
                      border: Border.all(
                          width: 0.7,
                          color: age3
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age3
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '30 to 44',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04,
                            color: age3
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = true;
                    age4 = false;
                    age5 = true;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: age4
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: UploadImage().radius(),
                      border: Border.all(
                          width: 0.7,
                          color: age4
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age4
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '45 to 60',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04,
                            color: age4
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    age1 = true;
                    age2 = true;
                    age3 = true;
                    age4 = true;
                    age5 = false;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: age5
                          ? Colors.transparent
                          : const Color.fromARGB(255, 200, 226, 249),
                      borderRadius: UploadImage().radius(),
                      border: Border.all(
                          width: 0.7,
                          color: age5
                              ? const Color(0xff515253)
                              : const Color(0xff0087FF))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Age Group',
                          style: TextStyle(
                              color: age5
                                  ? const Color(0xff515253)
                                  : const Color(0xff0087FF)),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '60 above',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: width * 0.04,
                            color: age5
                                ? const Color(0xff515253)
                                : const Color(0xff0087FF)),
                      ),
                    ],
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      /*  minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: UploadImage().radius())),
                  child: Text(
                    "Confirm & Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      fontFamily: 'Poppins', /* fontWeight: FontWeight.w600 */
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker() => SizedBox(
        height: 150,
        child: CupertinoDatePicker(
          minimumYear: 1950,
          maximumYear: DateTime.now().year,
          initialDateTime: dateTime,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (dateTime) =>
              setState(() => this.dateTime = dateTime),
        ),
      );
}
