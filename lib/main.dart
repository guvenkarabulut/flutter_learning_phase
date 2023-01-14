import 'package:flutter/material.dart';
//import './myCounterPage.dart';
//import 'image_widget.dart';
//import './dropDownButton.dart';
import './popupMenuKullanımı.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Image Widgets'),
        ),
        body: const PopUpMenuKullanimi(),
      ),
    );
  }
}
