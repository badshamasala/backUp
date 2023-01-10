import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Podcast extends StatelessWidget {
  const Podcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Podcast',
            style: TextStyle(
                fontFamily: 'Poppins', color: Colors.black, fontSize: 15.sp)),
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
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Coming Soon...",
                style: TextStyle(
                    color: const Color(0xff012B32),
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 4.h,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Color(0xff024D4F)),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index == 14) {
                        return Container(
                          height: 5.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                        );
                      }
                      return Container(
                        height: 5.h,
                        width: 3.w,
                        decoration: BoxDecoration(
                            color: Color(0xffC6C301),
                            borderRadius: BorderRadius.circular(3),
                            border:
                                Border.all(width: 1, color: Color(0xffC6C301))),
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return SizedBox(
                        width: 1.w,
                      );
                    }),
                    itemCount: 15),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Image.asset('assets/pod.jpg')
        ],
      ),
    );
  }
}
