import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/all_api_url/api_list.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
   var futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = hashtag();
  }
  // ··

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Googleprovider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
            future: futureAlbum,
            builder: (context, snapshot) {
              print("asa");
              if (snapshot.data == null) {
                return ListView.separated(
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 10,
                    itemBuilder: (context, index) => buildSkeleton(context));
              }
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(users[index].name.toString()),
                  );
                },
              );
            }));
  }

  Widget buildSkeleton(BuildContext context) => Row(
        children: <Widget>[
          SkeletonContainer.circular(
            width: 70,
            height: 70,
          ),
          const SizedBox(width: 16),
          SkeletonContainer.rounded(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 25,
          ),
          const SizedBox(height: 8),
          SkeletonContainer.rounded(
            width: 50,
            height: 13,
          ),
        ],
      );
}

List<Modal> users = [];
/*   Future<List<Modal>?> */ hashtag() async {
  var token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEiLCJuYmYiOjE2NzM4NDU4MTYsImV4cCI6MTY3NDQ1MDYxNiwiaWF0IjoxNjczODQ1ODE2fQ.tnP8Cj1xDNUKvmXYotw4DAGodOt4cNVZFq1tnCHpNW4";
  try {
    final response = await http.post(
      Uri.parse(ApiUrl.hashTag),
      headers: <String, String>{'Authorization': 'Bearer $token'},
      body: {"api_key": "myttube123456", "signupId": "20", "name": "iris"},
    );
    var jsondata = jsonDecode(response.body);
    print(response.body);

    for (var u in jsondata) {
      Modal user = Modal(
        name: u['name'],
      );
      users.add(user);
    }
    print("------------------------$users");
    if (response.statusCode == 200) {
      return users;
    }
  } catch (e) {
    Fluttertoast.showToast(
        msg: e.toString(),
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Modal {
  String? name;

  Modal({this.name});

  Modal.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const SkeletonContainer._({
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    Key? key,
  }) : super(key: key);

  const SkeletonContainer.square({
    required double width,
    required double height,
  }) : this._(width: width, height: height);

  const SkeletonContainer.rounded({
    required double width,
    required double height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(12)),
  }) : this._(width: width, height: height, borderRadius: borderRadius);

  const SkeletonContainer.circular({
    required double width,
    required double height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(80)),
  }) : this._(width: width, height: height, borderRadius: borderRadius);

  @override
  Widget build(BuildContext context) => SkeletonAnimation(
        //gradientColor: Colors.orange,
        //shimmerColor: Colors.red,
        //curve: Curves.easeInQuad,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: borderRadius,
          ),
        ),
      );
}

/* Future<List<Modal>> getuserdata() async {
  var response =
      await http.post(Uri.parse(ApiUrl.hashTag));
  var jsondata = jsonDecode(response.body);
  List<Modal> users = [];
  /*  print(jsondata); */

  for (var u in jsondata) {
    Modal user = Modal(
      name: u['name'],
  
    );
    users.add(user);
  }
  /*  print(users.length); */
  return users;
} */