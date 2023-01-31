// To parse this JSON data, do
//
//     final getVideoModal = getVideoModalFromJson(jsonString);

import 'dart:convert';

GetVideoModal getVideoModalFromJson(String str) =>
    GetVideoModal.fromJson(json.decode(str));

String getVideoModalToJson(GetVideoModal data) => json.encode(data.toJson());

class GetVideoModal {
  GetVideoModal({
    required this.signupId,
    required this.post,
  });

  int signupId;
  List<Post1> post;

  factory GetVideoModal.fromJson(Map<String, dynamic> json) => GetVideoModal(
        signupId: json["signupId"],
        post: List<Post1>.from(json["post"].map((x) => Post1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signupId": signupId,
        "post": List<dynamic>.from(post.map((x) => x.toJson())),
      };
}

class Post1 {
  Post1({
    required this.postMasterId,
    required this.userImages,
  });

  int postMasterId;
  List<UserImage1> userImages;

  factory Post1.fromJson(Map<String, dynamic> json) => Post1(
        postMasterId: json["post_master_id"],
        userImages: List<UserImage1>.from(
            json["userImages"].map((x) => UserImage1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "post_master_id": postMasterId,
        "userImages": List<dynamic>.from(userImages.map((x) => x.toJson())),
      };
}

class UserImage1 {
  UserImage1({
    required this.filePath,
  });

  String filePath;

  factory UserImage1.fromJson(Map<String, dynamic> json) => UserImage1(
        filePath: json["file_path"],
      );

  Map<String, dynamic> toJson() => {
        "file_path": filePath,
      };
}