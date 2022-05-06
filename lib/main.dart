import 'package:basicapp/main_page.dart';
import 'package:basicapp/tutorial/textTutor.dart';
import 'package:flutter/material.dart';

// Tutorial chapter 1 sebelum null safety

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
