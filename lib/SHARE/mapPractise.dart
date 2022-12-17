// ignore_for_file: file_names, avoid_print, prefer_const_constructors, prefer_typing_uninitialized_variables


import 'package:flutter/material.dart';

class MapPractise extends StatefulWidget {
  const MapPractise({Key? key}) : super(key: key);

  @override
  State<MapPractise> createState() => _MapPractiseState();
}

class _MapPractiseState extends State<MapPractise> {
  Map myMap = {
    "User1": "HOSPITAL",
    "User2": "PATIENT",
  };
  Map genderMap = {
    "Type1": "MALE",
    "Type2": "FEMALE",
    "Type3": "OTHER",
  };
  bool disabledropdown = true;
  var dropdownkivalue;
  var genderkivalue;

  Map newMap = {
    "personalizations": [
      {
        "to": [
          {"email": ""}
        ],
        "dynamic_template_data": {
          "EmployeeName": "",
          "EmployeeID": "",
          "PatientName": "",
          "ProviderName": "",
          "TreatmentDate": "",
          "Diagnosis": ""
        }
      }
    ],
    "from": {"email": ""},
    "template_id": ""
  };

  myMethod() {
    newMap['personalizations']![0]['dynamic_template_data']['EmployeeName'] =
        "123456";
    print(newMap);

    /*    myMap.update('name', (value) => 'rashid');
    myMap.remove('gender');
    print(myMap); */

    /*    print(myMap.keys);
    print(myMap.values);
    var s = myMap.entries.map((e) => e.value).toList();
    print(s); */
/*     var checkthis = myMap.keys.firstWhere(
        (element) => myMap[element] == 'badsha',
        orElse: () => 'Badshamasal');
    print(checkthis); */
  }

  var namekilist = [
    'rashid',
    'nimala',
    'farhan',
    'asad',
    'ubaid',
    'hamza',
  ];
  var newbadshalist2 = [];

/*   var namekilist = []; */
  badshaMethod() {
    setState(() {
      dynamic newbadshalist =
          namekilist.where((element) => element.startsWith(tagcontroller.text));
      if (tagcontroller.text.isNotEmpty) {
        if (newbadshalist2.contains(newbadshalist)) {
          newbadshalist2.remove(newbadshalist);
        } else {
          newbadshalist2.add(newbadshalist);
        }
      } else {
        newbadshalist2.clear();
      }

      print(newbadshalist2);
    });
  }

  @override
  void dispose() {
    super.dispose();
    tagcontroller.dispose();
  }

  var tagcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                myMethod();
              },
              child: Text('badsha button')),
          DropdownButton(
              hint: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'select your business categories',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xffC4C4C4)),
                ),
              ),
              isExpanded: true,
              value: dropdownkivalue,
              items: myMap.entries
                  .map((e) =>
                      DropdownMenuItem(value: e.value, child: Text(e.value)))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  dropdownkivalue = val;
                  if (dropdownkivalue == myMap['User1']) {
                    disabledropdown = true;
                  } else if (dropdownkivalue == myMap['User2']) {
                    setState(() {
                      disabledropdown = false;
                    });
                  }
                });
              }),
          DropdownButtonFormField(
              hint: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'select your GENDER',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xffC4C4C4)),
                ),
              ),
              isExpanded: true,
              value: genderkivalue,
              items: genderMap.entries
                  .map((e) =>
                      DropdownMenuItem(value: e.value, child: Text(e.value)))
                  .toList(),
              onChanged: disabledropdown
                  ? null
                  : (val) {
                      setState(() {
                        genderkivalue = val;
                      });
                    }),
          ElevatedButton(
              onPressed: () {
                badshaMethod();
              },
              child: Text('btn')),
          TextFormField(
            controller: tagcontroller,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            onTap: () {},
            onChanged: (value) {
              if (value == '@') {
                showDialog(
                    context: context,
                    builder: (context) {
                      return /*  Consumer<TagFriendProvider>(
                              builder: (context, value, child) {
                            return  */
                          AlertDialog(
                              content: /* FutureBuilder(
                              /*     future: badshaMethod(), */
                              builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else {
                          return  */
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: namekilist.length,
                                      itemBuilder: ((context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            children: [Text(namekilist[index])],
                                          ),
                                        );
                                      }))
                              /*    }
                      }
                      ) */
                              );
                      /*    }); */
                    });
              } else if (value == tagcontroller.text) {
                if (tagcontroller.text.isNotEmpty) {
                  badshaMethod();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content: /*  FutureBuilder(
                          /*  future: badshaMethod(), */
                          builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else {
                          return */
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: newbadshalist2.length,
                                    itemBuilder: ((context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          children: [
                                            Text(newbadshalist2[index]
                                                .toString())
                                          ],
                                        ),
                                      );
                                    }))
                            /*   }
                      }
                      ) */
                            );
                        /*    }); */
                      });
                }
              }
            },
          )
        ],
      ),
    );
  }
}
