import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          title: SizedBox(
            height: 40,
            child: TextFormField(
              decoration: buildInputdecoration('Search'),
            ),
          ),
        ),
        body: Column(
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
            Expanded(
                child: StaggeredGridView.countBuilder(
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
            ))
          ],
        ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const JumpingDotEffect(
          spacing: 1,
          activeDotColor: Color(0xff0087FF),
          dotColor: Color(0xff333333),
          dotHeight: 3,
          dotWidth: 3),
      activeIndex: activeIndex,
      count: 10);
  buildInputdecoration(String labeltext) {
    return InputDecoration(
      prefixIcon: const Icon(Icons.search),
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Color(0xffE2E2E2), fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: const UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      contentPadding: const EdgeInsets.all(15),
    );
  }
}
