/* import 'package:flutter/material.dart';
import 'package:flutter_application_1/getx/gettimer.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';

class FinalCheck extends StatefulWidget {
  const FinalCheck({Key? key}) : super(key: key);

  @override
  State<FinalCheck> createState() => _FinalCheckState();
}

class _FinalCheckState extends State<FinalCheck> {
  final GetImage getkar = Get.put(GetImage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              newmethod(getkar.image);
            },
            child: Text("post"),
          ),
          ElevatedButton(
            onPressed: () {
              getkar.pickforprofile(ImageSource.gallery);
              print(
                  "--------------------------------------------------------------${getkar.image}");
            },
            child: Text("image picker"),
          ),
        ],
      ),
    );
  }

  newmethod(image) async {
    var headers = {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEiLCJuYmYiOjE2NzM4NDU4MTYsImV4cCI6MTY3NDQ1MDYxNiwiaWF0IjoxNjczODQ1ODE2fQ.tnP8Cj1xDNUKvmXYotw4DAGodOt4cNVZFq1tnCHpNW4'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://api.myttube.com/api/Post/add-post'));
    request.fields.addAll({
      'api_key': 'myttube123456',
      'signup_master_id': '2',
      'post_type': 'image',
      'short_description': 'test',
      'long_description': 'test',
      'has_tag': 'flutter',
      'mention_profile': 'saifs377',
      'url_link': 'https://localhost:44328/api/Post/add-post',
      'url_music': 'https://localhost:44328/api/Post/add-post',
      'location': 'Mumbai',
      'schedule_date': '10-08-2023',
      'partner_id': '1',
      'restricted_mode': 'true',
      'single_file': ''
    });
    for (final file in image) {
    var stream =
    http.ByteStream(DelegatingStream.typed(file.openRead()));
    var length = await file.length();
    print(length);
    var multipartFile = http.MultipartFile("multiple_files",stream, length, filename: basename(file.path));
    request.files.add(multipartFile);
    print(file.path);
    var myRequest = await request.send();
    var response = await http.Response.fromStream(myRequest);
    if(myRequest.statusCode == 200){
      //return jsonDecode(response.body);
      print('upload sucess');
    }else{
      print("Error ${myRequest.statusCode}");
    }

}
   /*  request.files.add(
        await http.MultipartFile.fromPath('multiple_files', "${getkar.image}")); */
    /* request.files.add(await http.MultipartFile.fromPath('multiple_files',
      '/C:/Users/ADMIN/Pictures/Screenshots/Screenshot (2).png'));
  request.files.add(await http.MultipartFile.fromPath('multiple_files',
      '/C:/Users/ADMIN/Pictures/Screenshots/Screenshot (3).png'));
  request.files.add(await http.MultipartFile.fromPath('multiple_files',
      '/C:/Users/ADMIN/Pictures/Screenshots/Screenshot (4).png'));
  request.files.add(await http.MultipartFile.fromPath('multiple_files',
      '/C:/Users/ADMIN/Pictures/Screenshots/Screenshot (5).png')); */
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
 */