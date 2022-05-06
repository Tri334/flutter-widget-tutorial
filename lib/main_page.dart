import 'package:basicapp/tutorial/animated.dart';
import 'package:basicapp/tutorial/anonymous.dart';
import 'package:basicapp/tutorial/containerLearn.dart';
import 'package:basicapp/tutorial/image.dart';
import 'package:basicapp/tutorial/latihanflexible.dart';
import 'package:basicapp/tutorial/latihanstack.dart';
import 'package:basicapp/tutorial/listview.dart';
import 'package:basicapp/tutorial/rowcoloumn.dart';
import 'package:basicapp/implementasi/simple_page.dart';
import 'package:basicapp/eksternal/teks.dart';
import 'package:basicapp/tutorial/stateful.dart';
import 'package:basicapp/tutorial/textTutor.dart';
import 'package:basicapp/tutorial/textstyle.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Rute> rute = [
      Rute(nama_page: 'Text Tutorial', page: const TextTutor()),
      Rute(nama_page: 'Row & Column', page: const RowColumn()),
      Rute(
        nama_page: 'Container',
        page: ContainerLearn(),
      ),
      Rute(nama_page: 'Stateful Widget', page: const Stateful()),
      Rute(nama_page: 'Anonymous Widget', page: Anonim()),
      Rute(
        nama_page: 'Text Style',
        page: const TextStyles(),
      ),
      Rute(
        nama_page: 'List View',
        page: const LatihanListView(),
      ),
      Rute(nama_page: 'Animated Container', page: Animateds()),
      Rute(nama_page: 'Flexible Layout', page: const LatihanFlexible()),
      Rute(nama_page: 'Stack & Align Widget', page: const LatihanStack()),
      Rute(nama_page: 'Image Widget', page: const LatihanImage()),
    ];

    List<Widget> rutes = [];

    setState(() {
      for (var element in rute) {
        rutes.add(Shortcut().navigasi(
            teks: element.nama_page, route: context, go: element.page));
      }
    });

    double widthDevice = MediaQuery.of(context).size.width - 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tutorial',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              child: Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: rutes,
                ),
              ),
              height: 200,
              color: Colors.grey,
              width: widthDevice,
            ),
            const Text(
              'Implementasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Shortcut().navigasi(
                    teks: 'Simple Page', go: const SimplePage(), route: context)
              ],
            )
          ],
        ),
      ),
    );
  }
}
