import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class GetVideoList extends StatefulWidget {
  const GetVideoList({Key? key}) : super(key: key);

  @override
  State<GetVideoList> createState() => _GetVideoListState();
}

class _GetVideoListState extends State<GetVideoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder<GetVideoModal?>(
        future: getVideoList(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(child: const CircularProgressIndicator());
          } else {
            List<Post> posts = snapshot.data!.post;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                crossAxisCount: 3,
              ),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, i) {
                print(
                    "Post length---------------------------------------------------------${posts.length}");
                Post? post = posts[i];
                List<UserImage> userImages = post.userImages;

                if (userImages.isEmpty) {
                  return Image.network(
                      "https://www.meu.edu.in/wp-content/uploads/2021/09/placeholder-43.png");
                }

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      /*   mainAxisExtent: 10, */
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      crossAxisCount: 1),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: userImages.length,
                  itemBuilder: (context, index) {
                    controller = VideoPlayerController.network(
                        userImages[index].filePath);
                      controller!.initialize();
                    controller!.setLooping(false);
     controller!.play();
                    print(
                        "Userimages length---------------------------------------------------------${userImages.length}");
                    return Container(
                      color: Colors.red,
                      width: 18.w,
                      height: 15.h,
                      child: AspectRatio(
                          aspectRatio: controller!.value.aspectRatio,
                          child: VideoPlayer(controller!)),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}

VideoPlayerController? controller;
Future<GetVideoModal?> getVideoList() async {
  var headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0Nzk1NzY1LCJleHAiOjE2NzU0MDA1NjUsImlhdCI6MTY3NDc5NTc2NX0.itV5BtqQfNyxfa0u6uYjuc86fqVs22Xy1sZBEYGDhNw'
  };
  var request = MultipartRequest(
      'GET', Uri.parse('https://api.myttube.com/api/Post/get-video-post'));
  request.fields.addAll({'api_key': 'myttube123456', 'signup_id': '2'});

  request.headers.addAll(headers);
  Response response = await Response.fromStream(await request.send());

  if (response.statusCode == 200) {
    var jsondata = jsonDecode(response.body);

    GetVideoModal videosModel = GetVideoModal.fromJson(jsondata);

    return videosModel;
  } else {
    print(response.reasonPhrase);
  }
}

// To parse this JSON data, do
//
//     final getVideoModal = getVideoModalFromJson(jsonString);

GetVideoModal getVideoModalFromJson(String str) =>
    GetVideoModal.fromJson(json.decode(str));

String getVideoModalToJson(GetVideoModal data) => json.encode(data.toJson());

class GetVideoModal {
  GetVideoModal({
    required this.signupId,
    required this.post,
  });

  int signupId;
  List<Post> post;

  factory GetVideoModal.fromJson(Map<String, dynamic> json) => GetVideoModal(
        signupId: json["signupId"],
        post: List<Post>.from(json["post"].map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signupId": signupId,
        "post": List<dynamic>.from(post.map((x) => x.toJson())),
      };
}

class Post {
  Post({
    required this.postMasterId,
    required this.userImages,
  });

  int postMasterId;
  List<UserImage> userImages;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        postMasterId: json["post_master_id"],
        userImages: List<UserImage>.from(
            json["userImages"].map((x) => UserImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "post_master_id": postMasterId,
        "userImages": List<dynamic>.from(userImages.map((x) => x.toJson())),
      };
}

class UserImage {
  UserImage({
    required this.filePath,
  });

  String filePath;

  factory UserImage.fromJson(Map<String, dynamic> json) => UserImage(
        filePath: json["file_path"],
      );

  Map<String, dynamic> toJson() => {
        "file_path": filePath,
      };
}
