// To parse this JSON data, do
//
//     final getImageModal = getImageModalFromJson(jsonString);

import 'dart:convert';

GetImageModal getImageModalFromJson(String str) =>
    GetImageModal.fromJson(json.decode(str));

String getImageModalToJson(GetImageModal data) => json.encode(data.toJson());

class GetImageModal {
  GetImageModal({
    required this.signupId,
    required this.post,
  });

  int signupId;
  List<Post> post;

  factory GetImageModal.fromJson(Map<String, dynamic> json) => GetImageModal(
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