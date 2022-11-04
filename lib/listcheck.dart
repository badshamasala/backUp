import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listcheck extends StatefulWidget {
  const Listcheck({Key? key}) : super(key: key);

  @override
  State<Listcheck> createState() => _ListcheckState();
}

class _ListcheckState extends State<Listcheck> {
  var images = [
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1664551734578-fe47fea8cab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667481018546-278f7d97c0c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667487147031-476e357b2fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Center(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: primaryColorOfApp),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: Color(0xffc4c4c4),
                            size: 40,
                          )),
                      Positioned(
                        top: 30,
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
                      )
                    ]),
                    Text(
                      'Add Story',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontFamily: 'Poppins',
                          fontSize: 10),
                    )
                  ],
                ),
              );
            } else {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: primaryColorOfApp),
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
                    'Rashid',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 10),
                  )
                ],
              );
            }
          }),
    );
  }
}
