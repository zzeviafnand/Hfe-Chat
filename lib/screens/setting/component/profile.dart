import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 28.0, top: 7),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494708001911-679f5d15a946?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Afnand fachzevi")
                      ],
                    ),
                  ),
                Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                      width: 4,),
                    const Text("Online")
                  ],
                ),
              ),
              ],
            ),
          ],
        ),
        const Divider(
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}