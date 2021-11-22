import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/setting/component/profile.dart';
import 'package:hfe_chat/screens/setting/list_profile.dart';
class MainSettings extends StatefulWidget {
  const MainSettings({ Key? key }) : super(key: key);

  @override
  _MainSettingsState createState() => _MainSettingsState();
}

class _MainSettingsState extends State<MainSettings> {
  final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF31ADF3),
        centerTitle: true,
        title: const Text("PENGATURAN"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const Profile(),
          const ListProfile(),
          Padding(
          padding: const EdgeInsets.only(top: 60),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => Container()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height /15.0,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF31ADF3)
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text('KELUAR',style: TextStyle(
                  color: Color(0xFF31ADF3)
                ),)),
            ),
            ),
          ),
        ],
      )
    );
  }
}