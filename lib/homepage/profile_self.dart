import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/arcticons.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bytesize.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ci.dart';
import 'package:iconify_flutter/icons/clarity.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/et.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mingcute.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSelf extends StatefulWidget {
  const ProfileSelf({super.key});

  @override
  State<ProfileSelf> createState() => _ProfileSelfState();
}

class _ProfileSelfState extends State<ProfileSelf> {
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;

  var photos = [
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/vintage-victorian-style-engraving-set-original-from-british-library-digitally-enhanced-by-rawpixel_53876-165338.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/easter-bird-design-element-cute-watercolor-illustration_53876-104101.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/green-world-with-tree-background_1048-1484.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/glittery-gold-butterfly-vintage-animal-illustration_53876-165454.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/flower-robot-environment-cute-concept_53876-31814.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/lovely-easter-bunny-garden-design-element-set_53876-153469.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/yellow-easter-bird-design-element-cute-watercolor-illustration_53876-145496.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
    'https://img.freepik.com/free-photo/fun-dog-3d-illustration_183364-81022.jpg?size=338&ext=jpg&ga=GA1.2.1282463038.1665663473',
  ];
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

  var coverheight = 120.0;
  var profile = 100.0;

/*   bool btnchng = true; */

  File? image;
  File? image1;
  Future pickforprofile(ImageSource source) async {
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

  Future pickforbanner(ImageSource source) async {
    try {
      final image1 = await ImagePicker().pickImage(source: source);
      if (image1 == null) return;
      final imageTemporary = File(image1.path);
      setState(() => this.image1 = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';

  @override
  Widget build(BuildContext context) {
    /*  TabController tabController =TabController(length: 4, vsync:this); */
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
              /* controller: tabController, */
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
            Container(
              /*  color: Colors.red, */
              height: 75,
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xff333333)),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(9.0),
                                          child: Iconify(Bytesize.plus),
                                        )
                                        /*  child: SvgPicture.asset(
                                        'assets/new.svg',
                                        width: 40,
                                      ), */
                                        ),
                                  ),
                                  /* Positioned(
                                    top: 35,
                                    left: 30,
                                    child: Container(
                                        height: 20,
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 2),
                                            shape: BoxShape.circle,
                                            color: primaryColorOfApp),
                                        child: IconButton(
                                            padding: EdgeInsets.all(0),
                                            constraints: BoxConstraints(),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              size: 15,
                                            ))),
                                  ) */
                                ]),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Add',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Rashid',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Farhan',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Akhtar',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Farhan',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Farhan',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: primaryColorOfApp),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/un.svg',
                                    width: 41,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Farhan',
                                  style: TextStyle(
                                      color: customTextColor,
                                      fontFamily: 'Poppins',
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              /* padding: const EdgeInsets.only(left: 20), */
              height: 300,
              /* width: double.maxFinite, */
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Container(
                            /*       width: 200, */
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(photos[i]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 200,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  );
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                crossAxisCount: 3),
                        scrollDirection: Axis.vertical,
                        itemCount: photos.length,
                        itemBuilder: (_, i) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                /*      width: 200,
                              height: 300, */

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*   pickImage(ImageSource.camera);
                                  Navigator.of(context).pop();
                                  setState(() {
                                    btnchng = false;
                                  }); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                child: FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
                                ),
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            )
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
                    buildeditmainpage();
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
                    "Go to Dashboard",
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
          child: image1 != null
              ? Container(
                  width: double.infinity,
                  height: coverheight,
                  child: Image.file(
                    image1!,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: coverheight,
                  child: Icon(
                    Icons.photo,
                    color: primaryColorOfApp,
                    size: 40,
                  )),
        ),
        Positioned(
          top: top,
          child: Row(
            /*     crossAxisAlignment: CrossAxisAlignment.center, */
            /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
            children: [
              sizedbox(context),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                      child: image != null
                          ? CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 47,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.grey.shade800,
                                  backgroundImage: FileImage(image!),
                                ),
                              ),
                            )
                          // Image. file
                          : CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 47,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 95,
                                  color: primaryColorOfApp,
                                ), /* CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.grey.shade800,
                                  backgroundImage:
                                      AssetImage('assets/image.png'),
                                ), */
                              ),
                            )),
                  IconButton(
                      onPressed: () {
                        buildbutton();
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.penToSquare,
                        size: 15,
                        color: Colors.black,
                      ))
                ],
              ),
              /* CircleAvatar(
                radius: profile / 2,
                backgroundImage: NetworkImage(
                    'https://fonts.freepiklabs.com/storage/1384/conversions/Cover-thumb2x.jpg'),
              ), */
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
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffE2E2E2),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          height: 5,
                                          width: 100,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            padding: EdgeInsets.all(0),
                                            constraints: BoxConstraints(),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: Icon(
                                              Icons.arrow_back,
                                              color: primaryColorOfApp,
                                            )),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text(
                                          'Privacy',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: customTextColor),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/setprofile.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Private Profile',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/profileactivityicon.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Activity Status',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/digitalicon.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Show Reward Points',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/privacygroup.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Groups ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/commenticon.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Comments',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/privacypost.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Post-Photo & Video',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/historyicon.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Story',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/liveicon.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Live',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            Iconify(
                                              Bi.patch_check,
                                              size: 10,
                                              color: primaryColorOfApp,
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/setchat2.svg'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Chat-Box',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/@.svg',
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Mension ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/tagicon.svg',
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Tag',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Iconify(
                                              EmojioneMonotone.wrapped_gift,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Send me GIFT',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/blockicon.svg',
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Block Profile List',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Iconify(
                                          Eva.arrow_right_fill,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                  ]));
                        });
                      });
                },
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
                        Iconify(
                          Bi.patch_check,
                          size: 15,
                          color: primaryColorOfApp,
                        ),
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

  buildInputdecoration(prefix, labeltext, suffix, hinttext) {
    return InputDecoration(
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      prefix: prefix,
      suffixIcon: suffix,
      hintText: hinttext,
      hintStyle: TextStyle(fontSize: 10),
      contentPadding: const EdgeInsets.all(15),
    );
  }

  buildpersonalsetting() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        '@profile.user-id',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: customTextColor),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Iconify(
                        Bi.patch_check,
                        color: primaryColorOfApp,
                        size: 15,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Profie Name ',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: customTextColor),
                      )
                    ],
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      /*  Navigator.of(context).pop(); */
                      buildsettingpage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/settingicon.svg',
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            ),
                          ],
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                          color: Color(0xff333333),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      buildActivityStatus();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/profileactivityicon.svg',
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Profile Activity',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            ),
                          ],
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                          color: Color(0xff333333),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/digitalicon.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Digital Collections',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/historyicon.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'History',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Iconify(Ion.archive, size: 15),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Archive',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Iconify(Bi.bookmark_star, size: 15),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Saved',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/hearticon.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Favorites Profile',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/friendicon.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Friends',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Iconify(Bi.qr_code_scan, size: 15),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'QR Code',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/discovericon1.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Discover',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/settingshare.svg',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Share ',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 12),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'version  3.6.9. (596) ',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ]));
          });
        });
  }

  buildbutton() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      RawMaterialButton(
                        padding: EdgeInsets.zero,
                        constraints:
                            BoxConstraints(minHeight: 45, minWidth: 45),
                        onPressed: () {
                          pickforprofile(ImageSource.camera);
                          Navigator.of(context).pop();
                          setState(() {
                            btnchng = false;
                          });
                        },
                        elevation: 0,
                        fillColor: Color(0xffDADADA),
                        child: FaIcon(
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
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Color(0xff333333)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      RawMaterialButton(
                        padding: EdgeInsets.zero,
                        constraints:
                            BoxConstraints(minHeight: 45, minWidth: 45),
                        onPressed: () {
                          pickforprofile(ImageSource.gallery);
                          Navigator.of(context).pop();
                          setState(() {
                            btnchng = false;
                          });
                        },
                        elevation: 0,
                        fillColor: Color(0xffDADADA),
                        child: Icon(
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
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Color(0xff333333)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
            ],
          );
        });
  }

  buildprofilepage() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE2E2E2),
                          borderRadius: BorderRadius.circular(8)),
                      height: 5,
                      width: 100,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: primaryColorOfApp,
                        )),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                    height: 40,
                    child: TextFormField(
                        enabled: username,
                        decoration: buildInputdecoration(
                          null,
                          username ? '@username' : '',
                          Icon(Icons.check_circle),
                          '@Nancy Jain',
                        ))),
                Container(
                  height: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      cancel
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = false;
                                  cancel = false;
                                });
                              },
                              child: Text('cancel?',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 10)),
                            )
                          : TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = true;
                                  cancel = true;
                                });
                              },
                              child: Text('Change?',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 10)),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: fullname,
                              decoration: buildInputdecoration(
                                null,
                                fullname ? 'Enter full name' : '',
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
                /*   SizedBox(
                                      height: height * 0.01,
                                    ), */
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: bio,
                              decoration: buildInputdecoration(
                                null,
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
                SizedBox(
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
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: bio,
                              decoration: buildInputdecoration(
                                null,
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
                      Divider(
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
                      Divider(
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
                      buildaddresspage();
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
                    child: Text(
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
                    child: Text(
                      "Change Interest",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: primaryColorOfApp,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(140, 35),
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
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: const Text(
                          "Save Changes",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ]),
            );
          });
        });
  }

  buildnotificationpage() {
    var notification = true;
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: customTextColor),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Notifications',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: notification,
                          onChanged: (value1) {
                            setState(() {
                              this.value1 = notification;
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      buildlikecommentshare();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Like, Comments, Share, Photo, Video & Story  ',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      buildlive();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Live',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      buildchatbox();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chat-Box & Group ',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      buildgiftpage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gift  Send  me ',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      buildconnectemail();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Connect for you (via email)',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  InkWell(
                    onTap: () {
                      buildnewfollow();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Followers and Following ',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                ]));
          });
        });
  }

  buildsettingpage() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      /*  popmethod(); */
                      buildprofilepage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/setprofile.svg',
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Profile',
                              style: buildtextstyle(),
                            ),
                          ],
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                          color: Color(0xff333333),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      /*     popmethod(); */
                      buildnotificationpage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/setnotification.svg',
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Notifications',
                              style: buildtextstyle(),
                            ),
                          ],
                        ),
                        Iconify(
                          Eva.arrow_right_fill,
                          size: 15,
                          color: Color(0xff333333),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setfolo.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'followers & following monetize ',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setpermision.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Permission set',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setlang.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'language',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setchat2.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Chat-box (message)',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.campaign_outlined,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ads',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Iconify(Bi.patch_check, size: 15),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '@Verification',
                            style: buildtextstyle(),
                          ),
                          Iconify(
                            Bi.patch_check,
                            size: 10,
                            color: primaryColorOfApp,
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setprivacy.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Privacy',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setsecurity.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Security',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setabout.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'About',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/sethelp.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Help',
                            style: buildtextstyle(),
                          ),
                        ],
                      ),
                      Iconify(
                        Eva.arrow_right_fill,
                        size: 15,
                        color: Color(0xff333333),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/setswitch.svg',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SWITCH PROFILE',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ]));
          });
        });
  }

  mediaquerry() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
  }

  buildeditmainpage() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit profile',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.x,
                          size: 15,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: image != null
                              ? CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.blue,
                                  child: CircleAvatar(
                                    radius: 37,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.grey.shade800,
                                      backgroundImage: FileImage(image!),
                                    ),
                                  ),
                                )
                              // Image. file
                              : Icon(
                                  Icons.account_circle,
                                  size: 70,
                                  color: Colors.grey,
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
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
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
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: height * 0.01,
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Container(
                                                  color:
                                                      const Color(0xffE2E2E2),
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 80.0),
                                                    child: const Text(
                                                      'Your Profile Photo',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff333333),
                                                          fontSize: 15,
                                                          fontFamily:
                                                              'Poppins'),
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      RawMaterialButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        constraints:
                                                            BoxConstraints(
                                                                minHeight: 45,
                                                                minWidth: 45),
                                                        onPressed: () {
                                                          pickforprofile(
                                                              ImageSource
                                                                  .camera);
                                                          Navigator.of(context)
                                                              .pop();
                                                          setState(() {
                                                            btnchng = false;
                                                          });
                                                        },
                                                        elevation: 0,
                                                        fillColor:
                                                            Color(0xffDADADA),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .camera,
                                                          color:
                                                              Color(0xff0087FF),
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
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xff333333)),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      RawMaterialButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        constraints:
                                                            BoxConstraints(
                                                                minHeight: 45,
                                                                minWidth: 45),
                                                        onPressed: () {
                                                          pickforprofile(
                                                              ImageSource
                                                                  .gallery);
                                                          Navigator.of(context)
                                                              .pop();
                                                          setState(() {
                                                            btnchng = false;
                                                          });
                                                        },
                                                        elevation: 0,
                                                        fillColor:
                                                            Color(0xffDADADA),
                                                        child: Icon(
                                                          Icons.photo,
                                                          color:
                                                              Color(0xff0087FF),
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
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Color(
                                                                0xff333333)),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.1,
                                              ),
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
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height: 40,
                    child: TextFormField(
                        enabled: username,
                        decoration: buildInputdecoration(
                          null,
                          username ? '@username' : '',
                          Icon(Icons.check_circle),
                          '@Nancy Jain',
                        ))),
                Container(
                  height: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      cancel
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = false;
                                  cancel = false;
                                });
                              },
                              child: Text('cancel?',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 10)),
                            )
                          : TextButton(
                              style: TextButton.styleFrom(
                                  /* minimumSize: Size(100, 5), */
                                  elevation: 0,
                                  visualDensity: VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {
                                setState(() {
                                  username = true;
                                  cancel = true;
                                });
                              },
                              child: Text('Change?',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: primaryColorOfApp,
                                      fontSize: 10)),
                            ),
                    ],
                  ),
                ),
                /*  SizedBox(
                                      height: height * 0.01,
                                    ), */
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: fullname,
                              decoration: buildInputdecoration(
                                null,
                                fullname ? 'Enter full name' : '',
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
                /*   SizedBox(
                                      height: height * 0.01,
                                    ), */
                SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 240,
                          child: TextFormField(
                              enabled: bio,
                              decoration: buildInputdecoration(
                                null,
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
                SizedBox(
                  height: 10,
                ),
                image1 != null
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.1),
                        ),
                        height: 70,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.file(
                            image1!,
                            fit: BoxFit.cover,
                          ),
                        ))
                    // Image. file
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.1),
                        ),
                        height: 70,
                        width: double.infinity,
                        child: Icon(
                          Icons.photo,
                          size: 50,
                          color: Colors.grey,
                        )),
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
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
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
                                              'Your Banner',
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
                                                  pickforbanner(
                                                      ImageSource.camera);
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    btnchng = false;
                                                  });
                                                },
                                                elevation: 0,
                                                fillColor: Color(0xffDADADA),
                                                child: FaIcon(
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
                                                  pickforbanner(
                                                      ImageSource.gallery);
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    btnchng = false;
                                                  });
                                                },
                                                elevation: 0,
                                                fillColor: Color(0xffDADADA),
                                                child: Icon(
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
                                  );
                                });
                          },
                          child: btnchng
                              ? Text(
                                  'upload banner',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.04,
                                      color: const Color(0xff0087FF)),
                                )
                              : Text(
                                  'change banner',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: width * 0.04,
                                      color: const Color(0xff0087FF)),
                                ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 1),
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
                        border: Border.all(color: Colors.black, width: 1),
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
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      /*   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ); */
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xff0087FF),
                        ),
                        /*  padding: EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 20.0), */
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: Text(
                      "Change Interest",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: customTextColor,
                          /*  fontSize: 18, */
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Auto Play (scrolling)",
                      style: TextStyle(
                          color: const Color(0xff515253),
                          fontFamily: 'Poppins',
                          fontSize: width * 0.03),
                    ),
                    Switch.adaptive(
                        activeColor: primaryColorOfApp,
                        value: valueofswitch,
                        onChanged: (valueofswitch) {
                          setState(() {
                            this.valueofswitch = valueofswitch;
                          });
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Location always",
                      style: TextStyle(
                          color: const Color(0xff515253),
                          fontFamily: 'Poppins',
                          fontSize: width * 0.03),
                    ),
                    Switch.adaptive(
                        activeColor: primaryColorOfApp,
                        value: valueofswitch,
                        onChanged: (valueofswitch) {
                          setState(() {
                            this.valueofswitch = valueofswitch;
                          });
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Go to my',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          minimumSize: Size(100, 5),
                          elevation: 0,
                          visualDensity: VisualDensity(vertical: -4),
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () {
                        /*               Navigator.of(context).pop(); */
                        buildpersonalsetting();
                      },
                      child: Text('Personal Information Settings',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(140, 35),
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
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: const Text(
                          "Save Changes",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ]),
            );
          });
        });
  }

  buildaddresspage() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 168, 161, 161),
                      border: Border.all(
                          width: 0.5,
                          color: Color.fromARGB(255, 168, 161, 161)),
                      borderRadius: BorderRadius.circular(10)),
                  height: 5,
                  width: 100,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: primaryColorOfApp,
                        )),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      'add your address/location',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: height * 0.04,
                ),
                SizedBox(
                    height: 40,
                    child: TextFormField(
                        decoration: buildInputdecoration(
                      Icon(Icons.search),
                      'Search Location',
                      null,
                      'Search Location',
                    ))),
                SizedBox(
                  height: height * 0.04,
                ),
                SizedBox(
                    height: 40,
                    child: TextFormField(
                        decoration: buildInputdecoration(
                      null,
                      'Enter Street Village',
                      null,
                      'Enter Street Village',
                    ))),
                SizedBox(
                  height: height * 0.04,
                ),
                SizedBox(
                    height: 40,
                    child: TextFormField(
                        decoration: buildInputdecoration(
                      null,
                      'Enter Road LandMark',
                      null,
                      'Enter Road LandMark',
                    ))),
                SizedBox(
                  height: height * 0.04,
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
                  height: height * 0.04,
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
                            decoration: buildInputdecoration(
                          null,
                          'Pin Code',
                          null,
                          'Pin Code',
                        ))),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                SizedBox(
                  width: double.infinity,
                  // height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      /*   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GooglePage1()),
                    ); */
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        /*     minimumSize: const Size(0.0, 40), */
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 40.0, vertical: 20.0),
                        backgroundColor: const Color(0xff0087FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
              ]),
            );
          });
        });
  }

  buildActivityStatus() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        /*  isScrollControlled: true, */
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    /*  mainAxisSize: MainAxisSize.min, */
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Activity Status',
                            style: TextStyle(
                                fontFamily: 'Poppins', color: customTextColor),
                          ),
                        ],
                      ),
                      Divider(),
                      Container(
                        /* color: Colors.red, */
                        height: 200,
                        child: Stack(children: [
                          Positioned(
                            top: 20,
                            left: 0,
                            height: 165,
                            width: 288,
                            child: Container(
                              decoration: BoxDecoration(
                                  /* color: Colors.yellow, */
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xff515253)),
                                  borderRadius: BorderRadius.circular(10)),
                              /*  width: 150,
              height: 150, */
                              /*  color: Colors.green[300], */
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Everyone",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: everyone,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = everyone;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: followers,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = followers;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "Following",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: following,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = following;
                                            });
                                          })
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          "OFF",
                                          style: TextStyle(
                                              color: const Color(0xff515253),
                                              fontFamily: 'Poppins',
                                              fontSize: width * 0.03),
                                        ),
                                      ),
                                      Radio(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          groupValue: groupseenonline,
                                          value: off,
                                          onChanged: (val) {
                                            setState(() {
                                              groupseenonline = off;
                                            });
                                          })
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 20,
                            width: 130,
                            height: 10,
                            child: Container(
                              /*   width: 200,
              height: 150, */
                              color: Colors.white,
                              child: const Text(
                                'Profile Active Seen & Online ',
                                style: TextStyle(
                                    color: Color(0xff515253),
                                    fontSize: 10,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ]));
          });
        });
  }

  buildlive() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Live',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'All OFF',
                            style: buildtextstyle(),
                          ),
                        ),
                        Switch.adaptive(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: value1,
                            onChanged: (value1) {
                              setState(() {
                                this.value1 = value1;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 84,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 65,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Followers Live',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 120,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 84,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Following",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 65,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Following Live',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]));
          });
        });
  }

  buildlikecommentshare() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Like, Comments, Share, Photo, Video & Story  ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'All OFF',
                            style: buildtextstyle(),
                          ),
                        ),
                        Switch.adaptive(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: value1,
                            onChanged: (value1) {
                              setState(() {
                                this.value1 = value1;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 160,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Like Your Post: Photo, Video & Story',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    /* color: Colors.red, */
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 14,
                        left: 20,
                        width: 155,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Comments Your Post: Photo, Video & Story',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 8,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    /* color: Colors.red, */
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 20,
                        width: 215,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Share/Repost Your Post: Photo, Video, Story and Your Profile',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 8,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  )
                ]));
          });
        });
  }

  buildchatbox() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Chat-Box & Group',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'All OFF',
                            style: buildtextstyle(),
                          ),
                        ),
                        Switch.adaptive(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: value1,
                            onChanged: (value1) {
                              setState(() {
                                this.value1 = value1;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 65,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Chat Request',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    /* color: Colors.red, */
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 14,
                        left: 20,
                        width: 57,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Group Request',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 8,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    /* color: Colors.red, */
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 20,
                        width: 40,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Video Call Request',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 8,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  )
                ]));
          });
        });
  }

  buildnewfollow() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'New Followers and Follow You',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'All OFF',
                            style: buildtextstyle(),
                          ),
                        ),
                        Switch.adaptive(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: value1,
                            onChanged: (value1) {
                              setState(() {
                                this.value1 = value1;
                              });
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 75,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            '@mentions you',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 120,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 84,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "ON",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 115,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'New Followers: Follow You',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 120,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 84,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "ON",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 140,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Accepted: Your Follow Request',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 120,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 84,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "ON",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 90,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Profile: Suggestions',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  )
                ]));
          });
        });
  }

  buildgiftpage() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Gift Send me ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 63,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Send me Gift',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  )
                ]));
          });
        });
  }

  buildconnectemail() {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE2E2E2),
                            borderRadius: BorderRadius.circular(8)),
                        height: 5,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: primaryColorOfApp,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        'Connect for you (via email)',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: customTextColor,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 20,
                        left: 0,
                        height: 124,
                        width: 288,
                        child: Container(
                          decoration: BoxDecoration(
                              /* color: Colors.yellow, */
                              border: Border.all(
                                  width: 0.5, color: const Color(0xff515253)),
                              borderRadius: BorderRadius.circular(10)),
                          /*  width: 150,
              height: 150, */
                          /*  color: Colors.green[300], */
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Everyone",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: everyone,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = everyone;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Followers",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: followers,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = followers;
                                        });
                                      })
                                ],
                              ),
                              Divider(
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "OFF",
                                      style: TextStyle(
                                          color: const Color(0xff515253),
                                          fontFamily: 'Poppins',
                                          fontSize: width * 0.03),
                                    ),
                                  ),
                                  Radio(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      groupValue: groupseenonline,
                                      value: following,
                                      onChanged: (val) {
                                        setState(() {
                                          groupseenonline = following;
                                        });
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 13,
                        left: 20,
                        width: 103,
                        height: 12,
                        child: Container(
                          /*   width: 200,
              height: 150, */
                          color: Colors.white,
                          child: const Text(
                            'Connect for via email',
                            style: TextStyle(
                                color: Color(0xff515253),
                                fontSize: 10,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  )
                ]));
          });
        });
  }

  buildtextstyle() {
    return TextStyle(
        color: customTextColor, fontFamily: 'Poppins', fontSize: 11);
  }

  popmethod() {
    return Navigator.of(context).pop();
  }
}
