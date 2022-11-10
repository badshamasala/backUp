import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

class Malefemale extends StatefulWidget {
  const Malefemale({Key? key}) : super(key: key);

  @override
  State<Malefemale> createState() => _MalefemaleState();
}

class _MalefemaleState extends State<Malefemale> {
  List changeinterest = [
    'Male',
    'Female',
    'Other',
  ];

  List templist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 35,
              /*     childAspectRatio: 3.5, */
              crossAxisSpacing: 10,
              /* mainAxisSpacing: 10, */
              crossAxisCount: 3),
          itemCount: changeinterest.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (templist.isEmpty) {
                      templist.add(changeinterest[index]);
                    } else {
                      templist.removeLast();
                      templist.add(changeinterest[index]);
                    }
                   
                  });
                  print(templist);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: templist.contains(changeinterest[index])
                            ? primaryColorOfApp
                            : Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border:
                            Border.all(width: 0.5, color: primaryColorOfApp),
                        shape: BoxShape.rectangle),
                    /*  width: 50, */
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        changeinterest[index],
                        style: TextStyle(
                            color: templist.contains(changeinterest[index])
                                ?Colors.white : primaryColorOfApp
                              ,
                            fontFamily: 'Poppins'),
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
