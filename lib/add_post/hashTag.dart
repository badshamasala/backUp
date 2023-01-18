import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/all_api_url/api_list.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:http/http.dart' as http;

class HashTag extends StatefulWidget {
  const HashTag({super.key});

  @override
  State<HashTag> createState() => _HashTagState();
}

class _HashTagState extends State<HashTag> {
  var futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = Provider.of<HashtagProvier>(context, listen: false).hashtag();
  }
  // ··

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HashtagProvier>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Explore',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 15.sp)),
          leading: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Iconify(
                Mdi.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
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
                itemCount: provider.tags.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      provider.getTag(index);
                    },
                    title: Text(provider.tags[index].name.toString()),
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

class HashtagProvier extends ChangeNotifier {
  List apiTag = [];

  List<Modal> tags = [];
  hashtag() async {
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
        tags.add(user);
      }

      print("------------------------$tags");
      if (response.statusCode == 200) {
        return tags;
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  getTag(index) {
    apiTag.add(tags[index].name);
    print(tags[index].name);
    print(apiTag);
    notifyListeners();
  }

  removeTag(index) {
    apiTag.removeAt(index);
    print(tags[index].name);
    print(apiTag);
    notifyListeners();
  }
}
