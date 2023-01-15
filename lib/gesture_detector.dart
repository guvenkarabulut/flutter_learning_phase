import 'package:flutter/material.dart';
import 'dart:math' as math;

class GestureDetectorWidget extends StatelessWidget {
  GestureDetectorWidget({super.key});
  List _renkler = List.generate(
      50000,
      (index) => Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector Kullanımı'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              print('Tıklandı');
            },
            onDoubleTap: () {
              print('Çift Tıklandı');
            },
            onLongPress: () {
              print('Uzun Tıklandı');
            },
            onHorizontalDragCancel: () => print('Yatay Kaydırma iptal edildi'),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: _renkler[index].computeLuminance() > 0.1
                      ? [Colors.transparent, _renkler[index]]
                      : [_renkler[index], Colors.black],
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
            ),
          );
        }),
      ),
    );
  }
}
