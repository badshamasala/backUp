import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/addphoto2.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../getx/gettimer.dart';

class Addphoto1 extends StatefulWidget {
  const Addphoto1({Key? key}) : super(key: key);

  @override
  State<Addphoto1> createState() => _Addphoto1State();
}

class _Addphoto1State extends State<Addphoto1> {
  int activeIndex = 0;
  final GetImage getkar = Get.put(GetImage());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Filterprovider>(context, listen: false).methodforSelection();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Filterprovider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => Addphoto2());
              },
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(17.w, 4.h),
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: const BorderSide(
                    color: Color(0xff0087FF),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: primaryColorOfApp,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child: Text(
                "NEXT",
                style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        child: Column(
          children: [
            GetBuilder<GetImage>(builder: (controller) {
              return getkar.imagePostList.length == 1
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(getkar.imagePostList[0].path),
                        width: double.infinity,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ))
                  : CarouselSlider.builder(
                      itemCount: getkar.imagePostList.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  File(getkar.imagePostList[index].path),
                                  width: 300,
                                  fit: BoxFit.cover,
                                )));
                      },
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 150,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                      ));
            }),
            getkar.imagePostList.length != 1 ? SizedBox() : buildIndicator(),
            SizedBox(
              height: 10.h,
            ),
            Consumer<Filterprovider>(builder: (context, value, child) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 33,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 2,
                      crossAxisCount: 3),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: primaryColorOfApp),
                          backgroundColor: provider.emptyList
                                  .contains(provider.buttonlist[index])
                              ? primaryColorOfApp
                              : Colors.white,
                          foregroundColor: provider.emptyList
                                  .contains(provider.buttonlist[index])
                              ? Colors.white
                              : primaryColorOfApp,
                          elevation: 0),
                      onPressed: () {
                        provider.updateOptionMethod(index);
                      },
                      child: Row(
                        children: [
                          Iconify(
                            provider.buttonlist[index]["icon"],
                            size: 20.sp,
                            color: provider.emptyList
                                    .contains(provider.buttonlist[index])
                                ? Colors.white
                                : primaryColorOfApp,
                          ),
                          Text(
                            provider.buttonlist[index]["label"],
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 11.sp),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: provider.buttonlist.length);
            }),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Color(0xff0087FF),
                    ),
                    foregroundColor: primaryColorOfApp,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Text(
                  "Add Music",
                  style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => Padding(
        padding: const EdgeInsets.all(5.0),
        child: AnimatedSmoothIndicator(
            effect: const JumpingDotEffect(
                spacing: 1,
                activeDotColor: primaryColorOfApp,
                dotColor: customTextColor,
                dotHeight: 4,
                dotWidth: 4),
            activeIndex: activeIndex,
            count: getkar.imagePostList.length),
      );
}

class Filterprovider extends ChangeNotifier {
  List buttonlist = [
    {
      "label": "Filter",
      "value": 2,
      "icon": MaterialSymbols.photo_filter_rounded
    },
    {"label": "Effects", "value": 3, "icon": Ic.round_star_border},
    {"label": "Edit", "value": 4, "icon": Bx.edit},
  ];
  List emptyList = [];

  updateOptionMethod(index) {
    if (emptyList.isEmpty) {
      emptyList.add(buttonlist[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(buttonlist[index]);
    }

    notifyListeners();
  }

  methodforSelection() {
    if (emptyList.isEmpty) {
      emptyList.add(buttonlist[0]);
    }
  }
}
