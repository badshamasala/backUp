import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  getuserdata();
                  /*    apimethod1(); */
                  /*  fetchAlbum(); */
                },
                child: Text('badsha'))
          ],
        ) /* ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('badsha'),
            leading: Text('maasla'),
            trailing: Text('pasta'),
          );
        },
      ), */
        );
  }
}

class Modal {
  final int userId;
  final int id;
  final String title;

  const Modal({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Modal.fromJson(dynamic json) {
    return Modal(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

/* ekmethod() {
  print('ajaja');
} */

/* Future<Modal> fetchAlbum() async {
  var headers = {'Content-Type': 'application/json'};
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return Modal.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
} */

/* apimethod() async {
  /*  var headers = {'Content-Type': 'application/json'}; */
  var request = http.Request(
      'GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  /* request.headers.addAll(headers); */

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(response);
    print('masala');
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
} */

/* apimethod1() async {
  /*  var headers = {'Content-Type': 'application/json'}; */
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  /* request.headers.addAll(headers); */

  /*  http.StreamedResponse response = await request.send(); */

  if (response.statusCode == 200) {
    print(response.toString());
    print('masala');
    print(await response);
  } else {
    print(response.reasonPhrase);
  }
} */
  List<Modal> users = [];
Future getuserdata() async {
  var response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

var jsondata = jsonDecode(response.body);


  for(Map u in jsondata) {
   /*  Modal user = Modal(
      userId: u['userId'],
      id: u['id'],
      title: u['title'],
    ); */
    users.add(Modal.fromJson(u));
  }
  print(users.length);
  return users;
}
