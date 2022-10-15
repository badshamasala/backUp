import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drop1 extends StatefulWidget {
  const Drop1({super.key});

  @override
  State<Drop1> createState() => _Drop1State();
}

class _Drop1State extends State<Drop1> {
  List items = [
    'item1',
    'item2',
    'item3',
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      value: value,
                      items: items
                          .map((item) =>
                              DropdownMenuItem(value: item, child: Text(item)))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

/*   DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(value: item, child: Text(item));
  } */
}
