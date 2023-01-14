import 'dart:convert';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ep.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  var messagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 4.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 16.sp,
                  backgroundColor: primaryColorOfApp,
                  child: CircleAvatar(
                    radius: 15.sp,
                    backgroundImage: const AssetImage("assets/image1.webp"),
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "@Profile_username",
                            style: TextStyle(
                                color: primaryColorOfApp,
                                fontFamily: "Poppins",
                                fontSize: 12.sp),
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  alignment: Alignment.centerRight,
                                  visualDensity:
                                      const VisualDensity(vertical: -4),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: () {},
                              child: Text(
                                "Translate",
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: "Poppins",
                                    fontSize: 10.sp),
                              ))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: "Poppins",
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "and type setting industry",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: "Poppins",
                                  fontSize: 10.sp),
                            ),
                            SizedBox(
                              width: 22.w,
                            ),
                            Text(
                              "55mins ago",
                              style: TextStyle(
                                  color: customTextColor,
                                  fontFamily: "Poppins",
                                  fontSize: 8.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        /*  toolbarHeight: 15.h, */
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text('Comments',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: customTextColor,
                fontSize: 15.sp)),
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
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: TextFormField(
          controller: messagecontroller,
          cursorColor: primaryColorOfApp,
          autofocus: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffD9D9D9),
              suffixIconConstraints: const BoxConstraints(),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Iconify(
                        Carbon.send_alt_filled,
                        color: primaryColorOfApp,
                        size: 20.sp,
                      )),
                ),
              ),
              prefixIconConstraints: const BoxConstraints(),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 2.w, right: 1.w),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.sp,
                  child: CircleAvatar(
                    radius: 15.sp,
                    backgroundImage: const AssetImage("assets/image1.webp"),
                  ),
                ),
              ),
              isDense: true,
              hintText: 'message',
              hintStyle: const TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 12),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5)),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5)),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5),
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 1.5.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 11.sp,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 10.4.sp,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 9.8.sp,
                                backgroundImage:
                                    const AssetImage("assets/image1.webp"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(
                            "@Profile_username",
                            style: TextStyle(
                                color: primaryColorOfApp,
                                fontFamily: "Poppins",
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                      Text(
                        "20mins ago",
                        style: TextStyle(
                            color: customTextColor,
                            fontFamily: "Poppins",
                            fontSize: 8.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.1.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle,
                      color: Color(0xffF0F0F0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 1.h),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(
                              color: customTextColor,
                              fontFamily: "Poppins",
                              fontSize: 10.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 0.5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(FluentIcons.thumb_like_24_filled),
                            Iconify(
                              Ph.heart_thin,
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: customTextColor, width: 0.5),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    elevation: 0,
                                    minimumSize: Size(18.w, 3.h),
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: customTextColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      'Reply',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 8.sp),
                                    ),
                                    Iconify(
                                      Ep.edit_pen,
                                      size: 10.sp,
                                    ),
                                  ],
                                )),
                            TextButton(
                                style: TextButton.styleFrom(
                                    alignment: Alignment.centerRight,
                                    visualDensity:
                                        const VisualDensity(vertical: -4),
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                onPressed: () {},
                                child: Text(
                                  "Translate",
                                  style: TextStyle(
                                      color: primaryColorOfApp,
                                      fontFamily: "Poppins",
                                      fontSize: 10.sp),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.transparent,
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
