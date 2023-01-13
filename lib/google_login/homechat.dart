import 'package:flutter/material.dart';

class Homechat extends StatefulWidget {

  const Homechat({ Key? key }) : super(key: key);

  @override
  State<Homechat> createState() => _HomechatState();
}

class _HomechatState extends State<Homechat> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Homechat'),),
           body: Container(),
       );
  }
}