import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/search1.dart';
import 'package:flutter_application_1/all_api_url/api_list.dart';
import 'package:flutter_application_1/globals/colors.dart';
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
    futureAlbum =
        Provider.of<MentionProvider>(context, listen: false).mentionCheck();

    Provider.of<MentionProvider>(context, listen: false).users =
        Provider.of<MentionProvider>(context, listen: false).mentionList;
  }

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
          actions: [
            IconButton(
                onPressed: () {
                  /*     showSearch(context: context, delegate: SearchUser()); */
                },
                icon: Icon(
                  Icons.search,
                  color: customTextColor,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Consumer<MentionProvider>(builder: (context, value, child) {
                return TextField(
                  onChanged: searchBook,
                  decoration: InputDecoration(
                      hintText: "Search User",
                      hintStyle: TextStyle(
                          color: customTextColor,
                          fontFamily: "Poppins",
                          fontSize: 10.sp),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      isDense: true,
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                );
              }),
              Expanded(
                  child: FutureBuilder(
                      future: futureAlbum,
                      builder: (context, snapshot) {
                        print("asa");
                        if (snapshot.data == null) {
                          return ListView.separated(
                              separatorBuilder: (context, index) => Divider(),
                              itemCount: 10,
                              itemBuilder: (context, index) =>
                                  buildSkeleton(context));
                        }
                        return ListView.builder(
                          itemCount: provider.users.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                provider.getMentionUser(index);
                              },
                              title:
                                  Text(provider.users[index].userId.toString()),
                            );
                          },
                        );
                      })),
            ],
          ),
        ));
  }

  searchBook(String query) async {
    final provider = Provider.of<MentionProvider>(context, listen: false);
    final users = provider.mentionList.where((e) {
      final userId = e.userId!.toLowerCase();

      final searchLower = query.toLowerCase();

      return userId.contains(searchLower);
    }).toList();
    setState(() {
      provider.query = query;
      provider.users = users;
    });
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
  List mentionTag = [];

  List<MentionModal> mentionList = [];
  Future<List<MentionModal>> mentionCheck(/* String query */) async {
    try {
      var headers = {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0MTMwMjkyLCJleHAiOjE2NzQ3MzUwOTIsImlhdCI6MTY3NDEzMDI5Mn0.Y2HO5gmggkawC_-SVPbFyzUMF9FZmvCi8VMW2TFWxA8'
      };
      var request = http.MultipartRequest('GET',
          Uri.parse(ApiUrl.mentionUser));
      request.fields.addAll({'api_key': 'myttube123456'});

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      var jsondata = jsonDecode(await response.stream.bytesToString());

      if (response.statusCode == 200) {
        for (var u in jsondata) {
          MentionModal user = MentionModal(
            signupMasterId: u['signup_master_id'],
            userId: u['user_id'],
          );
          mentionList.add(user);
        }

        /*        print(
          "1----------------------------${await response.stream.bytesToString()}"); */ //JAB HUM MULTIREQUEST USE KRTE HAI TAB response.body jo hai hamara wo response.stream.bytesToString ban jata hai

      } else {
        print("2----------------------------${response.reasonPhrase}");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return mentionList;
  }

 late  List<MentionModal> users = [];
  String query = '';

  getMentionUser(index) {
    mentionTag.add(users[index].userId);
    print(mentionList[index].userId);
    print(mentionTag);
    notifyListeners();
  }

  removeMentionUser(index) {
    mentionTag.removeAt(index);
    print(mentionList[index].userId);
    print(mentionTag);
    notifyListeners();
  }
}
