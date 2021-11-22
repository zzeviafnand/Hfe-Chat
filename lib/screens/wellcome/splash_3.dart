import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/setting/component/akun/main_akun.dart';
import 'package:hfe_chat/screens/wellcome/splash_2.dart';
import 'package:hfe_chat/screens/wellcome/splash_3_body/body.dart';

class SplashOtp extends StatelessWidget {
  const SplashOtp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultMargin = 20.0;
    double widthValue = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF31ADF3),
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            width: widthValue,
            height: widthValue,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash/ilustrasi.png"))
              ),
            ),
            const Text("VERIFIKASI KODE OTP",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white
            ),),
            const SizedBox(height: 24,),
            const Text("Masukkan Kode OTP yang  telah dikirim ke",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),),
            const SizedBox(height: 4,),
            const Text("+62 82265567880",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),),
            const SizedBox(height: 4,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(
                  builder: (context) => const SplashRegistrasi()));
              },
              child: const Text("Ganti Nomor",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 18,
                color: Colors.white
              ),),
            ),
            const SizedBox(
              height: 20,
            ),
            const OtpFrom(),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(
                  builder: (context) => const MainAkunScreens()));
              },
              child: Container(
                width: 180,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Center(
                  child: Text("VERIFIKASI",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
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