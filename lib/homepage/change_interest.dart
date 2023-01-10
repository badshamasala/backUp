// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class ChangeInterest extends StatefulWidget {
  final bool value;
  const ChangeInterest({Key? key, required this.value}) : super(key: key);

  @override
  State<ChangeInterest> createState() => _ChangeInterestState();
}

class _ChangeInterestState extends State<ChangeInterest> {
  List changeinterest = [
    'Enternainment',
    'Technologies',
    'Education',
    'Finance',
    'Music',
    'Hollywood',
    'Foods',
    'Events',
    'Gov. & Law',
    'Health',
    'Fashion',
    'Business',
    'Beauty',
    'Lifestyle',
    'Bollywood',
    'Sports',
    'Science',
    'News',
    'Tourism',
    'International',
  ];

  List templist = [];
  @override
  Widget build(BuildContext context) {
    Size size;
    double height;
    size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      appBar: widget.value ? AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Change Interest',
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
      ) : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Choose Your Interest (minimum 5 Options)',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 35,
                      /*     childAspectRatio: 3.5, */
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemCount: changeinterest.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onDoubleTap: () {},
                      onTap: () {
                        setState(() {
                          if (templist.contains(changeinterest[index])) {
                            templist.remove(changeinterest[index]);
                          } else {
                            templist.add(changeinterest[index]);
                          }
                        });
                        print(templist);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: templist.contains(changeinterest[index])
                                  ? primaryColorOfApp
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  width: 0.5, color: primaryColorOfApp),
                              shape: BoxShape.rectangle),
                          /*  width: 50, */
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  changeinterest[index],
                                  style: TextStyle(
                                      color: templist
                                              .contains(changeinterest[index])
                                          ? Colors.white
                                          : primaryColorOfApp,
                                      fontFamily: 'Poppins'),
                                ),
                                Icon(
                                  templist.contains(changeinterest[index])
                                      ? Icons.check
                                      : Icons.add,
                                  color:
                                      templist.contains(changeinterest[index])
                                          ? Colors.white
                                          : primaryColorOfApp,
                                )
                              ],
                            ),
                          )),
                    );
                  }),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                width: double.infinity,
                height: 6.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      /* minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: const UploadImage().radius())),
                  child: const Text(
                    "Save Changes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
