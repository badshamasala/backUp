import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/friends.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:sizer/sizer.dart';

crateFolder(context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create Folder",
                          style: TextStyle(
                              color: primaryColorOfApp,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 5.h,
                          width: 44.w,
                          child: TextFormField(
                            cursorColor: primaryColorOfApp,
                            decoration:
                                buildInputdecoration('Collection Folder Name'),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size(44.w, 5.h),
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 40.0, vertical: 20.0),
                              backgroundColor: const Color(0xff0087FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: const Text(
                            "Confirm",
                            style: TextStyle(
                                color: Colors.white,
                                /*       fontSize: 18, */
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    GridView.builder(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                /*    mainAxisExtent: 33, */
                                /*     childAspectRatio: 3.5, */
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2,
                                crossAxisCount: 3),
                        itemCount: historylist.length,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(5.sp),
                            child: Image.asset(
                              historylist[index].profileImage,
                              height: 5.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

class HistoryModal {
  final String profileImage;

  late bool checkValue;

  HistoryModal({
    required this.profileImage,
    required this.checkValue,
  });
}

List<HistoryModal> historylist = [
  HistoryModal(
    profileImage: "assets/image1.webp",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image3.jpg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image1.webp",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image3.jpg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image1.webp",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image3.jpg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image3.jpg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
  HistoryModal(
    profileImage: "assets/image5.jpeg",
    checkValue: false,
  ),
];
