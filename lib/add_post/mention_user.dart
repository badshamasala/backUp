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

class MentionUser extends StatefulWidget {
  const MentionUser({super.key});

  @override
  State<MentionUser> createState() => _MentionUserState();
}

class _MentionUserState extends State<MentionUser> {
  var futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = Provider.of<MentionProvider>(context, listen: false).mentionUser();
  }
  // ··

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MentionProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Mention',
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
                itemCount: provider.mentionList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      provider.getTag(index);
                    },
                    title: Text(provider.mentionList[index].userId.toString()),
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


class MentionModal {
  int? signupMasterId;
  String? userId;

  MentionModal({required this.signupMasterId, required this.userId});

  MentionModal.fromJson(Map<String, dynamic> json) {
    signupMasterId = json['signup_master_id'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signup_master_id'] = this.signupMasterId;
    data['user_id'] = this.userId;
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

class MentionProvider extends ChangeNotifier {
  List apiTag = [];

  List<MentionModal> mentionList = [];
  mentionUser() async {
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0MTMyMTIxLCJleHAiOjE2NzQ3MzY5MjEsImlhdCI6MTY3NDEzMjEyMX0.K9B4oMCWio5glv2Wzn_2Gw4ap0liy-qZY4ddjrcMeQQ";
    try {
      final response = await http.get(
        Uri.parse(ApiUrl.mentionUser),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
     /*       */
          },
            
        
       
      );
      
      var jsondata = jsonDecode(response.body);
      print(response.body);

      for (var u in jsondata) {
        MentionModal user = MentionModal(
          signupMasterId: u['signup_master_id'],
          userId: u['user_id'],
        );
        mentionList.add(user);
      }

      print("------------------------$mentionList");
      if (response.statusCode == 200) {
        return mentionList;
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
    apiTag.add(mentionList[index].userId);
    print(mentionList[index].userId);
    print(apiTag);
    notifyListeners();
  }

  removeTag(index) {
    apiTag.removeAt(index);
    print(mentionList[index].userId);
    print(apiTag);
    notifyListeners();
  }
}
