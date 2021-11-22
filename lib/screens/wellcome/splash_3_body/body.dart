import 'package:flutter/material.dart';

class OtpFrom extends StatefulWidget {
  const OtpFrom({ Key? key }) : super(key: key);

  @override
  _OtpFromState createState() => _OtpFromState();
}

class _OtpFromState extends State<OtpFrom> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            SizedBox(
              width: 40,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: (value){},
              ),
            )
          ],
        ),
      ),
    );
  }
}