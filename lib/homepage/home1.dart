import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image(
                  image: const AssetImage(
                    'assets/logo.png',
                  ),
                  height: height * 0.06,
                  width: width * 0.12,
                  fit: BoxFit.fitHeight),
              /* Text(
                'myttube',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff18346D),
                  fontFamily: 'Satisfy',
                  fontSize: width * 0.07,
                  shadows: [
                    const Shadow(
                      blurRadius: 8.0,
                      color: Color(0xff0087FF),
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ), */
            ],
          ),
          actions: [
            RawMaterialButton(
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minHeight: 35, minWidth: 35),
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.white,
              child: Icon(
                Icons.qr_code,
                color: Color(0xff0B1C3D),
                size: 17,
              ),
              /*  padding: EdgeInsets.all(15.0), */
              shape: CircleBorder(
                  side: BorderSide(width: 1, color: Color(0xff0087FF))),
            ),
            RawMaterialButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minHeight: 35, minWidth: 35),
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.white,
              child: Icon(
                Icons.notifications,
                color: Color(0xff0B1C3D),
                size: 17,
              ),
              /*  padding: EdgeInsets.all(15.0), */
              shape: CircleBorder(
                  side: BorderSide(width: 1, color: Color(0xff0087FF))),
            ),
            RawMaterialButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(minHeight: 35, minWidth: 35),
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.white,
              child: Icon(
                Icons.reviews,
                color: Color(0xff0B1C3D),
                size: 17,
              ),
              /*  padding: EdgeInsets.all(15.0), */
              shape: CircleBorder(
                  side: BorderSide(width: 1, color: Color(0xff0087FF))),
            )
          ],
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: userlist.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(userlist[index].image),
                      ),
                      /* ClipOval(child: Image.network(userlist[index].image)), */
                      title: Text(userlist[index].userId,
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 13)),
                      subtitle: Text(userlist[index].des,
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 10)),
                      trailing: SizedBox(
                        width: 72,
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    elevation: 0,
                                    minimumSize: const Size(45.0, 25.0),
                                    // padding: EdgeInsets.symmetric(
                                    //     horizontal: 40.0, vertical: 20.0),
                                    backgroundColor: const Color(0xff0087FF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                                onPressed: () {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 10),
                                )),
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.more_vert)),
                          ],
                        ),
                      ),
                    ),
                    Image.network(userlist[index].image),
                    sizedbox(context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.thumb_up)),
                            Text(
                              'Like',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              userlist[index].likecount.toString(),
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        ),
                        /*  sizedbox(context), */
                        Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.chat_bubble_outline)),
                            Text(
                              'Comments',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              userlist[index].commentcount.toString(),
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        ),
                        /*    sizedbox(context), */
                        Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.shareFromSquare)),
                            Text(
                              'Share',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              userlist[index].sharecount.toString(),
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        ),
                        /*    sizedbox(context), */
                        Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.gift)),
                            Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                            Text(
                              userlist[index].giftcount.toString(),
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        ),
                        /* sizedbox(context), */
                        Text(
                          userlist[index].viewcount.toString() + " View",
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ),
                        /*  Text(
                          'View',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
                        ), */
                        Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.turned_in_not_sharp)),
                            Text(
                              'Save',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            })));
  }
}

sizedbox(context) {
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return SizedBox(
    height: height * 0.02,
  );
}

class Modal {
  final String userId;
  final String des;
  final String image;
  final int likecount;
  final int commentcount;
  final int sharecount;
  final int giftcount;
  final int viewcount;

  const Modal({
    required this.userId,
    required this.des,
    required this.image,
    required this.likecount,
    required this.commentcount,
    required this.sharecount,
    required this.giftcount,
    required this.viewcount,
  });
}

final userlist = [
  Modal(
    userId: '@Rashid',
    des: 'Sponsered by https://myttube.com/',
    image:
        'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Akash',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/free-photo/view-3d-glasses-movies-tickets_23-2149558745.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Pravin',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/premium-vector/realistic-movie-clapper-slapstick_260559-141.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
  Modal(
    userId: '@Farhan',
    des: 'thahhja ahjshjas jasjhhjs',
    image:
        'https://img.freepik.com/free-photo/portrait-middle-age-man-videographer-studio_613910-11063.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473',
    likecount: 3,
    commentcount: 5,
    sharecount: 10,
    giftcount: 15,
    viewcount: 500,
  ),
];
