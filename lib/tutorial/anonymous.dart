import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class Anonim extends StatefulWidget {
  Anonim({Key key}) : super(key: key);

  @override
  State<Anonim> createState() => _AnonimState();
}

class _AnonimState extends State<Anonim> {
  String pesan = 'Ini Adalah Pesan';

  tombol() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                'Anonymous Method digunakan sekali saja',
                textAlign: TextAlign.center,
              ),
              color: Colors.blueAccent.shade200,
              height: 100,
              width: 200,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
            ),
            Text(pesan),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pesan = 'Tombol tertekan';
                });
              },
              child: Text('Tekan Saya'),
            ),
            Shortcut().getBack(teks: 'Back', context: context),
          ],
        ),
      ),
    );
  }
}
