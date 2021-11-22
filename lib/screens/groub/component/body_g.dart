import 'package:flutter/material.dart';
class BodyGPage extends StatelessWidget {
  const BodyGPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height *0.2,
      child: Stack(
        children: [
          Container(
            height: size.height *0.2  -25,
            decoration: const BoxDecoration(
              color: Color(0xFF31ADF3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
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
                  const Icon(Icons.search_outlined,
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
            ),
          ),
        ],
      ),
    );
  }
}