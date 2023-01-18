import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/hashTag.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:textfield_tags/textfield_tags.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? _distanceToField;
  TextfieldTagsController? _controller;

  int index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

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
    final provider = Provider.of<HashtagProvier>(context, listen: false);
    return MaterialApp(
      title: "wellcome",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 74, 137, 92),
          centerTitle: true,
          title: const Text('Enter a tag...'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 6.2.h,
                child: Stack(children: [
                  Positioned(
                    top: 1.h,
                    width: 90.w,
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: customTextColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.w, right: 1.w),
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
                                  child: Consumer<HashtagProvier>(
                                      builder: (context, value, child) {
                                    return TextField(
                                        onSubmitted: (value) {
                                          print("666-------------------");
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
                                                const EdgeInsets.symmetric(
                                                    vertical: 8, horizontal: 5),
                                            isDense: true,
                                            hintText: _controller!.hasTags
                                                ? ''
                                                : "Enter tag...",
                                            errorText: error,
                                            suffixIcon: GestureDetector(
                                              onTap: () {
                                                Get.to(() => HashTag());
                                              },
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 2.w),
                                                child: Iconify(
                                                  Uil.search,
                                                  size: 20.sp,
                                                  color:
                                                      const Color(0xffDADADA),
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
                                                        MainAxisSize.min,
                                                    children: [
                                                      SingleChildScrollView(
                                                        controller: sc,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Row(
                                                            children: tags.map(
                                                                (String tag) {
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
                                                            margin:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        5.0),
                                                            padding:
                                                                const EdgeInsets
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
                                                                  child: Text(
                                                                    '#$tag',
                                                                    style: const TextStyle(
                                                                        color:
                                                                            customTextColor),
                                                                  ),
                                                                  onTap: () {
                                                                    print(tag);
                                                                  },
                                                                ),
                                                                const SizedBox(
                                                                    width: 4.0),
                                                                InkWell(
                                                                  child:
                                                                      Iconify(
                                                                    Iconoir
                                                                        .cancel,
                                                                    size: 15.sp,
                                                                  ),
                                                                  onTap: () {
                                                                    onTagDelete(
                                                                        tag);
                                                                  },
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                        }).toList()),
                                                      ),
                                                      provider.apiTag.isEmpty
                                                          ? SizedBox()
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
                                                                              provider.removeTag(index);
                                                                            },
                                                                            child:
                                                                                Container(
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
                                                                                    "#${provider.apiTag[index]}",
                                                                                    style: const TextStyle(color: customTextColor),
                                                                                  ),
                                                                                  const SizedBox(width: 4.0),
                                                                                  InkWell(
                                                                                    child: Iconify(
                                                                                      Iconoir.cancel,
                                                                                      size: 15.sp,
                                                                                    ),
                                                                                    onTap: () {
                                                                                      provider.removeTag(index);
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
                                                                      itemCount: provider
                                                                          .apiTag
                                                                          .length),
                                                            )
                                                    ],
                                                  )
                                                : SizedBox(
                                                    height: 4.h,
                                                    child: ListView.separated(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        shrinkWrap: true,
                                                        itemBuilder:
                                                            ((context, index) {
                                                          return GestureDetector(
                                                              onTap: () {
                                                                provider
                                                                    .removeTag(
                                                                        index);
                                                              },
                                                              child: Container(
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .all(
                                                                    Radius
                                                                        .circular(
                                                                            5.0),
                                                                  ),
                                                                  color: Color(
                                                                      0xffE2E2E2),
                                                                ),
                                                                margin: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        1.0),
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        2.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      "#${provider.apiTag[index]}",
                                                                      style: const TextStyle(
                                                                          color:
                                                                              customTextColor),
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            4.0),
                                                                    InkWell(
                                                                      child:
                                                                          Iconify(
                                                                        Iconoir
                                                                            .cancel,
                                                                        size: 15
                                                                            .sp,
                                                                      ),
                                                                      onTap:
                                                                          () {
                                                                        provider
                                                                            .removeTag(index);
                                                                      },
                                                                    )
                                                                  ],
                                                                ),
                                                              ));
                                                        }),
                                                        separatorBuilder:
                                                            ((context, index) {
                                                          return SizedBox(
                                                            width: 1.w,
                                                          );
                                                        }),
                                                        itemCount: provider
                                                            .apiTag.length),
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
                    left: MediaQuery.of(context).size.height > 667 ? 7.w : 6.w,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Create my own custom controller
class MyCustomController extends TextfieldTagsController {
  MyCustomController() : super();

  //create your own methods
  void myCustomMethod() {}

  //override the super class method
  @override
  set addTag(String tag) {
    if (tag != 'php') {
      super.addTag = tag;
      notifyListeners();
    } else {
      /*  _error= '?'; */
    }
  }

  //....
}

final _myCustomController = MyCustomController();
