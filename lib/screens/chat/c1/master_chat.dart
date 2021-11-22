import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/chat/c1/component/body_c1.dart';
class MasterChatPage extends StatelessWidget {
  const MasterChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xFF31ADF3),
      ),
      body:const BodyC1Pages(),
    );
  }
}