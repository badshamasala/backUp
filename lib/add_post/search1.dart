/* import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_post/mention_user.dart';
import 'package:provider/provider.dart';

class SearchUser extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final provider = Provider.of<MentionProvider>(context, listen: false);
    return FutureBuilder<List<MentionModal>>(
        future:  provider.mentionCheck(query: query),
        builder: (context, snapshot) {
            var data = snapshot.data;
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        
          return ListView.builder(
              itemCount:data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '${data?[index].signupMasterId}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${data?[index].userId}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                          ])
                    ],
                  ),
                );
              });
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search User'),
    );
  }
}
 */