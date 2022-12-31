import 'package:flutter/material.dart';

class Home123 extends StatefulWidget {
  TimePickerState createState() => TimePickerState();
}

class TimePickerState extends State<Home123> {
  String? selectedTime;

  Future<void> displayTimeDialog() async {
    final TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time != null) {
      setState(() {
        selectedTime = time.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((context) {
                      return StatefulBuilder(builder: (context, setState) {
                        return Column(
                          children: [
                            Text(
                              selectedTime != null
                                  ? '$selectedTime'
                                  : 'Click Below Button To Select Time...',
                              style: const TextStyle(fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              margin: const EdgeInsets.all(8),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  padding: const EdgeInsets.all(7),
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                child: const Text('Show Time Picker'),
                                onPressed: displayTimeDialog,
                              ),
                            ),
                          ],
                        );
                      });
                    }));
              },
              child: Text('as')),
          Text(
            selectedTime != null
                ? '$selectedTime'
                : 'Click Below Button To Select Time...',
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: const EdgeInsets.all(7),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Show Time Picker'),
              onPressed: displayTimeDialog,
            ),
          ),
        ],
      ),
    )));
  }
}
