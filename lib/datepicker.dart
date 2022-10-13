import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime dateTime = DateTime.now();
  var size, height, width;
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        /*   mainAxisAlignment: MainAxisAlignment.center, */
        children: [
          TextButton(
              onPressed: () {
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      // <-- SEE HERE
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.0),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Select Your Birthday',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    color: Color(0xff000000)),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Month',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    'Year',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                              buildDatePicker(),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                      width: 20,
                                      child: Checkbox(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          value: value,
                                          onChanged: (value) {
                                            setState(() {
                                              this.value = value!;
                                            });
                                          }),
                                    ),
                                    /* SizedBox(
                                        width: 15,
                                      ), */
                                    Text(
                                      'this won\'t be shared any ror anywhere',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: Color(0xff515253)),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Show your birthday info everyone',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff515253)),
                                  ),
                                  Switch.adaptive(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: value1,
                                      onChanged: (value1) {
                                        setState(() {
                                          this.value1 = value1;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Show your birthday info everyone',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        color: Color(0xff515253)),
                                  ),
                                  Switch.adaptive(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      value: value2,
                                      onChanged: (value2) {
                                        setState(() {
                                          this.value2 = value2;
                                        });
                                      })
                                ],
                              ),
                              SizedBox(
                                width: double.infinity,
                                // height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      minimumSize: Size(0.0, 40),
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 40.0, vertical: 20.0),
                                      backgroundColor: Color(0xff0087FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  child: Text(
                                    "Confirm & Continue",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.045,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                            ],
                          ),
                        );
                      });
                    });
              },
              child: Text('btn')),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget buildDatePicker() => SizedBox(
        height: 150,
        child: CupertinoDatePicker(
          minimumYear: 1950,
          maximumYear: DateTime.now().year,
          initialDateTime: dateTime,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (dateTime) =>
              setState(() => this.dateTime = dateTime),
        ),
      );
}
