import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/POLL/createpoll2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PostText extends StatefulWidget {
  const PostText({Key? key}) : super(key: key);

  @override
  State<PostText> createState() => _PostTextState();
}

class _PostTextState extends State<PostText> {
  bool checkbool = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    postController.addListener(() {
      setState(() {
        if (postController.text.isEmpty) {
          checkbool = false;
        } else {
          checkbool = true;
        }
      });
      print("---------build is call text-post");
    });
  }

  bool valueofswitch = false;
  String? value;
  List items = [
    'item1',
    'item2',
    'item3',
  ];
  var postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("---------build is call text-post");
    final provider = Provider.of<ChangeColorProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -2.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 17.sp,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16.sp,
                child: CircleAvatar(
                  backgroundImage: const AssetImage("assets/image1.webp"),
                  radius: 15.sp,
                ),
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text('@Profile.Username',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: primaryColorOfApp,
                    fontSize: 12.sp)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 28.w,
              height: 3.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: primaryColorOfApp, width: 0.5),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    iconEnabledColor: primaryColorOfApp,
                    hint: Padding(
                      padding: EdgeInsets.only(left: 8.sp),
                      child: Row(
                        children: [
                          Iconify(
                            Teenyicons.globe_americas_outline,
                            size: 15.sp,
                            color: primaryColorOfApp,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          const Text(
                            'Public',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: primaryColorOfApp),
                          ),
                        ],
                      ),
                    ),
                    /*  isExpanded: true, */
                    value: value,
                    items: items
                        .map((item) =>
                            DropdownMenuItem(value: item, child: Text(item)))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        value = value;
                      });
                    }),
              ),
            ),
          ),
        ],
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
              height: 2.h,
            ),
            Consumer<ChangeColorProvider>(builder: (context, value, child) {
              return TextFormField(
                /*   onChanged: (value) {
                  provider.checkEmptyText();
                }, */
                controller: postController,
                cursorColor: primaryColorOfApp,
                maxLines: 7,
                style: TextStyle(
                    fontFamily: provider.newFont, color: provider.newFontColor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.w),
                  constraints: BoxConstraints(),
                  isDense: true,
                  filled: true,
                  fillColor: provider.newColor == null
                      ? Colors.white
                      : provider.newColor,
                  alignLabelWithHint: true,
                  hintText: 'e.g Your Favotite Food',
                  hintStyle: TextStyle(
                      color: provider.newFontColor,
                      fontFamily: 'Poppins',
                      fontSize: 10.sp),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: customTextColor, width: 0.5.sp),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: primaryColorOfApp, width: 0.5.sp),
                      borderRadius: BorderRadius.circular(5)),
                ),
              );
            }),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Text(
                  "Use a template",
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: "Poppins",
                      fontSize: 12.sp),
                )
              ],
            ),
            SizedBox(
              height: 6.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        provider.changeColor(i);
                      },
                      child: CircleAvatar(
                        backgroundColor: provider.colorlist[i],
                        radius: 12.sp,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 1.w,
                    );
                  },
                  itemCount: provider.colorlist.length),
            ),
            const Spacer(),
            SizedBox(
              height: 6.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: checkbool
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Createpoll2(
                                    text: postController.text,
                                  )),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                    elevation: 0,

                    // padding: EdgeInsets.symmetric(
                    //     horizontal: 40.0, vertical: 20.0),
                    backgroundColor: const Color(0xff0087FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}

class ChangeColorProvider extends ChangeNotifier {
  List colorlist = [
    const Color(0xff6882BD),
    const Color(0xff537C78),
    const Color(0xff192CD2),
    const Color(0xff008755),
    const Color(0xffB80D48),
    const Color(0xffCC222B),
    const Color(0xff0087FF),
    const Color(0xffF29724),
    const Color(0xffED1B24),
    const Color(0xffFFD45B),
  ];
  List fontList = [
    "Imprima",
    "Poppins",
    "Roboto",
    "Satisfy",
  ];
  List fontColor = [
    Color(0xffffffff),
    Color(0xff000000),
  ];

  dynamic newColor;
  dynamic newFont;
  dynamic newFontColor;

  changeColor(index) {
    if (index > 4) {
      newFontColor = fontColor[1];
    } else {
      newFontColor = fontColor[0];
    }
    newColor = colorlist[index];

    notifyListeners();
  }

  int index = 0;
  changeFont() {
    if (index == fontList.length - 1) {
      index = 0;
    } else {
      index++;
    }
    newFont = fontList[index];
    print(newFont);
    notifyListeners();
  }
}
