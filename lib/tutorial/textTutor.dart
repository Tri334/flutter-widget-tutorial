import 'dart:ui';

import 'package:flutter/material.dart';

class TextTutor extends StatelessWidget {
  const TextTutor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.vertical,
            children: [
              Container(
                child: const Text(
                  'Ini adalah Text panjang yang sangat panjang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                height: 100,
                width: 100,
                color: Colors.deepOrange,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              ),
              Container(
                child: const Text(
                  'Ini adalah Text Yang tidak terpotong',
                  textAlign: TextAlign.end,
                ),
                height: 100,
                width: 100,
                color: Colors.amberAccent,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              ),
              Container(
                child: const Text(
                  'Ini adalah Text Yang Justify dengan teks',
                  textAlign: TextAlign.justify,
                ),
                height: 100,
                width: 100,
                color: Colors.lightGreen,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
              ),
            ],
          ),
        ));
  }
}
