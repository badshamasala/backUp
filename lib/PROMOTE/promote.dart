import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/PROMOTE/promote2.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

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

  /*  bool isPremium = false; */

  @override
  Widget build(BuildContext context) {
    print("badsha masala ------------------1");
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
                      mainAxisExtent: 11.5.h,
                      /*     childAspectRatio: 3.5, */
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffe2e2e2),
                          borderRadius: index == 1
                              ? const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))
                              : const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            animationDuration: const Duration(seconds: 0),
                            alignment: Alignment.topCenter,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: provider.emptyList
                                    .contains(provider.optionList[index])
                                ? index == 1
                                    ? const Color(0xff47123E)
                                    : primaryColorOfApp
                                : const Color(0xffe2e2e2),
                            foregroundColor: provider.emptyList
                                    .contains(provider.optionList[index])
                                ? Colors.white
                                : Colors.black,
                            elevation: 0),
                        onPressed: () {
                          provider.regularPremiun(index);
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
                    );
                  },
                  itemCount: provider.optionList.length);
            }),
            SizedBox(
              height: 1.h,
            ),
            Consumer<PromoteProvider>(builder: (context, value, child) {
              return provider.isPremium
                  ? GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 12.h,
                          /*     childAspectRatio: 3.5, */
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 2.w,
                          crossAxisCount: 1),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2,
                          child: InkWell(
                            onTap: () {
                              provider.updatePremiumAds(index);
                              print("asassa");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: provider.emptyPremium
                                          .contains(provider.premiumAdd[index])
                                      ? const Color(0xff47123E)
                                      : const Color(0xffe2e2e2),
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
                                            provider.premiumAdd[index]["label"],
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: provider.emptyPremium
                                                      .contains(provider
                                                          .premiumAdd[index])
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 12
                                                  .sp, /*   fontWeight: FontWeight.bold */
                                            ),
                                          ),
                                        ),
                                        provider.emptyPremium.contains(
                                                provider.premiumAdd[index])
                                            ? Iconify(
                                                AntDesign.check_circle_outlined,
                                                color: provider.emptyPremium
                                                        .contains(provider
                                                            .premiumAdd[index])
                                                    ? Colors.white
                                                    : Colors.black,
                                                size: 22.sp,
                                              )
                                            : Iconify(
                                                Ion.ios_circle_outline,
                                                color: provider.emptyPremium
                                                        .contains(provider
                                                            .premiumAdd[index])
                                                    ? Colors.white
                                                    : Colors.black,
                                                size: 23.sp,
                                              )
                                      ],
                                    ),
                                  ),
                                  splitline(
                                    provider.emptyPremium.contains(
                                            provider.premiumAdd[index])
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: provider.premiumAdd.length)
                  : GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 14.h,
                          /*     childAspectRatio: 3.5, */
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 1),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2,
                          child: InkWell(
                            onTap: () {
                              provider.singleDouble(index);
                              print("d---------------");
                              print(provider.newVar);
                              print(provider.premiumAds);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: provider.emptyAdd.contains(
                                          provider.addOptionList[index])
                                      ? primaryColorOfApp
                                      : const Color(0xffe2e2e2),
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
                                            provider.addOptionList[index]
                                                ["label"],
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: provider.emptyAdd.contains(
                                                      provider
                                                          .addOptionList[index])
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
                                                color: provider.emptyAdd
                                                        .contains(provider
                                                                .addOptionList[
                                                            index])
                                                    ? Colors.white
                                                    : Colors.black,
                                                size: 22.sp,
                                              )
                                            : Iconify(
                                                Ion.ios_circle_outline,
                                                color: provider.emptyAdd
                                                        .contains(provider
                                                                .addOptionList[
                                                            index])
                                                    ? Colors.white
                                                    : Colors.black,
                                                size: 23.sp,
                                              )
                                      ],
                                    ),
                                  ),
                                  splitline(
                                    provider.emptyAdd.contains(
                                            provider.addOptionList[index])
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
                          ),
                        );
                      },
                      itemCount: provider.optionList.length);
            }),
            Consumer<PromoteProvider>(builder: (context, value, child) {
              return SizedBox(height: provider.isPremium ? 2.h : 3.h);
            }),
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
                  TextButton(
                      style: TextButton.styleFrom(
                          elevation: 0,
                          visualDensity: const VisualDensity(vertical: -4),
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () async {
                        await FlutterPhoneDirectCaller.callNumber(
                            "+919876543210");
                      },
                      child: Text(
                        "+91-9876543210 ",
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontFamily: "Poppins",
                            fontSize: MediaQuery.of(context).size.height > 667
                                ? 8.sp
                                : 10.sp),
                      )),
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
                  TextButton(
                      style: TextButton.styleFrom(
                          elevation: 0,
                          visualDensity: const VisualDensity(vertical: -4),
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      onPressed: () async {
                        String? encodeQueryParameters(
                            Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                        }

// ···
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'connect@myttube.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': '',
                          }),
                        );

                        launchUrl(emailLaunchUri);
                      },
                      child: Text(
                        "connect@myttube.com",
                        style: TextStyle(
                            color: primaryColorOfApp,
                            fontFamily: "Poppins",
                            fontSize: MediaQuery.of(context).size.height > 667
                                ? 8.sp
                                : 10.sp),
                      )),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Promote2(
                              value: provider.newVar ?? 2,
                              value2: provider.premiumAds,
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
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    "Confirm & Next",
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            )
          ],
        ),
      ),
    );
  }
}

