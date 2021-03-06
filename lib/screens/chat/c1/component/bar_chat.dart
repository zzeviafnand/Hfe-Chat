import 'package:flutter/material.dart';

class BarChatPage extends StatelessWidget implements PreferredSizeWidget{
  final Widget child;
  final double height;
  const BarChatPage({
    Key? key,
    required this.child,
    this.height = kToolbarHeight 
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: const Color(0xFF31ADF3),
      alignment: Alignment.center,
      child: child,
    );
  }
}