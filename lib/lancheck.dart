import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:get/get.dart';

class Lancheck extends StatefulWidget {
  const Lancheck({Key? key}) : super(key: key);

  @override
  State<Lancheck> createState() => _LancheckState();
}

class _LancheckState extends State<Lancheck> {
  var locale = [
    {'language': 'English', 'locale': Locale('en', 'IN')},
    {'language': 'Hindi', 'locale': Locale('hi', 'IN')},
    {'language': 'Bengali', 'locale': Locale('bn', 'IN')},
    {'language': 'Gujarati', 'locale': Locale('gu', 'IN')},
    {'language': 'Marathi', 'locale': Locale('mr', 'IN')},
    {'language': 'Urdu', 'locale': Locale('ur', 'IN')},
    {'language': 'Odia', 'locale': Locale('or', 'IN')},
    {'language': 'Kannada', 'locale': Locale('kn', 'IN')},
    {'language': 'Tamil', 'locale': Locale('ta', 'IN')},
    {'language': 'Telegu', 'locale': Locale('te', 'IN')},
  ];

  var groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Center(
            child: Text('hello'.tr),
          ),
          ElevatedButton(
              onPressed: () {

                showModalBottomSheet(
                    isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    // <-- SEE HERE
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return ListView.separated(
                              shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                                minVerticalPadding:
                                                                            10,
                                                                        horizontalTitleGap:
                                                                            0.0,
                                                                        visualDensity:
                                                                            const VisualDensity(vertical: -3),
                                                                        dense:
                                                                            true,
                              leading:
                                  Text(locale[index]['language'].toString()),
                              trailing: Radio(
                                  value: locale[index]['locale'].toString(),
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = locale[index]['locale'].toString();
                                      updatmethod( locale[index]['locale'].toString() );
                                    });
                                  }),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: locale.length);
                    });
                  },
                );
              },
              child: Text('Button'))
        ],
      ),
    );
  }

  updatmethod(locale) {
    Get.updateLocale(Locale(locale));
  }
}
