import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Blkcomntfrom {
  final value;

  Blkcomntfrom({required this.value});

  function(context) {
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
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Iconify(
                                Mdi.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            value,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                      const Divider(),
                      TextFormField(
                          cursorColor: primaryColorOfApp,
                          decoration: InputDecoration(
                              prefixIconConstraints: BoxConstraints(),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xffe2e2e2),
                                ),
                              ),
                              isDense: true, // Added this
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              labelText: 'e.g.Followers Name',
                              labelStyle: const TextStyle(
                                  color: Color(0xffe2e2e2),
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: customTextColor, width: 0.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xff0087FF), width: 1)),
                              /*    prefixIcon: Icon(Icons.search), */
                              hintText: 'Searh Username')),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: ((context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 17.sp,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 16.sp,
                                        child: CircleAvatar(
                                          radius: 15.sp,
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '@abdcprofile',
                                          style: TextStyle(
                                              color: primaryColorOfApp,
                                              fontFamily: 'Poppins',
                                              fontSize: 11.sp),
                                        ),
                                        Text(
                                          'profile name',
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 11.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        elevation: 0,
                                        minimumSize: Size(30.w, 5.h),
                                        // padding: EdgeInsets.symmetric(
                                        //     horizontal: 40.0, vertical: 20.0),
                                        backgroundColor: primaryColorOfApp,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0))),
                                    onPressed: () {},
                                    child: Text(
                                      'Block',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 12.sp),
                                    )),
                              ],
                            );
                          }))
                    ]),
                  ),
                  positionCross(context)
                ],
              ),
            );
          });
        });
  }
}
