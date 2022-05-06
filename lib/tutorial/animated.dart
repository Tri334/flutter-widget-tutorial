import 'dart:math';

import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class Animateds extends StatefulWidget {
  Animateds({Key key}) : super(key: key);

  @override
  State<Animateds> createState() => _AnimatedsState();
}

class _AnimatedsState extends State<Animateds> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shortcut().info(teks: 'Animated Container '),
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                duration: Duration(seconds: 1),
                width: 80.0 + random.nextInt(101),
                height: 80.0 + random.nextInt(101),
              ),
            ),
            Shortcut().getBack(context: context)
          ],
        ),
      ),
    );
  }
}
