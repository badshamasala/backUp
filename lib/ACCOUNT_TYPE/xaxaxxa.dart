import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: const Text("open picker dialog"),
            onPressed: () async {
              var datePicked = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: DateTime(1994),
                firstDate: DateTime(1960),
                lastDate: DateTime(2012),
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.th,
                looping: true,
              );

              final snackBar =
                  SnackBar(content: Text("Date Picked $datePicked"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          ElevatedButton(
            child: const Text("Show picker widget"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => WidgetPage()));
            },
          )
        ],
      ),
    );
  }
}

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              /*  decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey[900]!,
                  Colors.black,
                ],
                stops: const [0.7, 1.0],
              )), */
              child: DatePickerWidget(
                looping: true,
                initialDate: DateTime.now(),
                dateFormat: "MMMM/dd/yyyy",
                onChange: (DateTime newDate, _) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                  print(_selectedDate);
                },
                pickerTheme: const DateTimePickerTheme(
                  backgroundColor: Colors.transparent,
                  itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
                  dividerColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //var locale = "zh";
    // return SafeArea(
    //   child: Scaffold(
    //     body: Center(
    //       child: DatePickerWidget(
    //         locale: //locale == 'zh'
    //             DateTimePickerLocale.zh_cn
    //             //  DateTimePickerLocale.en_us
    //         ,
    //         lastDate: DateTime.now(),
    //         // dateFormat: "yyyy : MMM : dd",
    //         // dateFormat: 'yyyy MMMM dd',
    //         onChange: (DateTime newDate, _) {
    //           setState(() {
    //             var dob = newDate.toString();
    //             print(dob);
    //           });
    //         },
    //         pickerTheme: DateTimePickerTheme(
    //           backgroundColor: Colors.transparent,
    //           dividerColor: const Color(0xffe3e3e3),
    //           itemTextStyle: TextStyle(
    //             fontFamily: 'NotoSansTC',
    //             fontSize: 18,
    //             fontWeight: FontWeight.w500,
    //             color: Theme.of(context).primaryColor,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
