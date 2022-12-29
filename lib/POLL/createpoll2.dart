import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/gala.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:sizer/sizer.dart';

class Createpoll2 extends StatefulWidget {
  const Createpoll2({Key? key}) : super(key: key);

  @override
  State<Createpoll2> createState() => _Createpoll2State();
}

class _Createpoll2State extends State<Createpoll2> {
  bool valueofswitch = false;
  String? value;
  List items = [
    'item1',
    'item2',
    'item3',
  ];
  dynamic groupseenonline;

  var everyone = 'Everyone';
  var followers = 'Followers';
  var following = 'Following';
  var off = 'Off';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(
            width: 70.w,
            /* color: Colors.red, */
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(40.w, 5.h),
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Text(
                    "WITH GROUP POST",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontSize: 10.sp,
                        fontFamily: 'Poppins'),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(20.w, 5.h),
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Text(
                    "POST",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontSize: 10.sp,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
          )
        ],
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Iconify(
              Mdi.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Row(
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
                          backgroundImage: AssetImage('assets/image1.webp'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '@Profile.Username',
                      style: TextStyle(
                          color: primaryColorOfApp,
                          fontFamily: 'Poppins',
                          fontSize: 12.sp),
                    )
                  ],
                ),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: primaryColorOfApp, width: 0.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        iconEnabledColor: primaryColorOfApp,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Row(
                            children: [
                              Iconify(
                                Teenyicons.globe_americas_outline,
                                size: 15.sp,
                                color: primaryColorOfApp,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Public',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: primaryColorOfApp),
                              ),
                            ],
                          ),
                        ),
                        /*  isExpanded: true, */
                        value: value,
                        items: items
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            value = value;
                          });
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 80.w,
                    decoration: BoxDecoration(
         
                      border: Border.all(width: 5.sp,color: Color(0xff26A6C3))
                    ),
                  );
                }),
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
                itemCount: 3),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 18.h,
                      width: 44.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              width: 10.sp, color: primaryColorOfApp)),
                    ),
                    Positioned(
                      top: -19,
                      child: Container(
                        /*    height: 6.h, */
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primaryColorOfApp),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 18.h,
                      width: 44.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              width: 10.sp, color: Color(0xff0B1C3D))),
                    ),
                    Positioned(
                      top: -19,
                      child: Container(
                        /*    height: 6.h, */
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff0B1C3D)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ), */
            SizedBox(
              height: 1.h,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return TextFormField(
                    cursorColor: primaryColorOfApp,
                    maxLines: index == 0 ? 3 : 1,
                    decoration: InputDecoration(
                        labelText: index == 0
                            ? null
                            : index == 1
                                ? "@mention"
                                : index == 2
                                    ? "Add Explore*"
                                    : "Add Location",
                        prefixIconConstraints: BoxConstraints(),
                        suffixIconConstraints: BoxConstraints(),
                        suffixIcon: index == 0
                            ? null
                            : index == 1
                                ? null
                                : Padding(
                                    padding: EdgeInsets.only(right: 2.w),
                                    child: Iconify(
                                      Uil.search,
                                      size: 20.sp,
                                      color: Color(0xffDADADA),
                                    ),
                                  ),
                        prefixIcon: index == 0
                            ? SizedBox(
                                width: 3.w,
                              )
                            : index == 1
                                ? Padding(
                                    padding: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      "@",
                                      style: TextStyle(
                                          color: primaryColorOfApp,
                                          fontFamily: 'Poppins',
                                          fontSize: 19.sp),
                                    ),
                                  )
                                : index == 2
                                    ? Padding(
                                        padding: EdgeInsets.only(left: 2.w),
                                        child: Text(
                                          "#",
                                          style: TextStyle(
                                              color: primaryColorOfApp,
                                              fontFamily: 'Poppins',
                                              fontSize: 20.sp),
                                        ),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.only(left: 2.w),
                                        child: Iconify(
                                          MaterialSymbols.location_on,
                                          color: primaryColorOfApp,
                                          size: 20.sp,
                                        ),
                                      ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 3.w, vertical: 8),
                        isDense: true,
                        hintStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: customTextColor, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColorOfApp, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        /*   labelText: '', */
                        labelStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp)),
                  );
                }),
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
                itemCount: 4),
            Divider(
              color: Colors.transparent,
            ),
            Row(
              children: [
                SizedBox(
                  width: 75.w,
                  child: TextFormField(
                    cursorColor: primaryColorOfApp,
                    decoration: InputDecoration(
                        labelText: "Partnership",
                        prefixIconConstraints: BoxConstraints(),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Iconify(
                            Carbon.friendship,
                            color: primaryColorOfApp,
                            size: 20.sp,
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                        isDense: true,
                        hintStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: customTextColor, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: primaryColorOfApp, width: 0.5.sp),
                            borderRadius: BorderRadius.circular(5)),
                        /*   labelText: '', */
                        labelStyle: TextStyle(
                            color: customTextColor,
                            fontFamily: 'Poppins',
                            fontSize: 10.sp)),
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: primaryColorOfApp, width: 0.5),
                      shape: BoxShape.rectangle),
                  child: Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Iconify(
                          Carbon.send_alt_filled,
                          color: primaryColorOfApp,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 44.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 0.5, color: customTextColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          "POST FOR LATER",
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Radio(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          groupValue: groupseenonline,
                          value: everyone,
                          onChanged: (val) {
                            setState(() {
                              groupseenonline = everyone;
                            });
                          })
                    ],
                  ),
                ),
                Container(
                  width: 44.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 0.5, color: customTextColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          "POST NOW",
                          style: TextStyle(
                              color: customTextColor,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      /*  SizedBox(
                        width: 4.w,
                      ), */
                      Radio(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          groupValue: groupseenonline,
                          value: followers,
                          onChanged: (val) {
                            setState(() {
                              groupseenonline = followers;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'This Post Ristricted Mode',
                  style: TextStyle(
                      color: customTextColor,
                      fontSize: 12.sp,
                      fontFamily: 'Poppins'),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This post restricted mode, no one can’t comments',
                  style: TextStyle(
                      color: customTextColor,
                      fontSize: 10.sp,
                      fontFamily: 'Poppins'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
