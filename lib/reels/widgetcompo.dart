import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/emojione_monotone.dart';
import 'package:iconify_flutter/icons/ooui.dart';
import 'package:sizer/sizer.dart';

class CommentWithPublisher extends StatefulWidget {
  @override
  _CommentWithPublisherState createState() => _CommentWithPublisherState();
}

class _CommentWithPublisherState extends State<CommentWithPublisher> {
  List appBaricon = [
    Bi.qr_code_scan,
    Ooui.bell,
    EmojioneMonotone.wrapped_gift,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 19.sp,
                backgroundColor: primaryColorOfApp,
                child: CircleAvatar(
                  radius: 18.sp,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 17.sp,
                    backgroundImage: AssetImage("assets/image1.webp"),
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Reena Jhaa",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 12.sp),
                      ),
                      Iconify(
                        Bi.patch_check,
                        color: primaryColorOfApp,
                        size: 16.sp,
                      )
                    ],
                  ),
                  Text(
                    "@Reena_Jha",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 10.sp),
                  )
                ],
              ),
              SizedBox(
                width: 2.w,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(20.w, 4.h),
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0))),
                child: Text(
                  "Follow",
                  style: TextStyle(fontSize: 10.sp, fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 20.sp,
                      )),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Colors.white.withOpacity(0.5)),
                    child: Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                        children: [
                          Text(
                            "Another Day With new song top #something",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 8.sp),
                          ),
                          Iconify(
                            Bxs.music,
                            color: primaryColorOfApp,
                            size: 10.sp,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/tseries.jpg",
                height: 5.h,
                width: 6.w,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }
}
