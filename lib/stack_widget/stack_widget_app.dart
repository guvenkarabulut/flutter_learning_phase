import 'package:flutter/material.dart';

class StackWidgetApp extends StatelessWidget {
  const StackWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget'),
        ),
        body: Stack(
          fit: StackFit.loose,
          children: [
            redContainer(),
            greenContainer(),
            blueContainer(),
            Positioned(top: 50, right: 0, child: yellowContainer()),
          ],
        ));
  }

  Container yellowContainer() {
    return Container(
      color: Colors.yellow,
      width: 50,
      height: 50,
    );
  }

  Container blueContainer() {
    return Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    );
  }

  Container greenContainer() {
    return Container(
      color: Colors.green,
      width: 150,
      height: 150,
    );
  }

  Container redContainer() {
    return Container(
      color: Colors.red,
      width: 200,
      height: 200,
    );
  }
}
