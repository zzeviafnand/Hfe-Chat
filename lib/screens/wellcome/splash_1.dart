import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/wellcome/splash_2.dart';

class SplashWellcome extends StatelessWidget {
  const SplashWellcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultMargin = 30.0;
    double widthValue = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF31ADF3),
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text("WELCOME TO",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white
            ),),
            const Text("HFE CHAT",
            style: TextStyle(
              fontSize: 64,
              color: Colors.white
            ),),
            Container(
            width: widthValue,
            height: widthValue,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash/ilustrasi.png"))
              ),
            ),
            const Text("Conncect - Chat - Share - Enjoy",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(
                  builder: (context) => const SplashRegistrasi()));
              },
              child: Container(
                width: 180,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Center(
                  child: Text("MULAI",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF31ADF3)
                  ),),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}