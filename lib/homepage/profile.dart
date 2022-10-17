import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool value1 = false;
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
                      "Connect",
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
}
