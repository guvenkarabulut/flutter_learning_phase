import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sorunluContainer,
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return <Widget>[
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.green,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.yellow,
        ),
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return <Widget>[
      Flexible(
        child: Container(
          color: Colors.red,
        ),
      ),
      Flexible(
        child: Container(
          color: Colors.green,
        ),
      )
    ];
  }
}