class PromoteProvider extends ChangeNotifier {
  var newVar;
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
  List premiumAdd = [
    {
      "label": "Premium Topper",
      "value": 2,
    },
    {
      "label": "Premium Business",
      "value": 3,
    },
    {
      "label": "Premium Business Groups",
      "value": 4,
    },
  ];
  List emptyPremium = [];
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
  List genderList = [
    {"icon": Ph.gender_male, "label": "Male"},
    {"icon": Ph.gender_female, "label": "Female"}
  ];

  List emptyList = [];
  List emptyAdd = [];
  List emptyplan = [];
  List emptyplanviews = [];
  List emptygender = [];
  var newColor;
  bool isPremium = false;
  regularPremiun(index) {
    if (emptyList.isEmpty) {
      emptyList.add(optionList[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(optionList[index]);
    }

    if (index == 1) {
      premiumAds = 2;
      isPremium = true;
    } else {
      premiumAds = null;
      isPremium = false;
    }
    print(premiumAds);
    notifyListeners();
  }

  singleDouble(index) {
    if (emptyAdd.isEmpty) {
      emptyAdd.add(addOptionList[index]);
    } else {
      emptyAdd.removeLast();
      emptyAdd.add(addOptionList[index]);
    }
    newVar = addOptionList[index]["value"];
    premiumAds = null;
    notifyListeners();
  }

  var premiumAds;
  updatePremiumAds(index) {
    if (emptyPremium.isEmpty) {
      emptyPremium.add(premiumAdd[index]);
    } else {
      emptyPremium.removeLast();
      emptyPremium.add(premiumAdd[index]);
    }
    premiumAds = premiumAdd[index]["value"];
    print(premiumAds);
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

  updatgender(index) {
    if (emptygender.contains(genderList[index])) {
      emptygender.remove(genderList[index]);
    } else {
      emptygender.add(genderList[index]);
    }
    notifyListeners();
  }

  methodforSelection() {
    if (emptyList.isEmpty) {
      emptyList.add(optionList[0]);
      emptyAdd.add(addOptionList[0]);
      emptyplan.add(planList[0]);
      emptyplanviews.add(planviewsList[1]);
      emptyPremium.add(premiumAdd[0]);
    }
  }

  slectfirstTwogender() {
    if (emptygender.isEmpty) {
      emptygender.add(genderList[0]);
      emptygender.add(genderList[1]);
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
