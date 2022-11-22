import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';

class Visited extends StatefulWidget {
  const Visited({Key? key}) : super(key: key);

  @override
  State<Visited> createState() => _VisitedState();
}

class _VisitedState extends State<Visited> {
  var images = [
    'https://static.toiimg.com/thumb/resizemode-4,msid-71159887,width-1200,height-900/71159887.jpg',
    'https://yt3.ggpht.com/ytc/AMLnZu_xNZbk3wtqbaetbuoTt1kZ5DkGUp1HE6ITpcdXUBc=s900-c-k-c0x00ffffff-no-rj',
    'https://cardinsider.com/wp-content/uploads/2022/02/HDFC-Spend-based-offer.png',
    'https://www.cardexpert.in/wp-content/uploads/2022/01/hdfc-spend-linked-offer-jan-2022.jpg',
    'https://i.pinimg.com/736x/57/9a/4b/579a4b888090718d347efc33cee594af.jpg',
    'https://static.toiimg.com/thumb/resizemode-4,msid-71159887,width-1200,height-900/71159887.jpg',
    'https://yt3.ggpht.com/ytc/AMLnZu_xNZbk3wtqbaetbuoTt1kZ5DkGUp1HE6ITpcdXUBc=s900-c-k-c0x00ffffff-no-rj',
    'https://cardinsider.com/wp-content/uploads/2022/02/HDFC-Spend-based-offer.png',
    'https://www.cardexpert.in/wp-content/uploads/2022/01/hdfc-spend-linked-offer-jan-2022.jpg',
    'https://i.pinimg.com/736x/57/9a/4b/579a4b888090718d347efc33cee594af.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColorOfApp,
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Visited',
          style: TextStyle(
              color: customTextColor, fontFamily: 'Poppins', fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
                color: Colors.transparent,
              );
            },
            itemCount: images.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          images[index],
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Visited',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              ),
                              Text(
                                '25-September 2022  7:33PM',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 9),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 235,
                            /*              color: Colors.green, */
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '@Brand_Profile-id',
                                  style: TextStyle(
                                      color: primaryColorOfApp,
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: (() {}),
                                  icon: const Iconify(
                                    Ri.share_box_line,
                                    color: primaryColorOfApp,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
