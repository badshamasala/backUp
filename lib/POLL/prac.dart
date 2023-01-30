import 'package:flutter/material.dart';

class Prac extends StatefulWidget {
  const Prac({Key? key}) : super(key: key);

  @override
  State<Prac> createState() => _PracState();
}

class _PracState extends State<Prac> {
  var map = {
    "signup_id": "2",
    "post": [
      {
        "user_images": [
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3kCrw3N9kzVNr-DwA0j-TGy80yQZrdOTAbQ&usqp=CAU"
          }
        ]
      },
      {
        "user_images": [
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2duR-OGR6uWWlY_T9fP2GzLhAu568edF-tg&usqp=CAU",
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnWWUnWgp0esxPhPnZ_lnNgOLANz3dMX7DVA&usqp=CAU"
          }
        ]
      },
      {
        "user_images": [
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVSw2dOB_y0Pz0MVLZWAQ4gOjcagAvlhUwIA&usqp=CAU",
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaPOiJre6liREgX2ZKwC4uD_RmTGgn-tXE9A&usqp=CAU"
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQfYClcbYAvfJd9Jl4NT2xOj0ZKUBJtM8xcw&usqp=CAU"
          }
        ]
      },
      {
        "user_images": [
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWqe1-vRpdPZjLMlJBtK-tHtUCjfUHDob1SQ&usqp=CAU",
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2yzVqUrteO2dREMJS2pvOLSi5GM090sK4TA&usqp=CAU"
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXHAdECCUJjyj-GOLB9dnHlCmFkstbOgLWA&usqp=CAU"
          },
          {
            "file_path":
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdKvtGvv2JPn2U8D-xBydI1KRhoyiyyQ94UQ&usqp=CAU"
          },
        
        ]
      }
    ]
  };

  List myList = [];
  myMethod() {
    //print(map["post"]);
    dynamic list = map["post"];

    for (int i = 0; i < list.length; i++) {
      if (list != null) {
        myList.addAll(list[i]["user_images"]);
        //print(list[i]["user_images"]);

      }
    }
    print(myList);
    print(myList.length);
  }
  mymethod1(){
      dynamic list = map["post"];

  for (int i = 0; i < list.length; i++) {
    if (list != null) {
      dynamic getlist = list[i]["user_images"];
      //print("-----------------------------------${getlist.length}");
      for (int i = 0; i < getlist.length; i++) {
        myList.add(getlist[i]["file_path"]);
      }
      //print(list[i]["user_images"][i]["file_path"]);

      //print(list[i]["user_images"]);
    }
  }
  print(myList);
    print(myList.length);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mymethod1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 33,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                crossAxisCount: 3),
            itemCount: myList.length,
            itemBuilder: ((context, index) {
              return Image.network(myList[index]);
            })));
  }
}
