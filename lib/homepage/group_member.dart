import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroupMember extends StatefulWidget {
  const GroupMember({Key? key}) : super(key: key);

  @override
  State<GroupMember> createState() => _GroupMemberState();
}

class _GroupMemberState extends State<GroupMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12, right: 15),
            child: TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  /*     padding: EdgeInsets.zero, */
                  /*       minimumSize: const Size(50.0, 20), */
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  backgroundColor: const Color(0xff0087FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: const UploadImage().radius())),
              child:  Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/groupforchat.svg',
                                            height: 14,
                                            width: 14,
                                          ),
                                          const Text(
                                            'Public Group',
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ],
                                      ),
            ),
          ),
        ],
        titleSpacing: 0,
        elevation: 0,
        leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: primaryColorOfApp,
            )),
        backgroundColor: Colors.transparent,
        title: const Text(
          '@Group.Username',
          style: TextStyle(
              color: primaryColorOfApp, fontFamily: 'Poppins', fontSize: 12),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [

            ],
          );
        },
      ),
    );
  }
}
