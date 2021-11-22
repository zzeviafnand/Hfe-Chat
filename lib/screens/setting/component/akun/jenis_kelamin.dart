import 'package:flutter/material.dart';

enum SingingCharacter { satu, dua ,tiga}
class JenisKelaminScreens extends StatefulWidget {
  const JenisKelaminScreens({ Key? key }) : super(key: key);

  @override
  State<JenisKelaminScreens> createState() => _JenisKelaminScreensState();
}

class _JenisKelaminScreensState extends State<JenisKelaminScreens> {
  SingingCharacter? _character = SingingCharacter.satu;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text("Jenis Kelamin", style: TextStyle(
                fontSize: 16,
                color: Color(0xFF595959)
              ),)),
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: const Text('Pria'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.satu,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: const Text('Wanita'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.dua,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: const Text('Lainnya'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.tiga,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}