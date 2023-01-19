import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/poll/createpoll2.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Createpoll extends StatefulWidget {
  const Createpoll({Key? key}) : super(key: key);

  @override
  State<Createpoll> createState() => _CreatepollState();
}

class _CreatepollState extends State<Createpoll> {
  bool checkTextField = false;
  bool option1bool = false;
  bool option2bool = false;
  bool option3bool = false;
  bool option4bool = false;

  var questionCont = TextEditingController();
  var option1 = TextEditingController();
  var option2 = TextEditingController();
  var option3 = TextEditingController();
  var option4 = TextEditingController();

  FocusNode? quesfocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quesfocusNode = FocusNode();

    Provider.of<CreatePollProvider>(context, listen: false)
        .methodforSelection();

    /*    newMethod(); */
    questionCont.addListener(() {
      if (questionCont.text.isNotEmpty) {
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

  badsha() {
    setState(() {
      Provider.of<CreatePollProvider>(context, listen: false).newVariable = 2;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreatePollProvider>(context, listen: false);
    return WillPopScope(
      onWillPop: () => badsha(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
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
                provider.methodforSelection();
                setState(() {
                  provider.newVariable = 2;
                });
              },
              icon: const Iconify(
                Mdi.arrow_back,
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
                  /*           focusNode: quesfocusNode, */
                  controller: questionCont,
                  cursorColor: primaryColorOfApp,
                  maxLines: 7,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 1.h),
                      isDense: true,
                      alignLabelWithHint: true,
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
                          borderSide: BorderSide(
                              color: primaryColorOfApp, width: 0.5.sp),
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
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 2,
                              crossAxisCount: 3),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: primaryColorOfApp),
                              backgroundColor: provider.emptyList
                                      .contains(provider.buttonlist[index])
                                  ? primaryColorOfApp
                                  : Colors.white,
                              foregroundColor: provider.emptyList
                                      .contains(provider.buttonlist[index])
                                  ? Colors.white
                                  : primaryColorOfApp,
                              elevation: 0),
                          onPressed: () {
                            provider.updateOptionMethod(index);
                          },
                          child: Text(
                            provider.buttonlist[index]["label"],
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 11.sp),
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
                  return Column(
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
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(color: primaryColorOfApp),
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
                            onPressed: (provider.count == 2
                                    ? checkTextField &&
                                        option1bool &&
                                        option2bool
                                    : provider.count == 3
                                        ? checkTextField &&
                                            option1bool &&
                                            option2bool &&
                                            option3bool
                                        : checkTextField &&
                                            option1bool &&
                                            option2bool &&
                                            option3bool &&
                                            option4bool)
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Createpoll2(
                                                value1: provider.count,
                                                option1: option1.text,
                                                option2: option2.text,
                                                option3: option3.text,
                                                option4: option4.text,
                                                text: "",
                                              )),
                                    );
                                  }
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
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreatePollProvider extends ChangeNotifier {
  List buttonlist = [
    {
      "label": "Option 2",
      "value": 2,
    },
    {
      "label": "Option 3",
      "value": 3,
    },
    {
      "label": "Option 4",
      "value": 4,
    },
  ];
  List emptyList = [];
  List durationlist = [
    {"label": "1 Month", "value": 2},
    {"label": "7 Days", "value": 3},
    {"label": "1 Days", "value": 4},
  ];
  List tempoList = [];
  int newVariable = 2;

  bool buttonCheck = false;
  var questionCont = TextEditingController();

  updateOptionMethod(index) {
    if (emptyList.isEmpty) {
      emptyList.add(buttonlist[index]);
    } else {
      emptyList.removeLast();
      emptyList.add(buttonlist[index]);
    }
    print(emptyList);
    print('Update----${buttonlist[index]["value"]}');
    newVariable = buttonlist[index]["value"];

    print("GetCount-----$newVariable");
    notifyListeners();
  }

  methodforSelection() {
    if (emptyList.isEmpty) {
      emptyList.add(buttonlist[0]);
      tempoList.add(durationlist[2]);
    } else if (emptyList.isNotEmpty) {
      emptyList.removeLast();
      emptyList.add(buttonlist[0]);
      tempoList.removeLast();
      tempoList.add(durationlist[2]);
    }
  }

  int get count => newVariable;

  updateDurationMethod(index) {
    if (tempoList.isEmpty) {
      tempoList.add(durationlist[index]);
    } else {
      tempoList.removeLast();
      tempoList.add(durationlist[index]);
    }

    notifyListeners();
  }

  var newDate;
  String? newTime;

  var date = DateTime.now();

  Future pickedDate(context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime.now(),
      lastDate: DateTime(date.year, date.month + 1, date.day),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
                primary: primaryColorOfApp, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: Colors.black // <-- SEE HERE
                ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: primaryColorOfApp, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (newDate == null) return;

    newDate = selectedDate!;
    notifyListeners();
  }

  Future pickedTime(context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
                primary: primaryColorOfApp, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: Colors.black // <-- SEE HERE
                ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: primaryColorOfApp, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (selectedTime != null) {
      newTime = selectedTime.format(context);
    }

    notifyListeners();
  }
}
