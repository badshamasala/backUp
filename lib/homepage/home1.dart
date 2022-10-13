import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              Text(
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
              ),
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
            itemCount: userlist.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  ListTile(
                    leading:
                        ClipOval(child: Image.network(userlist[index].image)),
                    title: Text(userlist[index].userId),
                    subtitle: Text(userlist[index].des),
                  )
                ],
              );
            })));
  }
}

class Modal {
  final String userId;
  final String des;
  final String image;

  const Modal({
    required this.userId,
    required this.des,
    required this.image,
  });
}

final userlist = [
  Modal(
      userId: 'Rashid',
      des: 'thahhja ahjshjas jasjhhjs',
      image:
          'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473'),
  Modal(
      userId: 'Rashid',
      des: 'thahhja ahjshjas jasjhhjs',
      image:
          'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473'),
  Modal(
      userId: 'Rashid',
      des: 'thahhja ahjshjas jasjhhjs',
      image:
          'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473'),
  Modal(
      userId: 'Rashid',
      des: 'thahhja ahjshjas jasjhhjs',
      image:
          'https://img.freepik.com/premium-photo/portrait-indian-lady-teacher-saree-stands-against-green-white-blackboard_466689-7101.jpg?size=626&ext=jpg&ga=GA1.2.1282463038.1665663473'),
];
