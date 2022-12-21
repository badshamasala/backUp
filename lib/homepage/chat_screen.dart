// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

class ChatScreen extends StatefulWidget {
  final value;
  const ChatScreen({Key? key, required this.value}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool istyping = false;
  var messagecontroller = TextEditingController();

  /* @override
  void initState() {
    super.initState();
    // ignore: todo
    // TODO: implement initState

    messagecontroller.addListener(() {
      if (messagecontroller.text.isNotEmpty) {
        setState(() {
          istyping = true;
        });
      } else {
        setState(() {
          istyping = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    messagecontroller.dispose();
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        iconTheme: const IconThemeData(color: primaryColorOfApp),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(widget.value),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      '@Nanncyjain23',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: primaryColorOfApp,
                          fontSize: 12),
                    ),
                    Iconify(
                      Bi.patch_check,
                      size: 15,
                      color: Color(0xff038026),
                    ),
                  ],
                ),
                const Text(
                  'Nanncy Jain',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ]),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Iconify(
              Ph.phone_fill,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Iconify(
              Eva.video_fill,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Iconify(
              Zondicons.dots_horizontal_triple,
              size: 20,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: messagecontroller,
          cursorColor: primaryColorOfApp,
          autofocus: true,
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffc4c4c4),
              suffixIconConstraints: const BoxConstraints(),
              suffixIcon: SizedBox(
                width: 115,
                /*  color: Colors.red, */
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffe2e2e2), shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: FaIcon(
                            FontAwesomeIcons.faceSmile,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffe2e2e2), shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Iconify(
                            Ic.round_attach_file,
                            color: primaryColorOfApp,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffe2e2e2), shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Iconify(
                            Mdi.camera,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              prefixIcon: istyping
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xffe2e2e2), shape: BoxShape.circle),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Iconify(
                              Ri.send_plane_fill,
                              color: primaryColorOfApp,
                            )),
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xffe2e2e2), shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.mic,
                              size: 25,
                              color: primaryColorOfApp,
                            ),
                          )),
                    ),
              isDense: true,
              hintText: 'message',
              hintStyle: const TextStyle(
                  color: Color(0xffe2e2e2),
                  fontFamily: 'Poppins',
                  fontSize: 12),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5)),
              border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffc4c4c4), width: 0.5),
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
