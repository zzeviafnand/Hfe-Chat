import 'package:flutter/material.dart';
import 'package:hfe_chat/screens/setting/component/akun/main_akun.dart';

class ListProfile extends StatelessWidget {
  const ListProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(
              builder: (context) => const MainAkunScreens()));
          },
          child: SizedBox(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20
                  ),
                  child: SizedBox(
                  height: 35,
                  child: Row(
                    children: [
                        Container(
                          height: 40,
                          width: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFF31ADF3).withAlpha(55),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(Icons.person_outline)),
                        const SizedBox(width: 10,),
                        const Text("Akun"),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              child: SizedBox(
              height: 35,
              child: Row(
                children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF31ADF3).withAlpha(55),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.chat_outlined)),
                    const SizedBox(width: 10,),
                    const Text("Chat"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              child: SizedBox(
              height: 35,
              child: Row(
                children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF31ADF3).withAlpha(55),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.notifications_outlined)),
                    const SizedBox(width: 10,),
                    const Text("Notifikasi"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              child: SizedBox(
              height: 35,
              child: Row(
                children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF31ADF3).withAlpha(55),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.color_lens_outlined)),
                    const SizedBox(width: 10,),
                    const Text("Tema"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20
              ),
              child: SizedBox(
              height: 35,
              child: Row(
                children: [
                    Container(
                      height: 40,
                      width: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF31ADF3).withAlpha(55),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(Icons.info_outline)),
                    const SizedBox(width: 10,),
                    const Text("Tentang"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ],
    );
  }
}