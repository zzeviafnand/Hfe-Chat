import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/chat/c1/master_chat.dart';
import 'package:hfe_chat/screens/groub/main_groub.dart';
import 'package:hfe_chat/screens/setting/main_seting.dart';
import 'package:hfe_chat/screens/todo/main_todo.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({ Key? key }) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MasterChatPage(),
    MainGroubPage(),
    MainToDoPage(),
    MainSettings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 10
        ),
        child: DotNavigationBar(
          margin: const EdgeInsets.only(left: 30, right: 30),
          itemPadding: const EdgeInsets.all(15),
          currentIndex: _selectedIndex,
          dotIndicatorColor: const Color(0xFF31ADF3),
          unselectedItemColor: Colors.grey[400],
          onTap: _onItemTapped,
          items: [
              DotNavigationBarItem(
              icon: const Icon(Icons.chat_bubble_outline_outlined),
              selectedColor: const Color(0xFF31ADF3),
              ),
              DotNavigationBarItem(
              icon: const Icon(Icons.group_outlined),
              selectedColor: const Color(0xFF31ADF3),
              ),
              DotNavigationBarItem(
              icon: const Icon(Icons.note_alt_outlined),
              selectedColor: const Color(0xFF31ADF3),
              ),
              DotNavigationBarItem(
              icon: const Icon(Icons.settings_outlined),
              selectedColor: const Color(0xFF31ADF3),
              ),
          ]),
        ),
    );
  }
}
