import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/POLL/createpoll.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/gala.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Createpoll2 extends StatefulWidget {
  final value1;
  final option1;
  final option2;
  final option3;
  final option4;

  const Createpoll2({
    Key? key,
    required this.value1,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
  }) : super(key: key);

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
    final provider = Provider.of<CreatePollProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: SizedBox(
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
                            backgroundImage:
                                const AssetImage('assets/image1.webp'),
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
                    width: 28.w,
                    height: 4.h,
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
                                const Text(
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
                height: 2.h,
              ),
              widget.value1 == 3
                  ? ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.centerLeft,
                          children: [
                            Positioned(
                              left: index == 0 ? 12.5.w : 13.w,
                              child: Container(
                                height: 5.5.h,
                                width: 77.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1.w,
                                        color: index == 0
                                            ? const Color(0xff26A6C3)
                                            : index == 1
                                                ? customTextColor
                                                : const Color(0xffF78602))),
                                child: index == 0
                                    ? Center(
                                        child: Text(
                                        widget.option1,
                                        style: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 10.sp),
                                      ))
                                    : index == 1
                                        ? Center(
                                            child: Text(widget.option2,
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.sp)),
                                          )
                                        : Center(
                                            child: Text(widget.option3,
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.sp)),
                                          ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1.w,
                                      color: index == 0
                                          ? const Color(0xff26A6C3)
                                          : index == 1
                                              ? customTextColor
                                              : const Color(0xffF78602))),
                              child: Padding(
                                  padding: EdgeInsets.all(17.sp),
                                  child: index == 0
                                      ? Text(
                                          "1",
                                          style: TextStyle(
                                              color: const Color(0xff26A6C3),
                                              fontFamily: "Poppins",
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : index == 1
                                          ? Text(
                                              "2",
                                              style: TextStyle(
                                                  color: customTextColor,
                                                  fontFamily: "Poppins",
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              "3",
                                              style: TextStyle(
                                                  color:
                                                      const Color(0xffF78602),
                                                  fontFamily: "Poppins",
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold),
                                            )),
                            ),
                          ],
                        );
                      }),
                      itemCount: 3)
                  : GridView.builder(
                      itemCount: provider.count,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 19.5.h,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 0,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Stack(
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
                                      width: 10.sp,
                                      color: index == 0
                                          ? primaryColorOfApp
                                          : index == 1
                                              ? provider.count == 2
                                                  ? Color(0xff0B1C3D)
                                                  : const Color(0xffF78602)
                                              : index == 2
                                                  ? const Color(0xff037F26)
                                                  : const Color(0xff0B1C3D))),
                              child: index == 0
                                  ? Center(
                                      child: Text(widget.option1,
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 10.sp)),
                                    )
                                  : index == 1
                                      ? Center(
                                          child: Text(widget.option2,
                                              style: TextStyle(
                                                  color: customTextColor,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10.sp)),
                                        )
                                      : index == 2
                                          ? Center(
                                              child: Text(widget.option3,
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10.sp)),
                                            )
                                          : Center(
                                              child: Text(widget.option4,
                                                  style: TextStyle(
                                                      color: customTextColor,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10.sp)),
                                            ),
                            ),
                            Positioned(
                              top: -19,
                              child: Container(
                                /*    height: 6.h, */
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: index == 0
                                        ? primaryColorOfApp
                                        : index == 1
                                            ? provider.count == 2
                                                ? Color(0xff0B1C3D)
                                                : Color(0xffF78602)
                                            : index == 2
                                                ? const Color(0xff037F26)
                                                : const Color(0xff0B1C3D)),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      index == 0 ? 17.sp : 16.sp),
                                  child: index == 0
                                      ? const Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Poppins"),
                                        )
                                      : index == 1
                                          ? const Text(
                                              '2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins"),
                                            )
                                          : index == 2
                                              ? const Text(
                                                  '3',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Poppins"),
                                                )
                                              : const Text(
                                                  '4',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Poppins"),
                                                ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
              ListView.separated(
                  physics: const BouncingScrollPhysics(),
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
                          prefixIconConstraints: const BoxConstraints(),
                          suffixIconConstraints: const BoxConstraints(),
                          suffixIcon: index == 0
                              ? null
                              : index == 1
                                  ? null
                                  : Padding(
                                      padding: EdgeInsets.only(right: 2.w),
                                      child: Iconify(
                                        Uil.search,
                                        size: 20.sp,
                                        color: const Color(0xffDADADA),
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
                                          padding: EdgeInsets.only(left: 1.w),
                                          child: Iconify(
                                            MaterialSymbols.location_on,
                                            color: primaryColorOfApp,
                                            size: 20.sp,
                                          ),
                                        ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 9),
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
                      height: 2.5.h,
                      color: Colors.transparent,
                    );
                  }),
                  itemCount: 4),
              Divider(
                height: 2.5.h,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 76.w,
                    child: TextFormField(
                      cursorColor: primaryColorOfApp,
                      decoration: InputDecoration(
                          labelText: "Partnership",
                          prefixIconConstraints: const BoxConstraints(),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Iconify(
                              Carbon.friendship,
                              color: primaryColorOfApp,
                              size: 20.sp,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 9),
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
                  /*  SizedBox(
                    width: 4.w,
                  ), */
                  Container(
                    height: 5.h,
                    width: 13.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: primaryColorOfApp, width: 1),
                        shape: BoxShape.rectangle),
                    child: Padding(
                      padding: EdgeInsets.all(4.sp),
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: const Iconify(
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
                    height: 5.h,
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
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupseenonline,
                              value: everyone,
                              onChanged: (val) {
                                setState(() {
                                  groupseenonline = everyone;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 5.h,
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
                        Transform.scale(
                          scale: 1.1.sp,
                          child: Radio(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              groupValue: groupseenonline,
                              value: followers,
                              onChanged: (val) {
                                setState(() {
                                  groupseenonline = followers;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'This Post Ristricted Mode',
                    style: TextStyle(
                        color: customTextColor,
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 10.sp
                            : 12.sp,
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 3.h,
                    child: Switch.adaptive(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: primaryColorOfApp,
                        value: valueofswitch,
                        onChanged: (valueofswitch) {
                          setState(() {
                            this.valueofswitch = valueofswitch;
                          });
                        }),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This post restricted mode, no one can’t comments',
                    style: TextStyle(
                        color: customTextColor,
                        fontSize: 8.sp,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
