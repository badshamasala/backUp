import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

class MapPractise extends StatefulWidget {
  const MapPractise({Key? key}) : super(key: key);

  @override
  State<MapPractise> createState() => _MapPractiseState();
}

class _MapPractiseState extends State<MapPractise> {
  var myMap = {
    "fulldetails": [],
    "name": "",
    "age": "",
    "gender": "",
    "dob": "",
  };
  var newMap = {
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
    myMap.update('name', (value) => 'rashid');
    myMap.remove('gender');
    print(myMap);
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
    // TODO: implement dispose
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
              } else if (value == '${tagcontroller.text}') {
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
