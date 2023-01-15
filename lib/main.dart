import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//import './myCounterPage.dart';
//import 'image_widget.dart';
//import './dropDownButton.dart';
//import './popupMenuKullanımı.dart';
//import './card_listtile.dart';
//import 'listview_kullanimi.dart';
//import 'listview_builder.dart';
//import 'listview_ve_easyloading.dart';
//import 'listview_problemleri.dart';

//import 'gridView_kullanimi.dart';
//import 'gesture_detector.dart';
import 'custom_scroolview.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
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
      home: CustomScrolView(),
      builder: EasyLoading.init(),
    );
  }
}
