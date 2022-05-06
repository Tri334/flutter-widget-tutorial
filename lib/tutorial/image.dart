import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class LatihanImage extends StatelessWidget {
  const LatihanImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Image Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5),
                height: 600,
                width: 600,
                child: Image.asset(
                  'assets/image/kucing.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Align(
            child: Shortcut().getBack(context: context),
          ),
        ],
      ),
    );
  }
}
