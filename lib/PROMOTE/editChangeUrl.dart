import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

import '../GLOBALS/colors.dart';

class EditChangeUrl extends StatefulWidget {
  const EditChangeUrl({Key? key}) : super(key: key);

  @override
  State<EditChangeUrl> createState() => _EditChangeUrlState();
}

class _EditChangeUrlState extends State<EditChangeUrl> {
  List items = [
    'Order Now',
    'Download Now',
    'Visit Website',
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Edit-Change URL',
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "Website/URL",
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: "Poppins",
                      fontSize: 10.sp),
                )
              ],
            ),
            TextFormField(
              cursorColor: primaryColorOfApp,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  isDense: true,
                  hintStyle: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: primaryColorOfApp, width: 0.5.sp),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: primaryColorOfApp, width: 0.5.sp),
                      borderRadius: BorderRadius.circular(5)),
                  labelStyle: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                  suffixIconConstraints: BoxConstraints(),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 3.w),
                    child: Iconify(
                      AntDesign.check_circle_outlined,
                      color: Color(0xff08A434),
                      size: 19.sp,
                    ),
                  )),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Text(
                  "Select Results ",
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: "Poppins",
                      fontSize: 10.sp),
                ),
                Text(
                  "(type of button choose one)",
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: "Poppins",
                      fontSize: 8.sp),
                )
              ],
            ),
            Container(
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: const UploadImage().radius(),
                border: Border.all(color: primaryColorOfApp, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      iconEnabledColor: primaryColorOfApp,
                      hint: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              color: primaryColorOfApp),
                        ),
                      ),
                      isExpanded: true,
                      value: value,
                      items: items
                          .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 12.sp),
                              )))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
