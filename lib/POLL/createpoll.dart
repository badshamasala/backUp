import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/NEW_FOLDER/history1.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Createpoll extends StatefulWidget {
  const Createpoll({Key? key}) : super(key: key);

  @override
  State<Createpoll> createState() => _CreatepollState();
}

class _CreatepollState extends State<Createpoll> {
  bool checkTextField = true;
  bool option1bool = false;
  bool option2bool = false;
  bool option3bool = false;
  bool option4bool = false;

  var questionCont = TextEditingController();
  var option1 = TextEditingController();
  var option2 = TextEditingController();
  var option3 = TextEditingController();
  var option4 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    questionCont.addListener(() {
      if (questionCont.text.isEmpty) {
        setState(() {
          checkTextField = true;
        });
      } else {
        setState(() {
          checkTextField = false;
        });
      }
    });
    option1.addListener(() {
      if (option1.text.isNotEmpty) {
        setState(() {
          option1bool = true;
        });
      } else {
        setState(() {
          option1bool = false;
        });
      }
    });
    option2.addListener(() {
      if (option2.text.isNotEmpty) {
        setState(() {
          option2bool = true;
        });
      } else {
        setState(() {
          option2bool = false;
        });
      }
    });
    option3.addListener(() {
      if (option3.text.isNotEmpty) {
        setState(() {
          option3bool = true;
        });
      } else {
        setState(() {
          option3bool = false;
        });
      }
    });
    option4.addListener(() {
      if (option4.text.isNotEmpty) {
        setState(() {
          option4bool = true;
        });
      } else {
        setState(() {
          option4bool = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreatePollProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 7.h,
        automaticallyImplyLeading: false,
        titleSpacing: -7.sp,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Create Poll',
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
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColorOfApp,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(
                height: 0.5.h,
              ),
              TextFormField(
                controller: questionCont,
                cursorColor: primaryColorOfApp,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'e.g Your Favotite Food',
                    hintStyle: TextStyle(
                        color: customTextColor,
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
                    labelText: 'Add Your Question',
                    labelStyle: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 10.sp)),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Select Option',
                    style: TextStyle(
                        color: customTextColor,
                        fontFamily: 'Poppins',
                        fontSize: 12.sp),
                  )
                ],
              ),
              Consumer<CreatePollProvider>(builder: (context, value, child) {
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 33,
                            /*     childAspectRatio: 3.5, */
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            crossAxisCount: 3),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                color: checkTextField
                                    ? Color(0xffe2e2e2)
                                    : primaryColorOfApp),
                            backgroundColor: provider.emptyList
                                    .contains(provider.buttonlist[index])
                                ? primaryColorOfApp
                                : Colors.white,
                            foregroundColor: provider.emptyList
                                    .contains(provider.buttonlist[index])
                                ? Colors.white
                                : primaryColorOfApp,
                            elevation: 0),
                        onPressed: checkTextField
                            ? null
                            : () {
                                provider.updateOptionMethod(index);
                                /*  print(provider.emptyList); */

                                /*  provider.getCount(index); */
                                /* var newVariable = provider.emptyList[index]["value"];
                            print(newVariable); */
                              },
                        child: Text(
                          provider.buttonlist[index]["label"],
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                        ),
                      );
                    },
                    itemCount: provider.buttonlist.length);
              }),
              SizedBox(
                height: 3.h,
              ),
              Consumer<CreatePollProvider>(builder: (context, value, child) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: provider.count,
                    itemBuilder: (context, index) {
                      return TextFormField(
                        controller: index == 0
                            ? option1
                            : index == 1
                                ? option2
                                : index == 2
                                    ? option3
                                    : option4,
                        onChanged: (value) {},
                        maxLength: 50,
                        cursorColor: primaryColorOfApp,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            constraints: BoxConstraints(),
                            isDense: true,
                            hintText: 'e.g Your Favotite Food',
                            hintStyle: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: customTextColor, width: 0.5.sp),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: primaryColorOfApp, width: 0.5.sp),
                                borderRadius: BorderRadius.circular(5)),
                            labelText: index == 0
                                ? 'Add Your Option 1'
                                : index == 1
                                    ? "Add Your Option 2"
                                    : index == 2
                                        ? "Add Your Option 3"
                                        : "Add Your Option 4",
                            labelStyle: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 10.sp)),
                      );
                    });
              }),
              Consumer<CreatePollProvider>(builder: (context, value, child) {
                return Visibility(
                  visible: provider.visibility,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Survey Duration',
                            style: TextStyle(
                                color: customTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                      Consumer<CreatePollProvider>(
                          builder: (context, value, child) {
                        return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 33,
                                    /*     childAspectRatio: 3.5, */
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 2,
                                    crossAxisCount: 3),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: provider.tempoList.contains(
                                                provider.durationlist[index])
                                            ? Colors.white
                                            : primaryColorOfApp),
                                    backgroundColor: provider.tempoList
                                            .contains(
                                                provider.durationlist[index])
                                        ? primaryColorOfApp
                                        : Colors.white,
                                    foregroundColor: provider.tempoList
                                            .contains(
                                                provider.durationlist[index])
                                        ? Colors.white
                                        : primaryColorOfApp,
                                    elevation: 0),
                                onPressed: () {
                                  provider.updateDurationMethod(index);
                                },
                                child: Text(
                                  provider.durationlist[index]["label"],
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 11.sp),
                                ),
                              );
                            },
                            itemCount: provider.durationlist.length);
                      }),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Change',
                            style: TextStyle(
                              color: primaryColorOfApp,
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                            ),
                          ),
                          Text('Color',
                              style: TextStyle(
                                color: Color(0xffED1B24),
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                              )),
                          Text('Theme',
                              style: TextStyle(
                                color: Color(0xff037F26),
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        '#content: Be careful, we don’t allow request for political opinion and other sensetive information data',
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: customTextColor,
                          fontFamily: 'Poppins',
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                        child: Row(
                          children: [
                            Text(
                              'I accepted ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: customTextColor,
                                  fontSize: 10.sp),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                foregroundColor: const Color(0xff0087FF),
                              ),
                              child: Text(
                                'terms of services',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            const Text(
                              '|',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                foregroundColor: const Color(0xff0087FF),
                              ),
                              child: Text(
                                'privacy policy',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                foregroundColor: const Color(0xff0087FF),
                              ),
                              child: Text(
                                'Licence agreement',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            const Text(
                              '&',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                foregroundColor: const Color(0xff0087FF),
                              ),
                              child: Text(
                                'read more',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: primaryColorOfApp,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Consumer<CreatePollProvider>(
                          builder: (context, value, child) {
                        return SizedBox(
                          height: 6.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: primaryColorOfApp,
                                foregroundColor: Colors.white,
                                elevation: 0),
                            onPressed: (provider.visibility &&
                                    provider.buttonCheck && provider.count == 2 ? 
                                    option1bool && option2bool : provider.count ==3 ?  option1bool && option2bool && option3bool : option1bool && option2bool && option3bool && option4bool)
                                ? () {}
                                : null,
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 15.sp),
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class CreatePollProvider extends ChangeNotifier {
  List buttonlist = [
    {"label": "Option 2", "value": 2},
    {"label": "Option 3", "value": 3},
    {"label": "Option 4", "value": 4},
  ];
  List emptyList = [];
  List durationlist = [
    {"label": "1 Month", "value": 2},
    {"label": "7 Days", "value": 3},
    {"label": "1 Days", "value": 4},
  ];
  List tempoList = [];
  int newVariable = 0;
  bool visibility = false;
  bool buttonCheck = false;
  var questionCont = TextEditingController();

  updateOptionMethod(index) {
    if (emptyList.isEmpty) {
      emptyList.add(buttonlist[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(buttonlist[index]);
    }
    /*  print('Update----${buttonlist[index]["value"]}'); */
    newVariable = buttonlist[index]["value"];
    visibility = true;
    /*    print("GetCount-----$newVariable"); */
    notifyListeners();
  }

  int get count => newVariable;

  updateDurationMethod(index) {
    if (tempoList.isEmpty) {
      tempoList.add(durationlist[index]);
    } else {
      tempoList.removeLast();
      tempoList.add(durationlist[index]);
    }
    buttonCheck = true;
/*     print('Update----${durationlist[index]["value"]}');
    newVariable = durationlist[index]["value"];
    print("GetCount-----$newVariable"); */
    notifyListeners();
  }
}
