import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/hashTag.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:flutter_application_1/poll/createpoll.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/mingcute.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../getx/gettimer.dart';
import '../homepage/widget_notification.dart';

class Addphoto2 extends StatefulWidget {
  const Addphoto2({Key? key}) : super(key: key);

  @override
  State<Addphoto2> createState() => _Addphoto2State();
}

class _Addphoto2State extends State<Addphoto2> {
  final GetImage getkar = Get.put(GetImage());

  var hashController = TextEditingController();

  bool valueofswitch = false;
  String? value;
  List items = [
    'item1',
    'item2',
    'item3',
  ];
  int _groupseenonline = 1;

  bool everyone = false;
  bool followers = true;
  var following = 'Following';
  var off = 'Off';
  TextfieldTagsController? _controller;

  int index = 0;

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreatePollProvider>(context, listen: false);
    final provider1 = Provider.of<HashtagProvider>(context, listen: false);
    final provider2 = Provider.of<Googleprovider>(context, listen: false);
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
                    onPressed: () async {
                      await provider2.newmethod(getkar.imagePostPathList);
                    },
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18.sp,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 17.sp,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 16.sp,
                        backgroundImage: AssetImage("assets/image1.webp"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "@Profile.Username",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: "Poppins",
                        fontSize: 10.sp),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 63.w,
                    child: TextFormField(
                      maxLines: 4,
                      style: TextStyle(
                          color: customTextColor,
                          fontFamily: "Poppins",
                          fontSize: 10.sp),
                      cursorColor: primaryColorOfApp,
                      decoration: InputDecoration(
                          alignLabelWithHint: true,
                          prefixIconConstraints: const BoxConstraints(),
                          hintText: "e.g Something write",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 9),
                          isDense: true,
                          hintStyle: TextStyle(
                              color: const Color(0xffe2e2e2),
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
                    width: 1.w,
                  ),
                  GetBuilder<GetImage>(builder: (controller) {
                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.1),
                        ),
                        height: 11.5.h,
                        width: 26.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.file(
                            File(getkar.imagePostList[0].path),
                            fit: BoxFit.cover,
                          ),
                        ));
                  }),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index == 1) {
                      return SizedBox(
                        height: 6.2.h,
                        child: Stack(children: [
                          Positioned(
                            top: 1.h,
                            width: 90.w,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: customTextColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.w, right: 1.w),
                                      child: Iconify(
                                        Fa6Solid.hashtag,
                                        color: primaryColorOfApp,
                                        size: 18.sp,
                                      )),
                                  TextFieldTags(
                                    textfieldTagsController: _controller,
                                    initialTags: const [],
                                    textSeparators: const [' ', ','],
                                    letterCase: LetterCase.normal,
                                    validator: (String tag) {
                                      /* if (tag == 'php') {
                                return 'No, please just no';
                              } else if (_controller!.getTags!.contains(tag)) {
                                return 'you already entered that';
                              }
                              return null; */
                                    },
                                    inputfieldBuilder: (context, tec, fn, error,
                                        onChanged, onSubmitted) {
                                      return ((context, sc, tags, onTagDelete) {
                                        return SizedBox(
                                          width: 80.w,
                                          child: Consumer<HashtagProvider>(
                                              builder: (context, value, child) {
                                            return TextField(
                                                cursorColor: primaryColorOfApp,
                                                onSubmitted: (value) {
                                                  print(
                                                      "666-------------------");
                                                },
                                                minLines: 1,
                                                /*  maxLines: 5, */
                                                controller: tec,
                                                onEditingComplete: () {
                                                  print("1-------------------");
                                                },
                                                focusNode: fn,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    labelStyle: TextStyle(
                                                        color: customTextColor,
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10.sp),
                                                    hintStyle: TextStyle(
                                                        color: customTextColor,
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10.sp),
                                                    /* labelText: "Add Explore", */
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 8,
                                                            horizontal: 5),
                                                    isDense: true,
                                                    hintText:
                                                        _controller!.hasTags
                                                            ? ''
                                                            : "Enter tag...",
                                                    errorText: error,
                                                    suffixIcon: GestureDetector(
                                                      onTap: () {
                                                        Get.to(() => HashTag());
                                                      },
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 2.w),
                                                        child: Iconify(
                                                          Uil.search,
                                                          size: 20.sp,
                                                          color: const Color(
                                                              0xffDADADA),
                                                        ),
                                                      ),
                                                    ),
                                                    suffixIconConstraints:
                                                        const BoxConstraints(),
                                                    prefixIconConstraints:
                                                        const BoxConstraints(),
                                                    prefixIcon: tags.isNotEmpty
                                                        ? Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              SingleChildScrollView(
                                                                controller: sc,
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                    children: tags
                                                                        .map((String
                                                                            tag) {
                                                                  return Container(
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .all(
                                                                        Radius.circular(
                                                                            5.0),
                                                                      ),
                                                                      color: Color(
                                                                          0xffE2E2E2),
                                                                    ),
                                                                    margin: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            5.0),
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            10.0,
                                                                        vertical:
                                                                            5.0),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        InkWell(
                                                                          child:
                                                                              Text(
                                                                            '#$tag',
                                                                            style:
                                                                                const TextStyle(color: customTextColor),
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            print(tag);
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                            width:
                                                                                4.0),
                                                                        InkWell(
                                                                          child:
                                                                              Iconify(
                                                                            Iconoir.cancel,
                                                                            size:
                                                                                15.sp,
                                                                          ),
                                                                          onTap:
                                                                              () {
                                                                            onTagDelete(tag);
                                                                          },
                                                                        )
                                                                      ],
                                                                    ),
                                                                  );
                                                                }).toList()),
                                                              ),
                                                              provider1.apiTag
                                                                      .isEmpty
                                                                  ? SizedBox()
                                                                  : SizedBox(
                                                                      height:
                                                                          4.h,
                                                                      child: ListView.separated(
                                                                          scrollDirection: Axis.horizontal,
                                                                          shrinkWrap: true,
                                                                          itemBuilder: ((context, index) {
                                                                            return GestureDetector(
                                                                                onTap: () {
                                                                                  provider1.removeTag(index);
                                                                                },
                                                                                child: Container(
                                                                                  decoration: const BoxDecoration(
                                                                                    borderRadius: BorderRadius.all(
                                                                                      Radius.circular(5.0),
                                                                                    ),
                                                                                    color: Color(0xffE2E2E2),
                                                                                  ),
                                                                                  margin: const EdgeInsets.symmetric(horizontal: 1.0),
                                                                                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        "#${provider1.apiTag[index]}",
                                                                                        style: const TextStyle(color: customTextColor),
                                                                                      ),
                                                                                      const SizedBox(width: 4.0),
                                                                                      InkWell(
                                                                                        child: Iconify(
                                                                                          Iconoir.cancel,
                                                                                          size: 15.sp,
                                                                                        ),
                                                                                        onTap: () {
                                                                                          provider1.removeTag(index);
                                                                                        },
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ));
                                                                          }),
                                                                          separatorBuilder: ((context, index) {
                                                                            return SizedBox(
                                                                              width: 1.w,
                                                                            );
                                                                          }),
                                                                          itemCount: provider1.apiTag.length),
                                                                    )
                                                            ],
                                                          )
                                                        : SizedBox(
                                                            height: 4.h,
                                                            child: ListView
                                                                .separated(
                                                                    scrollDirection:
                                                                        Axis
                                                                            .horizontal,
                                                                    shrinkWrap:
                                                                        true,
                                                                    itemBuilder:
                                                                        ((context,
                                                                            index) {
                                                                      return GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            provider1.removeTag(index);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              borderRadius: BorderRadius.all(
                                                                                Radius.circular(5.0),
                                                                              ),
                                                                              color: Color(0xffE2E2E2),
                                                                            ),
                                                                            margin:
                                                                                const EdgeInsets.symmetric(horizontal: 1.0),
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 2.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  "#${provider1.apiTag[index]}",
                                                                                  style: const TextStyle(color: customTextColor),
                                                                                ),
                                                                                const SizedBox(width: 4.0),
                                                                                InkWell(
                                                                                  child: Iconify(
                                                                                    Iconoir.cancel,
                                                                                    size: 15.sp,
                                                                                  ),
                                                                                  onTap: () {
                                                                                    provider1.removeTag(index);
                                                                                  },
                                                                                )
                                                                              ],
                                                                            ),
                                                                          ));
                                                                    }),
                                                                    separatorBuilder:
                                                                        ((context,
                                                                            index) {
                                                                      return SizedBox(
                                                                        width:
                                                                            1.w,
                                                                      );
                                                                    }),
                                                                    itemCount: provider1
                                                                        .apiTag
                                                                        .length),
                                                          )),
                                                onChanged: onChanged);
                                          }),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.height > 667
                                ? 7.w
                                : 6.w,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Add Explore',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontSize: 8.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ]),
                      );
                    } else {
                      return TextFormField(
                        controller: index == 1 ? hashController : null,
                        cursorColor: primaryColorOfApp,
                        decoration: InputDecoration(
                            labelText: index == 0
                                ? "@mention"
                                : /* index == 1
                                  ? "Add Explore"
                                  :  */
                                index == 2
                                    ? "Add URL"
                                    : "Add Location",
                            prefixIconConstraints: const BoxConstraints(),
                            suffixIconConstraints: const BoxConstraints(),
                            suffixIcon: /* index == 1
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => HashTag());
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 2.w),
                                    child: Iconify(
                                      Uil.search,
                                      size: 20.sp,
                                      color: const Color(0xffDADADA),
                                    ),
                                  ),
                                )
                              : */
                                index == 3
                                    ? Padding(
                                        padding: EdgeInsets.only(right: 2.w),
                                        child: Iconify(
                                          Uil.search,
                                          size: 20.sp,
                                          color: const Color(0xffDADADA),
                                        ),
                                      )
                                    : null,
                            prefixIcon: index == 0
                                ? Padding(
                                    padding:
                                        EdgeInsets.only(left: 2.w, right: 1.w),
                                    child: Iconify(
                                      Zondicons.at_symbol,
                                      color: primaryColorOfApp,
                                      size: 18.sp,
                                    ),
                                  )
                                : /* index == 1
                                  ? Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.w, right: 1.w),
                                      child: Iconify(
                                        Fa6Solid.hashtag,
                                        color: primaryColorOfApp,
                                        size: 18.sp,
                                      ))
                                  :  */
                                index == 2
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.w, right: 1.w),
                                        child: Iconify(
                                          Ph.link_duotone,
                                          color: primaryColorOfApp,
                                          size: 20.sp,
                                        ))
                                    : Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.w, right: 1.w),
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
                    }
                  },
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
                              groupValue: _groupseenonline,
                              value: 0,
                              onChanged: (value) {
                                setState(() {
                                  _groupseenonline = 0;
                                });
                                showModalBottomSheet(
                                    /*     isScrollControlled: true, */
                                    shape: const RoundedRectangleBorder(
                                      // <-- SEE HERE
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0),
                                      ),
                                    ),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(builder:
                                          (BuildContext context, setState) {
                                        return Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w),
                                                child: Column(
                                                    /* mainAxisSize: MainAxisSize.min, */ children: [
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          IconButton(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0),
                                                              constraints:
                                                                  const BoxConstraints(),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon:
                                                                  const Iconify(
                                                                Mdi.arrow_back,
                                                                color:
                                                                    primaryColorOfApp,
                                                              )),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          Text(
                                                            'POST FOR LATER',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize:
                                                                    15.sp),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 3.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'DATE',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    customTextColor,
                                                                fontSize:
                                                                    12.sp),
                                                          )
                                                        ],
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          provider.pickedDate(
                                                              context);
                                                        },
                                                        child: Consumer<
                                                                CreatePollProvider>(
                                                            builder: (context,
                                                                value, child) {
                                                          return Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                border: Border.all(
                                                                    color:
                                                                        customTextColor,
                                                                    width:
                                                                        0.5)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color:
                                                                              primaryColorOfApp,
                                                                          borderRadius: BorderRadius.only(
                                                                              topLeft: Radius.circular(5),
                                                                              bottomLeft: Radius.circular(5))),
                                                                      height:
                                                                          5.h,
                                                                      width:
                                                                          5.w,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              8.w),
                                                                      child:
                                                                          Text(
                                                                        provider.newDate ==
                                                                                null
                                                                            ? "Select Date"
                                                                            : DateFormat("dd/MM/yyyy").format(provider.newDate),
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                primaryColorOfApp,
                                                                            fontSize:
                                                                                15.sp),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              5.w),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/date.svg',
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'TIME',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    customTextColor,
                                                                fontSize:
                                                                    12.sp),
                                                          )
                                                        ],
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          provider.pickedTime(
                                                              context);
                                                        },
                                                        child: Consumer<
                                                                CreatePollProvider>(
                                                            builder: (context,
                                                                value, child) {
                                                          return Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                border: Border.all(
                                                                    color:
                                                                        customTextColor,
                                                                    width:
                                                                        0.5)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color:
                                                                              primaryColorOfApp,
                                                                          borderRadius: BorderRadius.only(
                                                                              topLeft: Radius.circular(5),
                                                                              bottomLeft: Radius.circular(5))),
                                                                      height:
                                                                          5.h,
                                                                      width:
                                                                          5.w,
                                                                    ),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 8
                                                                                .w),
                                                                        child:
                                                                            Text(
                                                                          provider.newTime == null
                                                                              ? 'Select Time'
                                                                              : provider.newTime!,
                                                                          style: TextStyle(
                                                                              fontFamily: 'Poppins',
                                                                              color: primaryColorOfApp,
                                                                              fontSize: 15.sp),
                                                                        )),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 5
                                                                            .w),
                                                                    child:
                                                                        Iconify(
                                                                      MaterialSymbols
                                                                          .nest_clock_farsight_analog_outline_rounded,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          96,
                                                                          175,
                                                                          239),
                                                                      size:
                                                                          30.sp,
                                                                    ))
                                                              ],
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                      SizedBox(
                                                        height: 4.h,
                                                      ),
                                                      Consumer<
                                                              CreatePollProvider>(
                                                          builder: (context,
                                                              value, child) {
                                                        return Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          8.w),
                                                              child: Text(
                                                                'Your Post will be automatically POSTED',
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color:
                                                                        customTextColor,
                                                                    fontSize:
                                                                        8.sp),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 1.w,
                                                            ),
                                                            provider.newDate ==
                                                                    null
                                                                ? Container()
                                                                : Row(
                                                                    children: [
                                                                      Text(
                                                                        DateFormat("dd/MM/yyyy")
                                                                            .format(provider.newDate),
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                customTextColor,
                                                                            fontSize:
                                                                                8.sp),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            1.w,
                                                                      ),
                                                                      Text(
                                                                        provider.newTime ==
                                                                                null
                                                                            ? ''
                                                                            : provider.newTime!.padLeft(0),
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                customTextColor,
                                                                            fontSize:
                                                                                8.sp),
                                                                      ),
                                                                    ],
                                                                  )
                                                          ],
                                                        );
                                                      }),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                      SizedBox(
                                                        height: 6.h,
                                                        width: double.infinity,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              backgroundColor:
                                                                  primaryColorOfApp,
                                                              foregroundColor:
                                                                  Colors.white,
                                                              elevation: 0),
                                                          onPressed: () {},
                                                          child: Text(
                                                            'Confirm & post',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize:
                                                                    15.sp),
                                                          ),
                                                        ),
                                                      )
                                                    ])),
                                            positionCross(context)
                                          ],
                                        );
                                      });
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
                              groupValue: _groupseenonline,
                              value: 1,
                              onChanged: (val) {
                                setState(() {
                                  _groupseenonline = 1;
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
