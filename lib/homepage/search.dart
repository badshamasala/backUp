import 'package:carousel_slider/carousel_slider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2, initialIndex: 0);
    /*    tabController!.addListener(() {
      if (tabController!.length == 2) {
        setState(() {
          checkVisible = false;
        });
      } else if (tabController!.length == 1) {
        setState(() {
          checkVisible = true;
        });
      }
    }); */
  }

  List foodList = [
    {
      "hotel": "Vrindavan",
      "food": "South indian pure Veg",
      "image": "assets/idli.jpg"
    },
    {
      "hotel": "Biryani House",
      "food": "Non-Veg’s Speacial",
      "image": "assets/biryani.jpg"
    },
    {
      "hotel": "Burger House",
      "food": "Speacial burger, italian",
      "image": "assets/burger.jpg"
    },
    {
      "hotel": "Samosa House",
      "food": "samosa, snacks, indian",
      "image": "assets/samosa.jpg"
    },
    {
      "hotel": "Swests wala",
      "food": "samosa, snacks, indian",
      "image": "assets/sweets.jpg"
    },
    {
      "hotel": "vrindavan",
      "food": "samosa, snacks, indian",
      "image": "assets/sweets.jpg"
    },
    {
      "hotel": "vrindavan",
      "food": "samosa, snacks, indian",
      "image": "assets/sweets.jpg"
    },
  ];
  List urlImages = [
    'assets/image1.webp',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.webp',
    'assets/image5.jpeg',
    'assets/image6.webp',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];
  List topBrand = [
    'assets/macd.png',
    'assets/belgian.jpg',
    'assets/kfc.png',
    'assets/pizza.png',
    'assets/behrouz.webp',
  ];
  bool checkVisible = true;

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 25,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: primaryColorOfApp,
                )),
          ),
          automaticallyImplyLeading: true,
          title: TextFormField(
            decoration: buildInputdecoration('Search'),
          ),
        ),
        body: Column(
          children: [
            Visibility(
              visible: checkVisible,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider.builder(
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  urlImages[index],
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
                      )),
                  buildIndicator(),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 5.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE2E2E2),
                  shape: BoxShape.rectangle,
                  border:
                      Border.all(width: 0.5, color: const Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                controller: tabController,
                indicatorWeight: 0.1,
                automaticIndicatorColorAdjustment: false,
                /* isScrollable: true, */
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.zero,
                labelColor: primaryColorOfApp,
                unselectedLabelColor: const Color(0xff333333),
                tabs: const [
                   Tab(
                    text: 'trending',
                  ),
                   Tab(
                    text: 'nearby',
                  ),
                ],
              ),
            ),
            /*    */
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    crossAxisCount: 3,
                    itemCount: urlImages.length,
                    itemBuilder: (context, index) => Image.asset(
                      urlImages[index],
                      fit: BoxFit.cover,
                    ),
                    staggeredTileBuilder: (int index) => index % 3 == 0
                        ? const StaggeredTile.count(1, 2)
                        : const StaggeredTile.count(1, 1),
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Most Popular",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 17.h,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          foodList[index]["image"],
                                          height: 10.h,
                                          width: 20.w,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foodList[index]["hotel"],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: "Poppins",
                                                fontSize: 8.sp),
                                          ),
                                          Text(
                                            foodList[index]["food"],
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: "Poppins",
                                                fontSize: 5.sp),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              RatingBar.builder(
                                                unratedColor:
                                                    const Color(0xffe2e2e2),
                                                itemSize: 8.sp,
                                                initialRating: 4,
                                                minRating: 0,
                                                direction: Axis.horizontal,
                                                allowHalfRating: false,
                                                itemCount: 5,
                                                itemPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 0.w),
                                                itemBuilder: (context, _) =>
                                                    const Iconify(
                                                  Ph.star_duotone,
                                                  color: Color(0xffED1B24),
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            separatorBuilder: ((context, index) {
                              return SizedBox(
                                width: 1.w,
                              );
                            }),
                            itemCount: foodList.length),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "TOP Brands",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 10.h,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return CircleAvatar(
                                radius: 28.sp,
                                backgroundColor: primaryColorOfApp,
                                child: CircleAvatar(
                                  radius: 26.sp,
                                  backgroundColor: const Color(0xffe2e2e2),
                                  child: CircleAvatar(
                                    radius: 24.sp,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                        topBrand[index],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                            separatorBuilder: ((context, index) {
                              return SizedBox(
                                width: 1.w,
                              );
                            }),
                            itemCount: topBrand.length),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sponsor",
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: "Poppins",
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 35.h,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return Material(
                                elevation: 0,
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          foodList[index]["image"],
                                          height: 12.h,
                                          width: 60.w,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Restaurant Name",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize: 12.sp),
                                              ),
                                              SizedBox(
                                                width: 15.w,
                                              ),
                                              const Icon(
                                                FluentIcons.share_24_filled,
                                                color: primaryColorOfApp,
                                              )
                                            ],
                                          ),
                                          Text(
                                            "Restaurant address",
                                            style: TextStyle(
                                                color: customTextColor,
                                                fontFamily: "Poppins",
                                                fontSize: 10.sp),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "State City",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize: 10.sp),
                                              ),
                                              SizedBox(
                                                width: 25.w,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  RatingBar.builder(
                                                    unratedColor:
                                                        const Color(0xffe2e2e2),
                                                    itemSize: 8.sp,
                                                    initialRating: 4,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: false,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0.w),
                                                    itemBuilder: (context, _) =>
                                                        const Iconify(
                                                      Ph.star_duotone,
                                                      color: Color(0xffED1B24),
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/discount.svg',
                                                height: 2.5.h,
                                                width: 3.w,
                                                color: primaryColorOfApp,
                                              ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              Text(
                                                "Offer",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "35% Discount",
                                                style: TextStyle(
                                                    color: customTextColor,
                                                    fontFamily: "Poppins",
                                                    fontSize: 10.sp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    minimumSize: Size(0.0, 5.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w),
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    backgroundColor:
                                                        const Color(0xff0087FF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0))),
                                                child: Row(
                                                  children: [
                                                    Iconify(
                                                      MaterialSymbols
                                                          .directions_outline,
                                                      color: Colors.white,
                                                      size: 15.sp,
                                                    ),
                                                    Text(
                                                      "Direction",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    side: const BorderSide(
                                                        color:
                                                            primaryColorOfApp),
                                                    elevation: 0,
                                                    minimumSize: Size(0.0, 5.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w),
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    foregroundColor:
                                                        primaryColorOfApp,
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0))),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      FluentIcons
                                                          .call_12_filled,
                                                      size: 12.sp,
                                                    ),
                                                    Text(
                                                      "Call",
                                                      style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    side: const BorderSide(
                                                        color:
                                                            primaryColorOfApp),
                                                    elevation: 0,
                                                    minimumSize: Size(0.0, 5.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w),
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    foregroundColor:
                                                        primaryColorOfApp,
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0))),
                                                child: Text(
                                                  "Order Now",
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            separatorBuilder: ((context, index) {
                              return SizedBox(
                                width: 1.w,
                              );
                            }),
                            itemCount: foodList.length),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ));
  }

  Widget buildIndicator() => Padding(
        padding: const EdgeInsets.all(5.0),
        child: AnimatedSmoothIndicator(
            effect: const JumpingDotEffect(
                spacing: 1,
                activeDotColor: primaryColorOfApp,
                dotColor: Colors.white,
                dotHeight: 4,
                dotWidth: 4),
            activeIndex: activeIndex,
            count: 10),
      );
  buildInputdecoration(String labeltext) {
    return InputDecoration(
      isDense: true,
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: const Icon(Icons.search),
      ),
      prefixIconConstraints: const BoxConstraints(),
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Color(0xffE2E2E2), fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    );
  }
}
