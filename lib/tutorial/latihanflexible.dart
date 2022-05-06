import 'package:basicapp/eksternal/teks.dart';
import 'package:flutter/material.dart';

class LatihanFlexible extends StatelessWidget {
  const LatihanFlexible({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Flexible Layout'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.green,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.cyan,
                    )),
              ],
            ),
          ),
          Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.red,
              )),
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.cyan,
                child: GestureDetector(
                  // child: Text('Klik Untuk Kembali'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              )),
          Shortcut().getBack(context: context)
        ],
      ),
    );
  }
}
