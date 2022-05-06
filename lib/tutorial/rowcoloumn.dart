import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baris (Row) dan Kolom (Column)'),
      ),
      body: Center(
        child: Wrap(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ini Adalah Contoh Penggunaan Row'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shortcut().teksTutor(
                          teks: TextDummy().teks1, color: Colors.amberAccent),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks2, color: Colors.amberAccent),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks3, color: Colors.amberAccent)
                    ],
                  ),
                  Text('Ini Adalah Contoh Penggunaan Kolom'),
                  Column(
                    children: [
                      Shortcut().teksTutor(
                          teks: TextDummy().teks2, color: Colors.cyan),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks3, color: Colors.cyan),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks1, color: Colors.cyan),
                    ],
                  )
                ],
              ),
              color: Colors.white12,
            ),
            Center(
              child: Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
