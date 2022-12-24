import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:flutter_application_1/homepage/peopleprofiletab.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class PeopleProfile extends StatefulWidget {
  const PeopleProfile({super.key});

  @override
  State<PeopleProfile> createState() => _PeopleProfileState();
}

class _PeopleProfileState extends State<PeopleProfile> {
  allnotification(context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
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
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE2E2E2),
                        border: Border.all(
                            width: 0.5, color: const Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 5,
                    width: 100,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xff0087FF)),
                      ),
                    ],
                  ),
                  const Divider(),
                  ListTile(
                      minLeadingWidth: 10,
                      visualDensity: const VisualDensity(vertical: -3),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        'All notifications',
                        style: ProfileSelf().buildtextstyle(),
                      ),
                      leading: SvgPicture.asset(
                        'assets/setprofile.svg',
                        height: 18,
                        width: 18,
                      ),
                      trailing: Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: allnotification1,
                          onChanged: (value) {
                            setState(() {
                              allnotification1 = value;
                            });
                          })),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ListTile(
                      minLeadingWidth: 10,
                      visualDensity: const VisualDensity(vertical: -3),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        'Post',
                        style: ProfileSelf().buildtextstyle(),
                      ),
                      leading: SvgPicture.asset(
                        'assets/posticon.svg',
                        height: 18,
                        width: 18,
                      ),
                      trailing: Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: post,
                          onChanged: (value) {
                            setState(() {
                              post = value;
                            });
                          })),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ListTile(
                      minLeadingWidth: 10,
                      visualDensity: const VisualDensity(vertical: -3),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        'Story',
                        style: ProfileSelf().buildtextstyle(),
                      ),
                      leading: SvgPicture.asset(
                        'assets/historyicon.svg',
                        height: 18,
                        width: 18,
                      ),
                      trailing: Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: story,
                          onChanged: (value) {
                            setState(() {
                              story = value;
                            });
                          })),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ListTile(
                      minLeadingWidth: 10,
                      visualDensity: const VisualDensity(vertical: -3),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        'Video',
                        style: ProfileSelf().buildtextstyle(),
                      ),
                      leading: SvgPicture.asset(
                        'assets/videoicon.svg',
                        height: 18,
                        width: 18,
                      ),
                      trailing: Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: video,
                          onChanged: (value) {
                            setState(() {
                              video = value;
                            });
                          })),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ListTile(
                      minLeadingWidth: 10,
                      visualDensity: const VisualDensity(vertical: -3),
                      dense: true,
                      onTap: () {},
                      title: Text(
                        'Live',
                        style: ProfileSelf().buildtextstyle(),
                      ),
                      leading: SvgPicture.asset(
                        'assets/privacygroup.svg',
                        height: 18,
                        width: 18,
                      ),
                      trailing: Switch.adaptive(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: live,
                          onChanged: (value) {
                            setState(() {
                              live = value;
                            });
                          })),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ]),
                positionCross(context)
              ],
            );
          });
        });
  }

  var photos = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
  var images = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
  var names = [
    "Rashid",
    "farhan",
    "hamza",
    "aquib",
    "shiraj",
    "pravin",
    "sufiya",
    "sadaf",
    "tahera",
  ];
  bool allnotification1 = false;
  bool post = false;
  bool story = false;
  bool video = false;
  bool live = false;
  bool value2 = false;
  var coverheight = 120.0;
  var profile = 100.0;

  @override
  Widget build(BuildContext context) {
    Size size;
    double height;
    size = MediaQuery.of(context).size;
    height = size.height;
    /* coverheight - profile / 2 */
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            body: ListView(
          children: [
            buildtop(),
            buildcontent(),
            SizedBox(
              height: height * 0.01,
            ),
            Material(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    /*  boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)),
                    ], */
                    color: const Color(0xffE2E2E2),
                    shape: BoxShape.rectangle,
                    border:
                        Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.zero,
                    labelColor: const Color(0xff0087FF),
                    unselectedLabelColor: const Color(0xff333333),
                    tabs: [
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.photo,
                              size: 10,
                            ),
                            Text(
                              'Photo',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_arrow,
                              size: 10,
                            ),
                            Text(
                              'Videos',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.restore,
                              size: 10,
                            ),
                            Text(
                              'Story',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Tab(
                        height: 20,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.account_circle,
                              size: 10,
                            ),
                            Text(
                              'Tagged',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                images[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            names[index],
                            style: const TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10),
                          )
                        ],
                      );
                    }),
              ),
            ),
            SizedBox(
              /* padding: const EdgeInsets.only(left: 20), */
              height: 300,
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
                                  image: AssetImage(photos[i]),
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
                                      image: AssetImage(
                                        photos[i],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(
                                    minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  ); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
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
                                constraints: const BoxConstraints(
                                    minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const VideoApp()),
                                  ); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
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
                                constraints: const BoxConstraints(
                                    minHeight: 45, minWidth: 45),
                                onPressed: () {
                                  /*   pickImage(ImageSource.camera);
                                  Navigator.of(context).pop();
                                  setState(() {
                                    btnchng = false;
                                  }); */
                                },
                                elevation: 0,
                                fillColor: Colors.transparent,
                                /*  padding: EdgeInsets.all(15.0), */
                                shape: const CircleBorder(
                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                    ),
                                child: const FaIcon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Color(0xff333333),
                                  size: 17,
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Text(
            'Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..Bio #content #Lorem ipsum doler sit amet cosecteture adipiscing elit cursus in lobortis risus quis nibh #sample #more..',
            style: TextStyle(
                color: Color(0xff03194B), fontSize: 10, fontFamily: 'Poppins'),
          ),
          Row(
            /*  mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(90, 35),
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
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Following",
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
                    minimumSize: const Size(90, 35),
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
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
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
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(90, 35),
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
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Suggestion",
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Peopleprofiletab(
                            value: 2,
                          )),
                );
              },
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
              child: const Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  "Connect to Email",
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
    );
  }

  buildtop() {
    const bottom = 60.0;
    const top = 70.0;
    Size size;
    double width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: bottom),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaSlC5NEH60CTgwgBpXYJTI37o3jNNQImqhw&usqp=CAU',
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
                radius: 50,
                backgroundColor: primaryColorOfApp,
                child: CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey.shade800,
                      backgroundImage: const NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
                    )),
              ),
              sizedbox(context),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Peopleprofiletab(
                              value: 0,
                            )),
                  );
                },
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(32, 30),
                    elevation: 5,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 9.0, vertical: 0),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Peopleprofiletab(
                              value: 1,
                            )),
                  );
                },
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(32, 30),
                    elevation: 5,
                    /*   padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 9, vertical: 0),
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
                      boxShadow: const [],
                      color: Colors.white,
                      border:
                          Border.all(width: 1, color: const Color(0xff0087FF)),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        aboutProfile(context);
                      },
                      icon: const Icon(Icons.more_horiz)),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 110,
          top: 140,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Nanncy Jain',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      const Text(
                        'lats seen today 12:15 PM',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            color: Color(0xff737373)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        '@Nanncyjain23',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            color: Color(0xff0087FF)),
                      ),
                      SizedBox(
                        width: width * 0.005,
                      ),
                      const Iconify(
                        Bi.patch_check,
                        color: primaryColorOfApp,
                        size: 17,
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Iconify(
                          MaterialSymbols.star_rounded,
                          color: Color(0xff08A434),
                          size: 20,
                        ),
                      ),
                      const Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily:
                              'Poppins', /* fontWeight: FontWeight.bold */
                        ),
                      ),
                      /*      SizedBox(
                        width: width * 0.05,
                      ), */
                      IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            allnotification(context);
                          },
                          icon: const Icon(
                            Icons.notifications,
                            color: Color(0xff0087FF),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  sizedbox(context) {
    Size size;
    double width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return SizedBox(
      width: width * 0.01,
    );
  }
}
