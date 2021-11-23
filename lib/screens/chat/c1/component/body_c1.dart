import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/chat/c1/component/bar_chat.dart';
import 'package:hfe_chat/screens/chat/master/class_master.dart';

class BodyC1Pages extends StatelessWidget {
  const BodyC1Pages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarChatPage(
        height: 120,
        child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("HFE CHAT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  const Spacer(),
                  const Icon(Icons.phone_callback_outlined,
                  size: 40,
                  color: Colors.white,),
                  const SizedBox(
                    width: 15,
                  ),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/ 9.0,
                      height: MediaQuery.of(context).size.height /15.0,
                      decoration: BoxDecoration(
                        // border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage
                          ('https://images.unsplash.com/photo-1494708001911-679f5d15a946?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60'))
                      ),
                    ),
                  ),
              ],
            )
          ),
      body: ClassMaster(),
    );
  }
}