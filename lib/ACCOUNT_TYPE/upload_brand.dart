
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class UploadBrand extends StatefulWidget {
  const UploadBrand({super.key});

  @override
  State<UploadBrand> createState() => _UploadBrandState();
}

class _UploadBrandState extends State<UploadBrand> {
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
    double width = size.width;
    double height = size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                          backgroundColor: Colors.red,
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/image.png',
                          ),
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
                                        children: const [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 80.0),
                                            child: Text(
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
                                                constraints: const BoxConstraints(
                                                    minHeight: 45,
                                                    minWidth: 45),
                                                onPressed: () {
                                                  pickImage(ImageSource.camera);
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    btnchng = false;
                                                  });
                                                },
                                                elevation: 0,
                                                fillColor: const Color(0xffDADADA),
                                                child: const FaIcon(
                                                  FontAwesomeIcons.camera,
                                                  color: Color(0xff0087FF),
                                                  size: 17,
                                                ),
                                                /*  padding: EdgeInsets.all(15.0), */
                                                shape: const CircleBorder(
                                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                                    ),
                                              ),
                                              const Text(
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
                                                constraints: const BoxConstraints(
                                                    minHeight: 45,
                                                    minWidth: 45),
                                                onPressed: () {
                                                  pickImage(
                                                      ImageSource.gallery);
                                                  Navigator.of(context).pop();
                                                  setState(() {
                                                    btnchng = false;
                                                  });
                                                },
                                                elevation: 0,
                                                fillColor: const Color(0xffDADADA),
                                                child:  Icon(
                                                  Icons.photo,
                                                  color: Color(0xff0087FF),
                                                  size: 17,
                                                ),
                                                /*  padding: EdgeInsets.all(15.0), */
                                                shape: const CircleBorder(
                                                    /* side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xff0087FF)) */
                                                    ),
                                              ),
                                              const Text(
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
                  decoration:
                      buildInputdecoration('Enter Your website any other link'),
                ),
                sizedbox(),
                
                sizedbox(),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          hint: const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'select your business button',
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
                  // height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UploadImage()),
                        );
                      } else {
                        print('aa');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(0.0, 40),
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 40.0, vertical: 20.0),
                        backgroundColor: const Color(0xff0087FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: Text(
                      "Confirm & Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.045,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  sizedbox() {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SizedBox(
      height: height * 0.02,
    );
  }

  sizedbox1() {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SizedBox(
      height: height * 0.04,
    );
  }

  InputDecoration buildInputdecoration(
    String labeltext,
  ) {
    return InputDecoration(
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Color(0xffC4C4C4), fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
      /* suffixIcon: suffix, */
      // hintText: 'Enter Your Username',
      contentPadding: const EdgeInsets.all(15),
      /*  border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff0087FF),
                                ),
                                borderRadius: BorderRadius.circular(16)
                                ) */
    );
  }
}
