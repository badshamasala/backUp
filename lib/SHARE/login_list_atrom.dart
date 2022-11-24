import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/SHARE/tag_friend.dart';
import 'package:http/http.dart' as http;

class LoginListAtrom extends StatefulWidget {
  const LoginListAtrom({Key? key}) : super(key: key);

  @override
  State<LoginListAtrom> createState() => _LoginListAtromState();
}

class _LoginListAtromState extends State<LoginListAtrom> {
  var ekvariable;
  @override
  void initState() {
    super.initState();
    ekvariable = loginListUser();
  }

  Future<List<LoginListModal>> loginListUser() async {
    print('---------------------------------------------');
    try {
      final response = await http.post(
        Uri.parse('https://atromg8.com/api/AllLoginList'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "token":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjkxNzkzOTUsImV4cCI6MTY2OTM5NTM5NSwibmJmIjoxNjY5MTc5Mzk1LCJqdGkiOiJyaXB0VmpPS283QjZQTHdtIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xNDIifQ.SknxKNX2k6YI1xnmx9FdnzIKJAOQUPVL5WxsnSCDNOI",
        }),
      );
      print('Response-------$response');
      print('Response.body----${response.body}');
      var jsondata = jsonDecode(response.body);
      print('JsonData--------$jsondata');

      List<LoginListModal> loginlist = [];
      if (response.statusCode == 200) {
        for (var json in jsondata) {
          LoginListModal friend = LoginListModal(
            id: json["id"],
            payload: json["payload"],
            currentSessionId: json["current_session_id"],
            lastActivity: json["last_activity"],
            userId: json["user_id"],
            ipAddress: json["ip_address"],
            userAgent: json["user_agent"],
            browser: json["browser"],
            osName: json["os_name"],
            deviceType: json["device_type"],
            createdAt: DateTime.parse(json["created_at"]),
            updatedAt: json["updated_at"],
            deletedAt: json["deleted_at"],
          );
          loginlist.add(friend);
          print('LoginList-------$loginlist');
        }
      }
      return loginlist;
    } on Exception catch (_) {
      throw Exception("Error on server");

      ;
    }
  }

  var newmethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(''),
      ),
      body: Column(
        children: [
         

          /* ElevatedButton(
              onPressed: () {
                newmethod = loginListUser();
              },
              child: Text('Get LoginList')), */
          FutureBuilder<List<LoginListModal>>(
              future: ekvariable,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.data == null) {
                  return Container(
                    color: Colors.red,
                    height: 50,
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: Text(snapshot.data![index].deviceType),
                            title: Text(snapshot.data![index].browser),
                            subtitle: Text(snapshot.data![index].osName),
                            trailing: Text(
                                snapshot.data![index].createdAt.toString()),
                          );
                        })),
                  );
                }
              })
        ],
      ),
    );
  }
}

// To parse this JSON data, do
//
//     final loginListModal = loginListModalFromJson(jsonString);

List<LoginListModal> loginListModalFromJson(String str) =>
    List<LoginListModal>.from(
        json.decode(str).map((x) => LoginListModal.fromJson(x)));

String loginListModalToJson(List<LoginListModal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginListModal {
  LoginListModal({
    required this.id,
    required this.payload,
    required this.currentSessionId,
    required this.lastActivity,
    required this.userId,
    required this.ipAddress,
    required this.userAgent,
    required this.browser,
    required this.osName,
    required this.deviceType,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String payload;
  String currentSessionId;
  int lastActivity;
  int userId;
  String ipAddress;
  int userAgent;
  String browser;
  String osName;
  String deviceType;
  DateTime createdAt;
  String updatedAt;
  dynamic deletedAt;

  factory LoginListModal.fromJson(Map<String, dynamic> json) => LoginListModal(
        id: json["id"],
        payload: json["payload"],
        currentSessionId: json["current_session_id"],
        lastActivity: json["last_activity"],
        userId: json["user_id"],
        ipAddress: json["ip_address"],
        userAgent: json["user_agent"],
        browser: json["browser"],
        osName: json["os_name"],
        deviceType: json["device_type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "payload": payload,
        "current_session_id": currentSessionId,
        "last_activity": lastActivity,
        "user_id": userId,
        "ip_address": ipAddress,
        "user_agent": userAgent,
        "browser": browserValues.reverse![browser],
        "os_name": osNameValues.reverse![osName],
        "device_type": deviceTypeValues.reverse![deviceType],
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };
}

enum Browser { SAFARI_BROWSER, CHROME }

final browserValues = EnumValues(
    {"Chrome": Browser.CHROME, "Safari Browser": Browser.SAFARI_BROWSER});

enum DeviceType { MOBILE, COMPUTER }

final deviceTypeValues =
    EnumValues({"Computer": DeviceType.COMPUTER, "Mobile": DeviceType.MOBILE});

enum OsName { ANDROID, WINDOWS_10, MAC_OS_X }

final osNameValues = EnumValues({
  "Android": OsName.ANDROID,
  "Mac OS X": OsName.MAC_OS_X,
  "Windows 10": OsName.WINDOWS_10
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
