import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSelf extends StatefulWidget {
  const ProfileSelf({super.key});

  @override
  State<ProfileSelf> createState() => _ProfileSelfState();
}

class _ProfileSelfState extends State<ProfileSelf> {
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
  var coverheight = 120.0;
  var profile = 100.0;

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
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    /* coverheight - profile / 2 */;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: ListView(
          children: [
            buildtop(),
            buildcontent(),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              labelColor: Color(0xff0087FF),
              unselectedLabelColor: Color(0xff333333),
              tabs: [
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 10,
                      ),
                      Text(
                        'Photo',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 10,
                      ),
                      Text(
                        'Videos',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.restore,
                        size: 10,
                      ),
                      Text(
                        'Story',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
                Tab(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 10,
                      ),
                      Text(
                        'Tagged',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }

  buildcontent() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text(
              'Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..',
              style: TextStyle(
                  color: Color(0xff03194B),
                  fontSize: 10,
                  fontFamily: 'Poppins'),
            ),
            Row(
              /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      /*    minimumSize: Size(32, 30), */
                      elevation: 5,
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
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "Interaction",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      /*  minimumSize: Size(32, 30), */
                      elevation: 5,
                      /* padding: EdgeInsets.zero, */
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*   padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "Chat-Box",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                OutlinedButton(
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
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Edit profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins'),
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              child: image != null
                                                  ? ClipOval(
                                                      child: Image.file(
                                                        image!,
                                                        width: 70,
                                                        height: 70,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )
                                                  // Image. file
                                                  : const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.red,
                                                      radius: 40,
                                                      backgroundImage:
                                                          AssetImage(
                                                        'assets/image.png',
                                                      ),
                                                    ),
                                            ),
                                            SizedBox(
                                              height: 19,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TextButton(
                                                      style: TextButton.styleFrom(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          tapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap),
                                                      onPressed: () {
                                                        showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            shape:
                                                                const RoundedRectangleBorder(
                                                              // <-- SEE HERE
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        20.0),
                                                              ),
                                                            ),
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    child:
                                                                        Container(
                                                                      color: const Color(
                                                                          0xffE2E2E2),
                                                                      height: 7,
                                                                      width: 70,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.02,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 80.0),
                                                                        child:
                                                                            const Text(
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
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  Divider(),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.03,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          RawMaterialButton(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            constraints:
                                                                                BoxConstraints(minHeight: 45, minWidth: 45),
                                                                            onPressed:
                                                                                () {
                                                                              pickImage(ImageSource.camera);
                                                                              Navigator.of(context).pop();
                                                                              setState(() {
                                                                                btnchng = false;
                                                                              });
                                                                            },
                                                                            elevation:
                                                                                0,
                                                                            fillColor:
                                                                                Color(0xffDADADA),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.camera,
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
                                                                            style:
                                                                                TextStyle(fontFamily: 'Poppins', color: Color(0xff333333)),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        children: [
                                                                          RawMaterialButton(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            constraints:
                                                                                BoxConstraints(minHeight: 45, minWidth: 45),
                                                                            onPressed:
                                                                                () {
                                                                              pickImage(ImageSource.gallery);
                                                                              Navigator.of(context).pop();
                                                                              setState(() {
                                                                                btnchng = false;
                                                                              });
                                                                            },
                                                                            elevation:
                                                                                0,
                                                                            fillColor:
                                                                                Color(0xffDADADA),
                                                                            child:
                                                                                Icon(
                                                                              Icons.photo,
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
                                                                            style:
                                                                                TextStyle(fontFamily: 'Poppins', color: Color(0xff333333)),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.1,
                                                                  ),
                                                                ],
                                                              );
                                                            });
                                                      },
                                                      child: btnchng
                                                          ? Text(
                                                              'upload profile image',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      width *
                                                                          0.04,
                                                                  color: const Color(
                                                                      0xff0087FF)),
                                                            )
                                                          : Text(
                                                              'change profile image',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      width *
                                                                          0.04,
                                                                  color: const Color(
                                                                      0xff0087FF)),
                                                            ))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: FaIcon(
                                              FontAwesomeIcons.x,
                                              size: 15,
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                        height: 40,
                                        child: TextFormField(
                                            enabled: username,
                                            decoration: buildInputdecoration(
                                              username ? '@username' : '',
                                              Icon(Icons.check_circle),
                                              '@Nancy Jain',
                                            ))),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        cancel
                                            ? TextButton(
                                                style: TextButton.styleFrom(
                                                    /* minimumSize: Size(100, 5), */
                                                    elevation: 0,
                                                    visualDensity:
                                                        VisualDensity(
                                                            vertical: -4),
                                                    padding: EdgeInsets.zero,
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap),
                                                onPressed: () {
                                                  setState(() {
                                                    username = false;
                                                    cancel = false;
                                                  });
                                                },
                                                child: Text('cancel?',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10)),
                                              )
                                            : TextButton(
                                                style: TextButton.styleFrom(
                                                    /* minimumSize: Size(100, 5), */
                                                    elevation: 0,
                                                    visualDensity:
                                                        VisualDensity(
                                                            vertical: -4),
                                                    padding: EdgeInsets.zero,
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap),
                                                onPressed: () {
                                                  setState(() {
                                                    username = true;
                                                    cancel = true;
                                                  });
                                                },
                                                child: Text('Change?',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            primaryColorOfApp,
                                                        fontSize: 10)),
                                              ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 240,
                                              child: TextFormField(
                                                  enabled: fullname,
                                                  decoration:
                                                      buildInputdecoration(
                                                    fullname
                                                        ? 'Enter full name'
                                                        : '',
                                                    null,
                                                    'First name Last name Middle Name',
                                                  )),
                                            ),
                                            full1
                                                ? IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = false;
                                                        full1 = false;
                                                      });
                                                    },
                                                    icon: Icon(Icons.cancel))
                                                : IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        fullname = true;
                                                        full1 = true;
                                                      });
                                                    },
                                                    icon: Icon(Icons.edit))
                                          ],
                                        )),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 240,
                                              child: TextFormField(
                                                  enabled: bio,
                                                  decoration:
                                                      buildInputdecoration(
                                                    bio ? 'Enter your bio' : '',
                                                    null,
                                                    'bio',
                                                  )),
                                            ),
                                            bio1
                                                ? IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = false;
                                                        bio1 = false;
                                                      });
                                                    },
                                                    icon: Icon(Icons.cancel))
                                                : IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        bio = true;
                                                        bio1 = true;
                                                      });
                                                    },
                                                    icon: Icon(Icons.edit))
                                          ],
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Make this as Private Account',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: customTextColor,
                                                fontSize: 10)),
                                        Checkbox(
                                            side:
                                                BorderSide(color: Colors.black),
                                            activeColor: primaryColorOfApp,
                                            checkColor: Colors.white,
                                            shape: CircleBorder(),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            value: private,
                                            onChanged: (private) {
                                              setState(() {
                                                this.private = private!;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Show My information to followers',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: customTextColor,
                                                fontSize: 10)),
                                        Checkbox(
                                            side:
                                                BorderSide(color: Colors.black),
                                            activeColor: primaryColorOfApp,
                                            checkColor: Colors.white,
                                            shape: CircleBorder(),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            value: public,
                                            onChanged: (public) {
                                              setState(() {
                                                this.public = public!;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            'Show my rewards point to everyone',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: customTextColor,
                                                fontSize: 10)),
                                        Checkbox(
                                            side:
                                                BorderSide(color: Colors.black),
                                            activeColor: primaryColorOfApp,
                                            checkColor: Colors.white,
                                            shape: CircleBorder(),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            value: rewards,
                                            onChanged: (rewards) {
                                              setState(() {
                                                this.rewards = rewards!;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Go to my',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              minimumSize: Size(100, 5),
                                              elevation: 0,
                                              visualDensity:
                                                  VisualDensity(vertical: -4),
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap),
                                          onPressed: () {},
                                          child: Text(
                                              'Personal Information Settings',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: primaryColorOfApp,
                                                  fontSize: 10)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              minimumSize: Size(140, 35),
                                              /*    minimumSize: Size(32, 30), */
                                              elevation: 0,
                                              /* padding: EdgeInsets.zero, */
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              side: const BorderSide(
                                                color: Color(0xff0087FF),
                                              ),
                                              /*  padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontSize: 10,
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
                                              minimumSize: Size(135, 35),
                                              /*  minimumSize: Size(32, 30), */
                                              elevation: 0,
                                              /* padding: EdgeInsets.zero, */
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              /*   side: const BorderSide(
                                                color: Color(0xff0087FF),
                                              ), */
                                              /*   padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                              backgroundColor:
                                                  primaryColorOfApp,
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: const Text(
                                              "Save Changes",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.1,
                                    ),
                                  ]),
                            );
                          });
                        });
                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(90, 35),
                      elevation: 5,
                      /* padding: EdgeInsets.zero, */
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /* padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    /*   minimumSize: Size(32, 30), */
                    elevation: 5,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    /*       padding:
                            EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: const Text(
                    "Following",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildtop() {
    final bottom = 60.0;
    final top = 70.0;
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Image.network(
            'https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
            width: double.infinity,
            height: coverheight,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: top,
          child: Row(
            /*     crossAxisAlignment: CrossAxisAlignment.center, */
            /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
            children: [
              sizedbox(context),
              CircleAvatar(
                radius: profile / 2,
                backgroundImage: NetworkImage(
                    'https://fonts.freepiklabs.com/storage/1384/conversions/Cover-thumb2x.jpg'),
              ),
              sizedbox(context),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(32, 30),
                    elevation: 5,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: const Text(
                    "12.5M Followers",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              /*    sizedbox(context), */

              SizedBox(
                width: width * 0.01,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(32, 30),
                    elevation: 5,
                    /*   padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: const Text(
                  "200 Following",
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 10,
                      fontFamily: 'Poppins'),
                ),
              ),
              sizedbox(context),
              Material(
                borderRadius: BorderRadius.circular(5),
                elevation: 5,
                child: Container(
                  height: 30,
                  width: 31,
                  decoration: BoxDecoration(
                      boxShadow: [],
                      color: Colors.white,
                      border:
                          Border.all(width: 1, color: const Color(0xff0087FF)),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
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
                                      height: height * 0.01,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 168, 161, 161),
                                          border: Border.all(
                                              width: 0.5,
                                              color: Color.fromARGB(
                                                  255, 168, 161, 161)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 5,
                                      width: 100,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '@Nanncyjain23',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                color: Color(0xff0087FF)),
                                          ),
                                          FaIcon(FontAwesomeIcons.certificate,
                                              size: 15,
                                              color: Color(0xff0087FF))
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text(
                                        'About profile',
                                        style: TextStyle(fontFamily: 'Poppins'),
                                      ),
                                      leading: Icon(Icons.error),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 8, 0),
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text('my favourties profile',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: value1
                                                    ? Color(0xff0087FF)
                                                    : Colors.black)),
                                      ),
                                      leading: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Icon(Icons.heart_broken,
                                            color: value1
                                                ? Color(0xff0087FF)
                                                : Colors.black),
                                      ),
                                      trailing: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: const CircleBorder(),
                                          value: value1,
                                          onChanged: (value1) {
                                            setState(() {
                                              this.value1 = value1!;
                                            });
                                          }),
                                    ),
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 8, 0),
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text('my close friends',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: value2
                                                    ? Color(0xff0087FF)
                                                    : Colors.black)),
                                      ),
                                      leading: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Icon(Icons.gif,
                                            color: value2
                                                ? Color(0xff0087FF)
                                                : Colors.black),
                                      ),
                                      trailing: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: const CircleBorder(),
                                          value: value2,
                                          onChanged: (value2) {
                                            setState(() {
                                              this.value2 = value2!;
                                            });
                                          }),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('share this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.share),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('earn point this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.gif_box),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('group join this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.group),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('copy URL this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.notes),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('QR Code this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.qr_code),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('Report this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.report),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      onTap: () {},
                                      title: Text('Block this profile',
                                          style:
                                              TextStyle(fontFamily: 'Poppins')),
                                      leading: Icon(Icons.error),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                  ],
                                );
                              });
                            });
                      },
                      icon: Icon(Icons.more_horiz)),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 120,
          top: 140,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 100,
                    /*  color: Colors.red, */
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nanncy Jain',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '@Nanncyjain23',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Color(0xff0087FF)),
                        ),
                        FaIcon(FontAwesomeIcons.certificate,
                            size: 15, color: Color(0xff0087FF))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.green,
              ),
              Text('4.8'),
              SizedBox(
                width: width * 0.05,
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xff0087FF),
                  ))
            ],
          ),
        )
      ],
    );
  }

  sizedbox(context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SizedBox(
      width: width * 0.01,
    );
  }

  buildInputdecoration(labeltext, suffix, hinttext) {
    return InputDecoration(
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
      suffixIcon: suffix,
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 10),
      contentPadding: const EdgeInsets.all(15),
    );
  }
}
