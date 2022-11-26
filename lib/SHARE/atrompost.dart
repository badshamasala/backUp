// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage/video_player.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';

class Atrompost extends StatefulWidget {
  const Atrompost({Key? key}) : super(key: key);

  @override
  State<Atrompost> createState() => _AtrompostState();
}

class _AtrompostState extends State<Atrompost> {
  /* var atrompost;
  @override
  void initState() {
    super.initState();
    atrompost = atromg8post();
  } */
  List allpost = [];
  List allmedia = [];

  /* Future<List<PostkaModel>> */ atromg8post() async {
    print('---------------------------------------------');
    /*  try { */
    final response = await http.post(
      Uri.parse('https://atromg8.com/api/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "token":
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXRyb21nOC5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2Njk0NDc5MjQsImV4cCI6MTY2OTY2MzkyNCwibmJmIjoxNjY5NDQ3OTI0LCJqdGkiOiJ0WW1SY0RlSm42c2JFemJPIiwic3ViIjoyOTA1LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIiwiaXAiOiIxMDMuMTIyLjIwMS4xMjgifQ.cms5c1OgSzmIjMOYbWRlpri6NrAQ3F-KacXXz5RMNqo",
      }),
    );

    print('Response---------${response.body}');

    var jsondata = jsonDecode(response.body);
    var data = jsondata['posts']['data'];
    print('jsonData---------$jsondata');

    for (int i = 0; i < data.length; i++) {
      setState(() {
        allpost.add(data[i]);
   /*      if (data[i]['media_type'] == 5) {
          allmedia.add(data[i]['media'].toString());
          print('AllMedia----$allmedia');
        } */
      });
      print('AllPost-----------$allpost');
      print(allpost.length);
    }
  }

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
                atromg8post();
              },
              child: const Text('btn')),
          /*   FutureBuilder(
                future: atromg8post(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return */
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: allpost.length,
                itemBuilder: ((context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: allpost[index]['profile_image'] != null
                            ? CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                  allpost[index]['profile_image'],
                                ),
                              )
                            : Image.asset(
                                'assets/logo.png',
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                        title: Text(
                          allpost[index]['name'],
                        ),
                        subtitle: Text(allpost[index]['created_at']),
                        trailing: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert)),
                      ),
                      if(allpost[index]['media_type']==5)...{
                        for(var media in allpost[index]['media'])...{
                             Image.network(media)
                        }
                  
                      },
                      if(allpost[index]['media_type']==2)...{
                   
                    VideoApp(value:allpost[index]['media'])
                        
                  
                      }
                     

                     
                    ],
                  );
                }
                )
                ),
          )
        ]
        )
        );
  }
}
