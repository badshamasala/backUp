import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

buildsendGift(context) {
  final provider = Provider.of<GiftProvider>(context, listen: false);
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
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
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Gift send to',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: primaryColorOfApp,
                                fontSize: 12.sp),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'nyraa grover',
                                style: TextStyle(
                                    color: customTextColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp),
                              ),
                              Text(
                                '@nyra_kameover',
                                style: TextStyle(
                                    color: primaryColorOfApp,
                                    fontFamily: 'Poppins',
                                    fontSize: 11.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          CircleAvatar(
                            backgroundColor: primaryColorOfApp,
                            radius: 17.sp,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 16.sp,
                              child: CircleAvatar(
                                radius: 15.sp,
                                backgroundImage:
                                    const AssetImage('assets/image1.webp'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Consumer<GiftProvider>(builder: (context, value, child) {
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5.w,
                            mainAxisSpacing: 3.h,
                            crossAxisCount: 3),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Consumer<GiftProvider>(
                              builder: (context, value, child) {
                            return GestureDetector(
                              onTap: () {
                                provider.updateGift(index);
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5,
                                          color: provider.emptyList.contains(
                                                  provider.nameList[index])
                                              ? primaryColorOfApp
                                              : Colors.white),
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffe2e2e2)),
                                          child: Padding(
                                            padding: EdgeInsets.all(5.sp),
                                            child: Iconify(
                                              EmojioneMonotone.wrapped_gift,
                                              color: Color(0xff955D1B),
                                              size: 18.sp,
                                            ),
                                          )),
                                      Text(
                                        provider.nameList[index]["brand"],
                                        style: TextStyle(
                                            color: index == 0
                                                ? primaryColorOfApp
                                                : customTextColor,
                                            fontFamily: index == 0
                                                ? "Satisfy"
                                                : "Poppins",
                                            fontSize: 8.sp),
                                      ),
                                      Text(
                                        provider.nameList[index]["product"],
                                        style: TextStyle(
                                            color: customTextColor,
                                            fontFamily: "Poppins",
                                            fontSize: 8.sp),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 4.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: provider.emptyList.contains(
                                                    provider.nameList[index])
                                                ? primaryColorOfApp
                                                : Color(0xffe2e2e2),
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Iconify(
                                              MaterialSymbols
                                                  .currency_rupee_rounded,
                                              size: 16.sp,
                                              color: provider.emptyList
                                                      .contains(provider
                                                          .nameList[index])
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            Text(
                                              provider.nameList[index]["price"],
                                              style: TextStyle(
                                                  color: provider.emptyList
                                                          .contains(provider
                                                              .nameList[index])
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontFamily: "Poppins",
                                                  fontSize: 10.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        itemCount: provider.nameList.length,
                      );
                    }),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 6.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: primaryColorOfApp,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Row(
                            children: [
                              const Iconify(
                                Carbon.send_alt_filled,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Send to",
                                style: TextStyle(
                                    fontSize: 15.sp, fontFamily: 'Poppins'),
                              ),
                              const Spacer(),
                              Iconify(
                                MaterialSymbols.currency_rupee_rounded,
                                size: 16.sp,
                                color: Colors.white,
                              ),
                              Text(
                                "325.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ])),
              positionCross(context)
            ],
          );
        });
      });
}

class GiftProvider extends ChangeNotifier {
  List nameList = [
    {"brand": "myttube", "product": "Super Points Gift", "price": "1000"},
    {"brand": "Flipkart", "product": "Gift Voucher", "price": "1000"},
    {"brand": "cadbury", "product": "Dark chocolate", "price": "225"},
    {"brand": "monginis birthday", "product": "cake", "price": "525"},
    {"brand": "Blossom", "product": "Flowers", "price": "325"},
    {"brand": "mamaearth", "product": "Gift hamper", "price": "750"},
  ];
  List emptyList = [];

  updateGift(index) {
    if (emptyList.isEmpty) {
      emptyList.add(nameList[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(nameList[index]);
    }
    notifyListeners();
    print(emptyList);
  }
}
