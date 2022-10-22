import 'package:flutter/material.dart';

class Dropdown1 extends StatefulWidget {
  const Dropdown1({Key? key}) : super(key: key);

  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  var patients;
 List  _allAct = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          DropdownButton(
              value: patients,
              hint: Text(
                "  Patient Name",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),

              //mapping stateList here for items
              items: _allAct.map((e) {
                return DropdownMenuItem(
                  value: e.toString(),
                  child: Text(
                    e.toString(),
                    // style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 30,
              underline: SizedBox(),
              iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
              onChanged: (newValue) {
                setState(() {
            
                  patients = newValue.toString();
                });
              }),
        ],
      ),
    );
  }
}
