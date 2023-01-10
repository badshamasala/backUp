import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroupMember extends StatefulWidget {
  const GroupMember({Key? key}) : super(key: key);

  @override
  State<GroupMember> createState() => _GroupMemberState();
}

class _GroupMemberState extends State<GroupMember> {
  var photos = [
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12, right: 15),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    elevation: 0,
                    /*     padding: EdgeInsets.zero, */
                    /*       minimumSize: const Size(50.0, 20), */
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    /*    backgroundColor: const Color(0xff0087FF), */
                    shape: RoundedRectangleBorder(
                        borderRadius: const UploadImage().radius())),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/groupforchat.svg',
                      height: 14,
                      width: 14,
                    ),
                    const Text(
                      'Public Group',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          color: customTextColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
          titleSpacing: 0,
          elevation: 0,
          leading: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColorOfApp,
              )),
          backgroundColor: Colors.transparent,
          title: const Text(
            '@Group.Username',
            style: TextStyle(
                color: primaryColorOfApp, fontFamily: 'Poppins', fontSize: 12),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'You and other 125k members',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: photos.length,
                    itemBuilder: ((context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(photos[index]),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '@abdcprofile',
                                    style: TextStyle(
                                        color: primaryColorOfApp,
                                        fontFamily: 'Poppins',
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'profile name',
                                    style: TextStyle(
                                        color: customTextColor,
                                        fontFamily: 'Poppins',
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(photos[index]),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        '@abdcprofile',
                                        style: TextStyle(
                                            color: primaryColorOfApp,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                      Text(
                                        'profile name',
                                        style: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  /*     padding: EdgeInsets.zero, */
                                  minimumSize: const Size(50.0, 25),
                                  /* padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ), */
                                  /*    backgroundColor: const Color(0xff0087FF), */
                                  /*  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          const UploadImage().radius()) */
                                ),
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    })),
              )
            ],
          ),
        ) /* ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: const [

            ],
          );
        },
      ), */
        );
  }
}
