import 'package:flutter/material.dart';

class KeyExamplePage extends StatefulWidget {
  const KeyExamplePage({super.key});

  @override
  State<KeyExamplePage> createState() => _KeyExamplePageState();
}

class _KeyExamplePageState extends State<KeyExamplePage> {
  late List<Widget> _myList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myList = [
      myBox(
        key: UniqueKey(),
        color: Colors.red,
      ),
      myBox(
        key: UniqueKey(),
        color: Colors.green,
      ),
      myBox(
        key: UniqueKey(),
        color: Colors.blue,
      ),
      myBox(
        key: UniqueKey(),
        color: Colors.yellow,
      ),
      myBox(
        key: UniqueKey(),
        color: Colors.purple,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Example'),
        centerTitle: true,
      ),
      body: Row(
        children: _myList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _myList.shuffle();
          });
        },
        child: const Icon(Icons.print),
      ),
    );
  }
}

class myBox extends StatelessWidget {
  const myBox({
    Key? key,
    required Color color,
  })  : _color = color,
        super(key: key);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: _color,
          width: 100,
          height: 100,
          child: Text(
            key.toString(),
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
