import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:sizer/sizer.dart';

class Getimagelist extends StatefulWidget {
  const Getimagelist({Key? key}) : super(key: key);

  @override
  State<Getimagelist> createState() => _GetimagelistState();
}

class _GetimagelistState extends State<Getimagelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sa'),
      ),
      body: FutureBuilder<GetImageModal?>(
        future: getImageList(),
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
                    print(
                        "Userimages length---------------------------------------------------------${userImages.length}");
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(7.sp),
                      child: Image.network(
                        userImages[index].filePath,
                        height: 10.h,
                        width: 18.w,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.network(
                              "https://www.meu.edu.in/wp-content/uploads/2021/09/placeholder-43.png");
                        },
                      ),
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

// To parse this JSON data, do
//
//     final getImageModal = getImageModalFromJson(jsonString);

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

/* var letmodel;
Future<GetImageModal?> getimageList() async {
  var headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0Nzk1NzY1LCJleHAiOjE2NzU0MDA1NjUsImlhdCI6MTY3NDc5NTc2NX0.itV5BtqQfNyxfa0u6uYjuc86fqVs22Xy1sZBEYGDhNw'
  };
  var request = http.MultipartRequest('GET', Uri.parse(ApiUrl.getImageList));
  request.fields.addAll({'api_key': 'myttube123456', 'signup_id': "2"});

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var jsondata = jsonDecode(await response.stream.bytesToString());
  print("----------------------------------------------------------$jsondata");
  if (response.statusCode == 200) {
    print(response.statusCode);
    /* print("--------------------------------------------------$jsondata['post']"); */
    letmodel = getImageModalFromJson(await response.stream.bytesToString());
    print(letmodel);
    return letmodel;
  } else {
    print("2----------------------------${response.reasonPhrase}");
  }
  /*  return null; */
} */

Future<GetImageModal?> getImageList() async {
  var headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMDk3IiwibmJmIjoxNjc0Nzk1NzY1LCJleHAiOjE2NzU0MDA1NjUsImlhdCI6MTY3NDc5NTc2NX0.itV5BtqQfNyxfa0u6uYjuc86fqVs22Xy1sZBEYGDhNw'
  };
  var request = MultipartRequest(
      'GET', Uri.parse('https://api.myttube.com/api/Post/get-image-post'));
  request.fields.addAll({'api_key': 'myttube123456', 'signup_id': '2'});

  request.headers.addAll(headers);
  Response response = await Response.fromStream(await request.send());

  if (response.statusCode == 200) {
    var jsondata = jsonDecode(response.body);

    GetImageModal imagesModel = GetImageModal.fromJson(jsondata);

    return imagesModel;
  } else {
    print(response.reasonPhrase);
  }
}
