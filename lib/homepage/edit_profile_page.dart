import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/change_interest.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../GETX/gettimer.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GetImage getkar = Get.put(GetImage());

  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;
  bool username = false;
  bool fullname = false;
  bool full1 = false;
  bool bio = false;
  bool bio1 = false;
  bool cancel = false;
  bool cancel1 = false;

  bool private = false;
  bool public = false;
  bool rewards = false;
  bool value1 = false;
  bool value2 = false;

  bool male = true;
  bool female = true;
  bool other = true;
  bool age1 = true;
  bool age2 = true;
  bool age3 = true;
  bool age4 = true;
  bool age5 = true;

  /* bool value = false;
  bool value1 = false;
  bool value2 = false; */
  bool select = true;
  bool birth = true;

  bool btnchng = true;
  bool valueofswitch = true;

  bool emailid = false;
  bool emailid1 = false;
  var groupemail;

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5.h,
        titleSpacing: 0,
        automaticallyImplyLeading: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: primaryColorOfApp, // <-- SEE HERE
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color: customTextColor, fontFamily: 'Poppins', fontSize: 15.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GetBuilder<GetImage>(builder: (controller) {
                    return Container(
                      child: getkar.image != null
                          ? CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.grey.shade800,
                                  backgroundImage: FileImage(getkar.image!),
                                ),
                              ),
                            )
                          // Image. file
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xffe2e2e2)),
                                  color: Colors.white,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.account_circle,
                                size: 48.sp,
                                color: Color(0xffe2e2e2),
                              ),
                            ),
                    );
                  }),
                  SizedBox(
                    height: 18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {
                              print('rashid');
                              /*   getkar.pickforprofile(
                                            ImageSource.gallery); */
                              buildbutton(context);
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
                ],
              ),
            ],
          ),
          SizedBox(
            /* color: Colors.red, */
            height: 48,
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  left: 0,
                  height: 40,
                  width: 288,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 0.5, color: const Color(0xff515253)),
                        borderRadius: BorderRadius.circular(5)),
                    /*  width: 150,
                  height: 150, */
                    /*  color: Colors.green[300], */
                    child: SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, bottom: 3),
                          child: TextFormField(
                              enabled: username,
                              decoration: InputDecoration(
                                labelText: username ? '' : '',
                                suffixIcon: const Icon(Icons.check_circle),
                                border: InputBorder.none,
                              )),
                        )),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  width: 70,
                  height: 10,
                  child: Container(
                    /*   width: 200,
                  height: 150, */
                    color: Colors.white,
                    child: const Text(
                      'Your Username',
                      style: TextStyle(
                          color: Color(0xff515253),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                cancel
                    ? TextButton(
                        style: TextButton.styleFrom(
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {
                          setState(() {
                            username = false;
                            cancel = false;
                          });
                        },
                        child: const Text('cancel?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 10)),
                      )
                    : TextButton(
                        style: TextButton.styleFrom(
                            /* minimumSize: Size(100, 5), */
                            elevation: 0,
                            visualDensity: const VisualDensity(vertical: -4),
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {
                          setState(() {
                            username = true;
                            cancel = true;
                          });
                        },
                        child: const Text('Change?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 10)),
                      ),
              ],
            ),
          ),
          SizedBox(
            /* color: Colors.red, */
            height: 48,
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  left: 0,
                  height: 40,
                  width: 288,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 0.5, color: const Color(0xff515253)),
                        borderRadius: BorderRadius.circular(5)),
                    /*  width: 150,
                  height: 150, */
                    /*  color: Colors.green[300], */
                    child: SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, bottom: 3),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 210,
                                child: TextFormField(
                                    enabled: fullname,
                                    decoration: const InputDecoration(
                                      labelText: '',
                                      border: InputBorder.none,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Container(
                                  child: full1
                                      ? IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {
                                            setState(() {
                                              fullname = false;
                                              full1 = false;
                                            });
                                          },
                                          icon: const Iconify(
                                            Bx.edit,
                                            color: Color(0xff737373),
                                          ))
                                      : IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {
                                            setState(() {
                                              fullname = true;
                                              full1 = true;
                                            });
                                          },
                                          icon: const Iconify(
                                            Bx.edit,
                                            color: Color(0xff737373),
                                          )),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  width: 70,
                  height: 10,
                  child: Container(
                    color: Colors.white,
                    child: const Text(
                      'Your Full Name',
                      style: TextStyle(
                          color: Color(0xff515253),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            /* color: Colors.red, */
            height: 48,
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  left: 0,
                  height: 40,
                  width: 288,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 0.5, color: const Color(0xff515253)),
                        borderRadius: BorderRadius.circular(5)),
                    /*  width: 150,
                  height: 150, */
                    /*  color: Colors.green[300], */
                    child: SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, bottom: 3),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 210,
                                child: TextFormField(
                                    enabled: bio,
                                    decoration: const InputDecoration(
                                      labelText: '',
                                      border: InputBorder.none,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Container(
                                  child: bio1
                                      ? IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {
                                            setState(() {
                                              bio = false;
                                              bio1 = false;
                                            });
                                          },
                                          icon: const Iconify(
                                            Bx.edit,
                                            color: Color(0xff737373),
                                          ))
                                      : IconButton(
                                          padding: const EdgeInsets.all(0),
                                          constraints: const BoxConstraints(),
                                          onPressed: () {
                                            setState(() {
                                              bio = true;
                                              bio1 = true;
                                            });
                                          },
                                          icon: const Iconify(
                                            Bx.edit,
                                            color: Color(0xff737373),
                                          )),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  width: 15,
                  height: 10,
                  child: Container(
                    color: Colors.white,
                    child: const Text(
                      'Bio',
                      style: TextStyle(
                          color: Color(0xff515253),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<GetImage>(builder: (controller) {
            return Container(
              child: getkar.image1 != null
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 0.1),
                      ),
                      height: 70,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.file(
                          getkar.image1!,
                          fit: BoxFit.cover,
                        ),
                      ))
                  // Image. file
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 0.5),
                      ),
                      height: 70,
                      width: double.infinity,
                      child: const Icon(
                        Icons.photo,
                        size: 50,
                        color: Color(0xffc4c4c4),
                      )),
            );
          }),
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
                            return Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Container(
                                          color: const Color(0xffE2E2E2),
                                          height: 5,
                                          width: 80,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                constraints:
                                                    const BoxConstraints(),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: const Icon(
                                                  Icons.arrow_back,
                                                  color: primaryColorOfApp,
                                                )),
                                            SizedBox(
                                              width: width * 0.04,
                                            ),
                                            const Text(
                                              'Cover Photo',
                                              style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Divider(),
                                      GetBuilder<GetImage>(
                                          builder: (controller) {
                                        return Container(
                                          child: getkar.image1 != null
                                              ? Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 0.1),
                                                  ),
                                                  height: 70,
                                                  width: double.infinity,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    child: Image.file(
                                                      getkar.image1!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ))
                                              // Image. file
                                              : Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 0.5),
                                                  ),
                                                  height: 70,
                                                  width: double.infinity,
                                                  child: const Icon(
                                                    Icons.photo,
                                                    size: 50,
                                                    color: Color(0xffc4c4c4),
                                                  )),
                                        );
                                      }),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      // <-- SEE HERE
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            20.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                          builder: (context,
                                                              setState) {
                                                        return Stack(
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.04,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: const [
                                                                    Text(
                                                                      'Are You Sure Remove This Photo?',
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff333333),
                                                                          fontSize:
                                                                              15,
                                                                          fontFamily:
                                                                              'Poppins'),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.04,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          const Text(
                                                                        'Cancel',
                                                                        style: TextStyle(
                                                                            color:
                                                                                customTextColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600),
                                                                      ),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        getkar
                                                                            .removeImagebanner();
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        children: const [
                                                                          Icon(
                                                                            Icons.delete,
                                                                            color:
                                                                                Color(0xffED1B24),
                                                                            size:
                                                                                13,
                                                                          ),
                                                                          Text(
                                                                            'Remove',
                                                                            style: TextStyle(
                                                                                color: Color(0xffED1B24),
                                                                                fontSize: 13,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height:
                                                                      height *
                                                                          0.04,
                                                                ),
                                                              ],
                                                            ),
                                                            Positioned.fill(
                                                                top: -36,
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      /*   width: 45,
                                    height: 45, */
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.white,
                                                                            width: 2),
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(4.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ))
                                                          ],
                                                        );
                                                      });
                                                    });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.delete,
                                                      color: Color(0xffED1B24),
                                                      size: 13,
                                                    ),
                                                    Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffED1B24),
                                                          fontSize: 13,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 50.0),
                                            child: Text(
                                              'Change Your Cover Photo',
                                              style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                                  getkar.pickforbanner(
                                                      ImageSource.camera);
                                                  Navigator.of(context).pop();
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
                                                child: const Iconify(
                                                  AntDesign.camera_filled,
                                                  color: Color(0xff0087FF),
                                                  size: 25,
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
                                                constraints:
                                                    const BoxConstraints(
                                                        minHeight: 45,
                                                        minWidth: 45),
                                                onPressed: () {
                                                  getkar.pickforbanner(
                                                      ImageSource.gallery);
                                                  Navigator.of(context).pop();
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
                                                child: const Iconify(
                                                  Heroicons.photo_20_solid,
                                                  color: Color(0xff0087FF),
                                                  size: 25,
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
                                  ),
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
                                                color: Colors.white, width: 2),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(4.0),
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
                            'upload banner',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: width * 0.04,
                                color: const Color(0xff0087FF)),
                          )
                        : Text(
                            'change banner',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: width * 0.04,
                                color: const Color(0xff0087FF)),
                          ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 140,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 0.5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'select city',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        ),
                      ),
                      /*  isExpanded: true, */
                      value: value,
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }),
                ),
              ),
              Container(
                width: 140,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 0.5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'select state',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: Color(0xffC4C4C4)),
                        ),
                      ),
                      /*  isExpanded: true, */
                      value: value,
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            /*             color: Colors.red, */
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      /*     foregroundColor: const Color(0xff0087FF), */
                    ),
                    onPressed: () {
                      ProfileSelf().buildaddresspage(context);
                    },
                    child: const Text(
                      'Add/Change Address',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: primaryColorOfApp,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeInterest()),
                );
                /*   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ); */
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xff0087FF),
                  ),
                  /*  padding: EdgeInsets.symmetric(
                                          horizontal: 40.0, vertical: 20.0), */
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child: const Text(
                "Change Interest",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: customTextColor,
                    /*  fontSize: 18, */
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          SizedBox(
            height: 15,
            /*    color: Colors.yellow, */
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Auto Play (scrolling)",
                  style: TextStyle(
                      color: const Color(0xff515253),
                      fontFamily: 'Poppins',
                      fontSize: width * 0.03),
                ),
                Switch.adaptive(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColorOfApp,
                    value: valueofswitch,
                    onChanged: (valueofswitch) {
                      setState(() {
                        this.valueofswitch = valueofswitch;
                      });
                    })
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: 15,
            /*              color: Colors.green, */
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Location always",
                  style: TextStyle(
                      color: const Color(0xff515253),
                      fontFamily: 'Poppins',
                      fontSize: width * 0.03),
                ),
                Switch.adaptive(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: primaryColorOfApp,
                    value: valueofswitch,
                    onChanged: (valueofswitch) {
                      setState(() {
                        this.valueofswitch = valueofswitch;
                      });
                    })
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('Go to my',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 10)),
            ],
          ),
          SizedBox(
            height: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: const Size(100, 0),
                      elevation: 0,
                      /*       visualDensity: VisualDensity(vertical: -4), */
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: () {
                    /*               Navigator.of(context).pop(); */
                    ProfileSelf().buildpersonalsetting(context);
                  },
                  child: const Text('Personal Information Settings',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: primaryColorOfApp,
                          fontSize: 13)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(140, 35),
                    /*    minimumSize: Size(32, 30), */
                    elevation: 0,
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
                    "Cancel",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 12,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              /*  SizedBox(
                                              width: width * 0.03,
                                            ), */
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(135, 35),
                    /*  minimumSize: Size(32, 30), */
                    elevation: 0,
                    /* padding: EdgeInsets.zero, */
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    /*   side: const BorderSide(
                                                    color: Color(0xff0087FF),
                                                  ), */
                    /*   padding:
                              EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                    backgroundColor: primaryColorOfApp,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Save Changes",
                    style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
        ]),
      ),
    );
  }
}
