import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
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
    'https://images.unsplash.com/photo-1667102551343-541e184abe31?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1666023614679-3ccf2e3eb1b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1666947614427-a4999b7dfed9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1665408290970-79b8e8794901?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI1fEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1665292273444-70f1f152b230?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQxfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1664715855449-852840b749b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUwfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1666023614679-3ccf2e3eb1b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfEJKSk10dGVESkE0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1665699928614-004f7d9f1608?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1666369271487-59d73254296e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExfDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1667334159704-2ba3917734fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 25,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Icon(
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
                          child: Image.network(
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
            /* SizedBox(
              height: 350,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 3,
                  crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                  itemCount: 50,
                 
                  itemBuilder: (context, index) {
                    return Container(
                      height: 20,
                      color: Colors.red,
                    );
                  }),
            ) */
          ],
        ));
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const JumpingDotEffect(
          spacing: 1,
          activeDotColor: Color(0xff0087FF),
          dotColor: Color(0xff333333),
          dotHeight: 7,
          dotWidth: 7),
      activeIndex: activeIndex,
      count: 10);
  buildInputdecoration(String labeltext) {
    return InputDecoration(
      prefixIcon: Icon(Icons.search),
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Color(0xffE2E2E2), fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
      focusedBorder: OutlineInputBorder(
          borderRadius: UploadImage().radius(),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
      contentPadding: const EdgeInsets.all(15),
    );
  }
}
