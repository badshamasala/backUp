import 'package:flutter/material.dart';
import 'package:flutter_application_1/google_login/googleprovider.dart';
import 'package:provider/provider.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                final provider =
                    Provider.of<Googleprovider>(context, listen: false);
                await provider.addPost();
              },
              child: Text("assa"))
        ],
      ),
    );
  }
}
