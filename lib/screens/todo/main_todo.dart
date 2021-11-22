import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/todo/component/body_t.dart';

class MainToDoPage extends StatelessWidget {
  const MainToDoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyTPage(),
    );
  }
}