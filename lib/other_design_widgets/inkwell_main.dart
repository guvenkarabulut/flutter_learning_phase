import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: sideLength,
      width: sideLength,
      duration: const Duration(seconds: 1),
      curve: Curves.bounceInOut,
      child: Material(
        color: Colors.yellow,
        child: InkWell(
          splashFactory: InkRipple.splashFactory,
          splashColor: Colors.red,
          highlightColor: Colors.blueGrey,
          child: const Center(
            child: Text('Tap me!'),
          ),
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 150 : sideLength = 50;
            });
          },
        ),
      ),
    );
  }
}
