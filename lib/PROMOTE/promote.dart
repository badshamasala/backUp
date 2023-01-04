import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/promote2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Promote extends StatefulWidget {
  const Promote({Key? key}) : super(key: key);

  @override
  State<Promote> createState() => _PromoteState();
}

class _PromoteState extends State<Promote> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<PromoteProvider>(context, listen: false).methodforSelection();
  }

  var newVar;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PromoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Promote',
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/billion.png",
                  height: 6.h,
                  width: 50.w,
                  fit: BoxFit.fill,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Of",
                    style: GoogleFonts.quantico(
                      color: primaryColorOfApp,
                      fontSize: MediaQuery.of(context).size.height > 667
                          ? 16.sp
                          : 20.sp, /*     fontFamily: "Poppins" */
                    ),
                  ),
                ],
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (rect) => const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff2C81F8),
                    Color(0xff03194B),
                  ]).createShader(rect),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Guaranteed viewability",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 16.sp
                            : 20.sp,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CHOOSE A TYPE YOUR BRANDING POSITION",
                  style: TextStyle(
                      color: customTextColor,
                      fontSize: MediaQuery.of(context).size.height > 667
                          ? 10.sp
                          : 12.sp,
                      fontFamily: "Poppins"),
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Consumer<PromoteProvider>(builder: (context, value, child) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 12.h,
                      /*     childAspectRatio: 3.5, */
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xffe2e2e2),
                          borderRadius: index == 1
                              ? BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))
                              : BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                      child: SizedBox(
                        height: 12.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              animationDuration: Duration(seconds: 0),
                              alignment: Alignment.topCenter,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: provider.emptyList
                                      .contains(provider.optionList[index])
                                  ? primaryColorOfApp
                                  : Color(0xffe2e2e2),
                              foregroundColor: provider.emptyList
                                      .contains(provider.optionList[index])
                                  ? Colors.white
                                  : Colors.black,
                              elevation: 0),
                          onPressed: () {
                            provider.updateMethod(index);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.sp),
                            child: Text(
                              provider.optionList[index]["label"],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize:
                                    15.sp, /*   fontWeight: FontWeight.bold */
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: provider.optionList.length);
            }),
            SizedBox(
              height: 1.h,
            ),
            Consumer<PromoteProvider>(builder: (context, value, child) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 14.h,
                      /*     childAspectRatio: 3.5, */
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 1),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        provider.updateAds(index);
                        setState(() {
                          newVar = provider.addOptionList[index]["value"];
                        });

                        /*   provider.listColor(index); */
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: provider.emptyAdd
                                    .contains(provider.addOptionList[index])
                                ? primaryColorOfApp
                                : Color(0xffe2e2e2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w),
                                    child: Text(
                                      provider.addOptionList[index]["label"],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: provider.emptyAdd.contains(
                                                provider.addOptionList[index])
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12
                                            .sp, /*   fontWeight: FontWeight.bold */
                                      ),
                                    ),
                                  ),
                                  provider.emptyAdd.contains(
                                          provider.addOptionList[index])
                                      ? Iconify(
                                          AntDesign.check_circle_outlined,
                                          color: provider.emptyAdd.contains(
                                                  provider.addOptionList[index])
                                              ? Colors.white
                                              : Colors.black,
                                          size: 22.sp,
                                        )
                                      : Iconify(
                                          Ion.ios_circle_outline,
                                          color: provider.emptyAdd.contains(
                                                  provider.addOptionList[index])
                                              ? Colors.white
                                              : Colors.black,
                                          size: 23.sp,
                                        )
                                ],
                              ),
                            ),
                            splitline(
                              provider.emptyAdd
                                      .contains(provider.addOptionList[index])
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            index == 1
                                ? verticalsplitline(
                                    provider.emptyAdd.contains(
                                            provider.addOptionList[index])
                                        ? Colors.white
                                        : Colors.black,
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: provider.optionList.length);
            }),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Row(
                children: [
                  Text(
                    "Content... for more business personalized plan. contact",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 8.sp
                            : 10.sp),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Row(
                children: [
                  Text(
                    "+91-9876543210 ",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 8.sp
                            : 10.sp),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "or mail us at",
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 8.sp
                            : 10.sp),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "connect@myttube.com",
                    style: TextStyle(
                        color: primaryColorOfApp,
                        fontFamily: "Poppins",
                        fontSize: MediaQuery.of(context).size.height > 667
                            ? 8.sp
                            : 10.sp),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Promote2(
                              value: newVar ?? 2,
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: primaryColorOfApp,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    "Confirm & Next",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            )
          ],
        ),
      ),
    );
  }
}

