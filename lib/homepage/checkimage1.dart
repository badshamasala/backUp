/* import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Checkimage1 extends StatefulWidget {
  const Checkimage1({Key? key}) : super(key: key);

  @override
  State<Checkimage1> createState() => _Checkimage1State();
}

class _Checkimage1State extends State<Checkimage1> {
/*   File? image; */

  final GetImage getkar = Get.put(GetImage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              GetBuilder<GetImage>(builder: ((controller) {
                return Container(
                  child: getkar.image /*  image  */ != null
                      ? CircleAvatar(
                          radius: 50,
                          backgroundColor: primaryColorOfApp,
                          child: CircleAvatar(
                              radius: 47,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 45,
                                /* backgroundColor: Colors.grey.shade800, */
                                backgroundImage:
                                    FileImage(/* image! */ getkar.image!),
                              )),
                        )
                      : CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffc4c4c4),
                          child: CircleAvatar(
                            radius: 47,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.account_circle,
                              size: 95,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                );
              })),
              IconButton(
                  onPressed: () {
                    print('object');
                    getkar.pickforprofile123(ImageSource.gallery);
                    /*        pickforprofile123(ImageSource.gallery); */
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.penToSquare,
                    size: 15,
                    color: Colors.red,
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((context) {
                      return Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              GetBuilder<GetImage>(builder: ((controller) {
                              return
                                Container(
                                  child: getkar.image /* image */ != null
                                      ? CircleAvatar(
                                          radius: 50,
                                          backgroundColor: primaryColorOfApp,
                                          child: CircleAvatar(
                                              radius: 47,
                                              backgroundColor: Colors.white,
                                              child: CircleAvatar(
                                                radius: 45,
                                                /* backgroundColor: Colors.grey.shade800, */
                                                backgroundImage:
                                                    FileImage(getkar.image!),
                                              )),
                                        )
                                      : CircleAvatar(
                                          radius: 50,
                                          backgroundColor: Color(0xffc4c4c4),
                                          child: CircleAvatar(
                                            radius: 47,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.account_circle,
                                              size: 95,
                                              color: Color(0xffc4c4c4),
                                            ),
                                          ),
                                        ),
                                );
                              })),
                              IconButton(
                                  onPressed: () {
                                    print('object');

                                    getkar
                                        .pickforprofile123(ImageSource.gallery);
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.penToSquare,
                                    size: 15,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                        ],
                      );
                    }));
              },
              child: Text('Button'))
        ],
      ),
    );
  }

  /* pickforprofile123(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  } */
}

class GetImage extends GetxController {
  File? image;

  pickforprofile123(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);

      this.image = imageTemporary;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
    update();
  }
}
 */