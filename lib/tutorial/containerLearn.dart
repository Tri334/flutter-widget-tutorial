import 'package:flutter/material.dart';

class ContainerLearn extends StatelessWidget {
  const ContainerLearn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  child: Text('Ini adalah teks yang dibungkus container'),
                  margin: EdgeInsets.all(5),
                ),
                margin: EdgeInsets.all(5),
                color: Colors.amber,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              )
            ],
          ),
        ),
        color: Colors.blue.shade700,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
