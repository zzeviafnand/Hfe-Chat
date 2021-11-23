import 'package:flutter/material.dart';

class ToDoBar extends StatelessWidget implements PreferredSizeWidget{
  final Widget child;
  final double height;
  const ToDoBar({ 
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
      decoration: const BoxDecoration(
        color: Color(0xFF31ADF3),
        borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}