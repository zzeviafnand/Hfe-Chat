import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/setting/component/akun/main_akun.dart';
class SplashRegistrasi extends StatelessWidget {
  const SplashRegistrasi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultMargin = 30.0;
    double widthValue = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF31ADF3),
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 35,),
            const Text("HFE CHAT",
            style: TextStyle(
              fontSize: 64,
              color: Colors.white
            ),),
            Container(
            width: widthValue,
            height: MediaQuery.of(context).size.height /2.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash/ilustrasi.png"))
              ),
            ),
            const Text("Masukkan Nomor Telepon\nAnda Untuk Melanjutkan",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),),
            Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)
                    ),
                    prefix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('+62',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                ),
              )
            ],
            ),
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
                  child: Text("LANJUT",
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