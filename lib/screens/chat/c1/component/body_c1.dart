import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/chat/c1/component/bar_chat.dart';
import 'package:hfe_chat/screens/chat/master/class_master.dart';

class BodyC1Pages extends StatelessWidget {
  const BodyC1Pages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        BarChatPage(size: size),
        const ClassMaster()
      ],
    );
  }
}