// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class TagFriend extends StatefulWidget {
  const TagFriend({Key? key}) : super(key: key);

  @override
  State<TagFriend> createState() => _TagFriendState();
}

class _TagFriendState extends State<TagFriend> {
  var tagfriend;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tagfriend = tagfriends();
  }

  Future<List<TagModel>> tagfriends() async {
    print('---------------------------------------------');
    try {
      final response = await http.post(
        Uri.parse('https://atromg8.com/api/tagfriends'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "token":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjkxNzkzOTUsImV4cCI6MTY2OTM5NTM5NSwibmJmIjoxNjY5MTc5Mzk1LCJqdGkiOiJyaXB0VmpPS283QjZQTHdtIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xNDIifQ.SknxKNX2k6YI1xnmx9FdnzIKJAOQUPVL5WxsnSCDNOI",
        }),
      );
      var jsondata = jsonDecode(response.body);

      /*  print('Response---------${response.body}');
      print('jsonData---------${jsondata}');

      var firstname = jsondata[0]["firstname"];
      print('firstname--- $firstname');
      var id = jsondata[0]["id"];
      print('id------$id'); */
      List<TagModel> taglist = [];
      if (response.statusCode == 200) {
        for (var json in jsondata) {
          TagModel friend = TagModel(
            id: json["id"],
            firstname: json["firstname"],
            lastname: json["lastname"],
            profileImage: json["profile_image"],
            coverImage: json["cover_image"],
            username: json["username"],
            aboutme: json["aboutme"],
            roleId: json["role_id"],
          );
          taglist.add(friend);
        }
      }
      return taglist;
    } on Exception catch (_) {
      throw Exception("Error on server");
      /* Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0) */
      ;
    }
  }

  var tagcontroller = TextEditingController();
  String textfieldkivalue = "";
  /*  final GetTagFriends getkar = Get.put(GetTagFriends()); */
  @override
  Widget build(BuildContext context) {
/*     final provider = Provider.of<TagFriendProvider>(context, listen: false); */
    return Scaffold(
      appBar: AppBar(
        title: const Text('dzczxdxcz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('btn')),
            Consumer<TagFriendProvider>(builder: (context, value, child) {
              return TextFormField(
                controller: tagcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
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
                                  content: FutureBuilder<List<TagModel>>(
                                      future: tagfriends(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        } else {
                                          return ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: snapshot.data!.length,
                                              itemBuilder: ((context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      textfieldkivalue =
                                                          snapshot.data![index]
                                                              .firstname;
                                                      tagcontroller.text ='@$textfieldkivalue'
                                                          ;
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      snapshot
                                                              .data![index]
                                                              .profileImage
                                                              .isEmpty
                                                          ? Image.asset(
                                                              'assets/logo.png',
                                                              color:
                                                                  primaryColorOfApp,
                                                            )
                                                          : Image.network(
                                                              snapshot
                                                                  .data![index]
                                                                  .profileImage,
                                                              height: 40,
                                                              width: 40,
                                                              fit: BoxFit.cover,
                                                            ),
                                                      Text(snapshot.data![index]
                                                          .firstname)
                                                    ],
                                                  ),
                                                );
                                              }));
                                        }
                                      })
                                      );
                          /*    }); */
                        });
                  }
                },
              );
            }),
            FutureBuilder<List<TagModel>>(
                future: tagfriend,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.data == null) {
                    return Container(
                      color: Colors.red,
                      height: 50,
                    );
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              snapshot.data![index].profileImage.isEmpty
                                  ? Image.asset(
                                      'assets/logo.png',
                                      color: primaryColorOfApp,
                                    )
                                  : Image.network(
                                      snapshot.data![index].profileImage,
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.cover,
                                    ),
                              Text(snapshot.data![index].firstname)
                            ],
                          );
                        }));
                  }
                })
          ],
        ),
      ),
    );
  }
}

