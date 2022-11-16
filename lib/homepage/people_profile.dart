import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GLOBALS/commentfile.dart';
import 'package:flutter_application_1/homepage/peopleprofiletab.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
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
    double height = size.height, width = size.width;
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
                        color: Color(0xffE2E2E2),
                        border:
                            Border.all(width: 0.5, color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 5,
                    width: 100,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Color(0xff0087FF)),
                      ),
                    ],
                  ),
                  Divider(),
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
                        'video',
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
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
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
  }

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
  var images = [
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
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
                    color: Color(0xffE2E2E2),
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 0.5, color: Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
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
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
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
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
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
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 11),
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
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: primaryColorOfApp),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                images[index],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(
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
                onPressed: () {},
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
                  MaterialPageRoute(builder: (context) => Peopleprofiletab(value: 2,)),
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
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: const Text(
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
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkuP4A26vUkEZwYJL4zGV8KRxUbBmcX11Mdw&usqp=CAU'),
                    )),
              ),
              sizedbox(context),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Peopleprofiletab(value: 0,)),
                  );
                },
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Peopleprofiletab(value: 1,)),
                  );
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
                        aboutProfile(context);
                      },
                      icon: Icon(Icons.more_horiz)),
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
                      Text(
                        'Nanncy Jain',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text(
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
                      Text(
                        '@Nanncyjain23',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            color: Color(0xff0087FF)),
                      ),
                      SizedBox(
                        width: width * 0.005,
                      ),
                      Iconify(
                        Bi.patch_check,
                        color: primaryColorOfApp,
                        size: 17,
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Iconify(
                          MaterialSymbols.star_rounded,
                          color: Color(0xff08A434),
                          size: 20,
                        ),
                      ),
                      Text(
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
                          constraints: BoxConstraints(),
                          onPressed: () {
                            allnotification(context);
                          },
                          icon: Icon(
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
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SizedBox(
      width: width * 0.01,
    );
  }
}
