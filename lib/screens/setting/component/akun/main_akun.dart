import 'package:flutter/material.dart';
import 'package:hfe_chat/main_screens.dart';
import 'package:hfe_chat/screens/setting/component/akun/jenis_kelamin.dart';

class MainAkunScreens extends StatelessWidget {
  const MainAkunScreens({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF31ADF3),
        title: const Text("Akun"),
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, 
                MaterialPageRoute(
                  builder: (context) => const MainScreens()));
          }, 
          icon: const Icon(Icons.arrow_back),),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/ 3.8,
                      height: MediaQuery.of(context).size.height /5.5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
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
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width/ 9.9,
                      height: MediaQuery.of(context).size.height /10.9,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          color: const Color(0xFF31ADF3),
                        ),
                        child: const Icon(Icons.camera_alt),
                      ))
                  ],
                ),
              ),
              const SizedBox(height: 11,),
              Column(
                children: [
                  const Padding(
                  padding: EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Nama Lengkap", style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF595959)
                        ),)),
                  ),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width /1.1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.close),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 27,),
              Column(
                children: [
                  const Padding(
                  padding: EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Tanggal Lahir", style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF595959)
                        ),)),
                  ),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width /1.1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24,),
              Column(
                children: [
                  const Padding(
                  padding: EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Bio", style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF595959)
                        ),)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width /1.1,
                    child: TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24,),
              const JenisKelaminScreens(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF31ADF3),
                    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                    textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
                child: const Text('SIMPAN'),
              ),
            ],
          ),
      ),
    );
  }
}