class TagFriendProvider extends ChangeNotifier {
  var taglist = [];
  dynamic get _taglist => taglist;
  Future get tagfriends async {
    print('---------------------------------------------');
    try {
      final response = await http.post(
        Uri.parse('https://atromg8.com/api/tagfriends'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "token":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjkxNzkzOTUsImV4cCI6MTY2OTM5NTM5NSwibmJmIjoxNjY5MTc5Mzk1LCJqdGkiOiJyaXB0VmpPS283QjZQTHdtIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xNDIifQ.SknxKNX2k6YI1xnmx9FdnzIKJAOQUPVL5WxsnSCDNOI",
        }),
      );
      var jsondata = jsonDecode(response.body);

      print('Response---------${response.body}');
      print('jsonData---------${jsondata}');

      var firstname = jsondata[0]["firstname"];
      print('firstname--- $firstname');
      var id = jsondata[0]["id"];
      print('id------$id');

      if (response.statusCode == 200) {
        for (int i = 0; i < jsondata.length; i++) {
          var taglist = [];
          taglist.add(jsondata[i]);

          print("taglist----$taglist");
        }
      } else {
        /*       Fluttertoast.showToast(
            msg: "Wrong OTP",
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0); */
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    notifyListeners();
  }
}

class GetTagFriends extends GetxController {
  var taglist = [].obs;
  Future tagfriends() async {
    print('---------------------------------------------');
    try {
      final response = await http.post(
        Uri.parse('https://atromg8.com/api/tagfriends'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "token":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjkxNzkzOTUsImV4cCI6MTY2OTM5NTM5NSwibmJmIjoxNjY5MTc5Mzk1LCJqdGkiOiJyaXB0VmpPS283QjZQTHdtIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xNDIifQ.SknxKNX2k6YI1xnmx9FdnzIKJAOQUPVL5WxsnSCDNOI",
        }),
      );
      var jsondata = jsonDecode(response.body);

      print('Response---------${response.body}');
      print('jsonData---------${jsondata}');

      var firstname = jsondata[0]["firstname"];
      print('firstname--- $firstname');
      var id = jsondata[0]["id"];
      print('id------$id');

      if (response.statusCode == 200) {
        for (int i = 0; i < jsondata.length; i++) {
          var taglist = [];
          taglist.add(jsondata[i]);

          print("taglist----$taglist");
        }
      } else {
        /*       Fluttertoast.showToast(
            msg: "Wrong OTP",
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0); */
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    update();
  }

  Future AtromkiSaripost() async {
    try {
      final response = await http.post(
        Uri.parse('https://atromg8.com/api/posts'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "token":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjkxNzkzOTUsImV4cCI6MTY2OTM5NTM5NSwibmJmIjoxNjY5MTc5Mzk1LCJqdGkiOiJyaXB0VmpPS283QjZQTHdtIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xNDIifQ.SknxKNX2k6YI1xnmx9FdnzIKJAOQUPVL5WxsnSCDNOI",
        }),
      );
      var jsondata = jsonDecode(response.body);
      print(response.body);

      var firstname = jsondata[0]["firstname"];
      print('firstname--- $firstname');
      var id = jsondata[0]["id"];
      print('id------$id');

      if (response.statusCode == 200) {
        for (int i = 0; i < jsondata.length; i++) {
          taglist.add(jsondata[i]);
          print('jsondta------$jsondata');
        }
        /*  return taglist; */
      } else {
        /*       Fluttertoast.showToast(
            msg: "Wrong OTP",
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0); */
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    update();
  }
}

// To parse this JSON data, do
//
//     final tagModel = tagModelFromJson(jsonString);

List<TagModel> tagModelFromJson(String str) =>
    List<TagModel>.from(json.decode(str).map((x) => TagModel.fromJson(x)));

String tagModelToJson(List<TagModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TagModel {
  TagModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.profileImage,
    required this.coverImage,
    required this.username,
    required this.aboutme,
    required this.roleId,
  });

  int id;
  String firstname;
  String lastname;
  String profileImage;
  String coverImage;
  String username;
  String aboutme;
  int roleId;

  factory TagModel.fromJson(Map<String, dynamic> json) => TagModel(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        profileImage: json["profile_image"],
        coverImage: json["cover_image"],
        username: json["username"],
        aboutme: json["aboutme"],
        roleId: json["role_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "profile_image": profileImage,
        "cover_image": coverImage,
        "username": username,
        "aboutme": aboutme,
        "role_id": roleId,
      };
}