class PromoteProvider extends ChangeNotifier {
  List optionList = [
    {
      "label": "Regular",
      "value": 2,
    },
    {
      "label": "Premium",
      "value": 3,
    },
  ];
  List planList = [
    {
      "label": "One Time",
      "value": 1,
    },
    {
      "label": "3 Months",
      "value": 2,
    },
    {
      "label": "6 Months",
      "value": 3,
    },
    {
      "label": "1 Year",
      "value": 4,
    },
  ];
  List planviewsList = [
    {"label": "Business Premium Content", "value": 1, "views": "50 THOUSAND"},
    {"label": "Business Premium Content", "value": 2, "views": "100 THOUSAND"},
    {"label": "Business Premium Content", "value": 3, "views": "500 THOUSAND"},
    {"label": "Business Premium Content", "value": 4, "views": "1 MILLION"},
    {"label": "Business Premium Content", "value": 5, "views": "5 MILLION"},
    {"label": "Business Premium Content", "value": 6, "views": "10 MILLION"},
  ];
  List addOptionList = [
    {
      "label": "Standard-Single",
      "value": 2,
    },
    {
      "label": "Standard-Double",
      "value": 3,
    },
  ];
  List emptyList = [];
  List emptyAdd = [];
  List emptyplan = [];
  List emptyplanviews = [];
  var newColor;
  updateMethod(index) {
    if (emptyList.isEmpty) {
      emptyList.add(optionList[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(optionList[index]);
    }

    notifyListeners();
  }

  updateAds(index) {
    if (emptyAdd.isEmpty) {
      emptyAdd.add(addOptionList[index]);
    } else {
      emptyAdd.removeLast();
      emptyAdd.add(addOptionList[index]);
    }
    notifyListeners();
  }

  updatePlan(index) {
    if (emptyplan.isEmpty) {
      emptyplan.add(planList[index]);
    } else {
      emptyplan.removeLast();
      emptyplan.add(planList[index]);
    }
    notifyListeners();
  }

  updateviewsPlan(index) {
    if (emptyplanviews.isEmpty) {
      emptyplanviews.add(planviewsList[index]);
    } else {
      emptyplanviews.removeLast();
      emptyplanviews.add(planviewsList[index]);
    }
    notifyListeners();
  }

  methodforSelection() {
    if (emptyList.isEmpty) {
      emptyList.add(optionList[0]);
      emptyAdd.add(addOptionList[0]);
      emptyplan.add(planList[0]);
      emptyplanviews.add(planviewsList[1]);
    } else if (emptyList.isNotEmpty) {
      emptyList.removeLast();
      emptyList.add(optionList[0]);
      emptyAdd.removeLast();
      emptyAdd.add(addOptionList[0]);
      emptyplan.removeLast();
      emptyplan.add(planList[0]);
      emptyplanviews.removeLast();
      emptyplanviews.add(planviewsList[1]);
    }
  }
}

splitline(color) {
  return SizedBox(
    height: 0.1.h,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 0.1.h,
            width: 2.w,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.5, color: color)),
          );
        },
        separatorBuilder: ((context, index) {
          return SizedBox(
            width: 1.w,
          );
        }),
        itemCount: 30),
  );
}

verticalsplitline(color) {
  return SizedBox(
    width: 0.2.w,
    child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 1.h,
            width: 0.2.w,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                  5), /*      border: Border.all(width: 0.5, color: color) */
            ),
          );
        },
        separatorBuilder: ((context, index) {
          return SizedBox(
            height: 0.5.h,
          );
        }),
        itemCount: 5),
  );
}
