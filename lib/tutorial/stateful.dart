import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({Key key}) : super(key: key);

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int number = 0;
  void tambahAngka() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  tambahAngka();
                },
                child: Text('Tambah Bilangan'),
              ),
              margin: EdgeInsets.all(10),
            ),
            Shortcut().getBack(teks: 'Back', context: context),
          ],
        ),
      ),
    );
  }
}
