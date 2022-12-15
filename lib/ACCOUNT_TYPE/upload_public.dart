import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/ONBOARDING/loginpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class UploadPublic extends StatefulWidget {
  const UploadPublic({super.key});

  @override
  State<UploadPublic> createState() => _UploadPublicState();
}

class _UploadPublicState extends State<UploadPublic> {
  bool valueofswitch = true;

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;

  final _formKey = GlobalKey<FormState>();
  bool obscure = true;

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
    Size size = MediaQuery.of(context).size;
    double height = size.height,  width = size.width;
  
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Form(
              key: _formKey,
              child: Column(
                /* mainAxisAlignment: MainAxisAlignment.spaceEvenly, */
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                      child: image != null
                          ? ClipOval(
                              child: Image.file(
                                image!,
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            )
                          // Image. file
                          : const CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 80,
                                  color: Color(0xffe2e2e2),
                                ),
                              ),
                            )),
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
                                    return Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
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
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(
                                                          left: 80.0),
                                                  child: Text(
                                                    'Your Profile Photo',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff333333),
                                                        fontSize: 15,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            const Divider(),
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
                                                      constraints:
                                                          const BoxConstraints(
                                                              minHeight: 45,
                                                              minWidth: 45),
                                                      onPressed: () {
                                                        pickImage(
                                                            ImageSource.camera);
                                                        Navigator.of(context)
                                                            .pop();
                                                        setState(() {
                                                          btnchng = false;
                                                        });
                                                      },
                                                      elevation: 0,
                                                      fillColor:
                                                          const Color(0xffDADADA),
                                                      /*  padding: EdgeInsets.all(15.0), */
                                                      shape: const CircleBorder(
                                                          /* side: BorderSide(
                                                            width: 1,
                                                            color: Color(0xff0087FF)) */
                                                          ),
                                                      child: const FaIcon(
                                                        FontAwesomeIcons.camera,
                                                        color:
                                                            Color(0xff0087FF),
                                                        size: 17,
                                                      ),
                                                    ),
                                                    const Text(
                                                      'camera',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          color: Color(
                                                              0xff333333)),
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    RawMaterialButton(
                                                      padding: EdgeInsets.zero,
                                                      constraints:
                                                          const BoxConstraints(
                                                              minHeight: 45,
                                                              minWidth: 45),
                                                      onPressed: () {
                                                        pickImage(ImageSource
                                                            .gallery);
                                                        Navigator.of(context)
                                                            .pop();
                                                        setState(() {
                                                          btnchng = false;
                                                        });
                                                      },
                                                      elevation: 0,
                                                      fillColor:
                                                          const Color(0xffDADADA),
                                                      /*  padding: EdgeInsets.all(15.0), */
                                                      shape: const CircleBorder(
                                                          /* side: BorderSide(
                                                            width: 1,
                                                            color: Color(0xff0087FF)) */
                                                          ),
                                                      child: const Icon(
                                                        Icons.photo,
                                                        color:
                                                            Color(0xff0087FF),
                                                        size: 17,
                                                      ),
                                                    ),
                                                    const Text(
                                                      'gallery',
                                                      style: TextStyle(
                                                          fontFamily: 'Poppins',
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
                                        ),
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
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 2),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(
                                                            4.0),
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
                  sizedbox1(),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    /* onSaved: ( value){
                            name = value!;
                          }, */
                    decoration: buildInputdecoration('Enter Your page Name'),
                  ),
                  sizedbox(),
                  TextFormField(
                    /*  validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Username'; /* showTopSnackBar(
                              context,
                              CustomSnackBar.info(
                                message: "Please Enter username",
                              ),
                            ); */
                          }
                          return null;
                        }, */
                    decoration: buildInputdecoration('Enter your bio'),
                  ),
                  sizedbox(),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Email";
                        } else if (!RegExp(
                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please Enter a valid Email';
                        }
                        return null;
                      },
                      decoration: buildInputdecoration('Enter Your Email')),
                  sizedbox(),
                  TextFormField(
                    decoration: buildInputdecoration(
                        'Enter Your website any other link'),
                  ),
                  sizedbox(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:  UploadImage().radius(),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            hint: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Choose one of category',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: Color(0xffC4C4C4)),
                              ),
                            ),
                            isExpanded: true,
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
                  ),
                  sizedbox1(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          "Show your email contact info everyone",
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
                  sizedbox(),
                  SizedBox(
                    width: double.infinity,
                     height: 6.h,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          /*        minimumSize: const Size(0.0, 40), */
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40.0, vertical: 20.0),
                          backgroundColor: const Color(0xff0087FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: const UploadImage().radius())),
                      child: const Text(
                        "Confirm & Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  sizedbox() {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * 0.02,
    );
  }

  sizedbox1() {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: height * 0.04,
    );
  }

  buildInputdecoration(String labeltext) {
    return InputDecoration(
        labelText: labeltext,
        errorStyle: const TextStyle(fontSize: 8, height: 0.2),
        labelStyle: const TextStyle(
            color: Color(0xffC4C4C4), fontFamily: 'Poppins', fontSize: 12),
        focusedBorder: OutlineInputBorder(
            borderRadius: const UploadImage().radius(),
            borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
        contentPadding: const EdgeInsets.all(15),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff0087FF),
            ),
            borderRadius: const UploadImage().radius()));
  }
}
