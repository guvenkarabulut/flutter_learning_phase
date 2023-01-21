import 'package:flutter/material.dart';

class ObjectKeyExampleWidget extends StatefulWidget {
  const ObjectKeyExampleWidget({super.key});

  @override
  State<ObjectKeyExampleWidget> createState() => _ObjectKeyExampleWidgetState();
}

class _ObjectKeyExampleWidgetState extends State<ObjectKeyExampleWidget> {
  late List<Widget> _myList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myList = [
      myListTile(
        key: ObjectKey('1'),
        color: Colors.red,
        text: '1',
      ),
      myListTile(
        key: ObjectKey('2'),
        color: Colors.green,
        text: '2',
      ),
      myListTile(
        key: ObjectKey('3'),
        color: Colors.blue,
        text: '3',
      ),
      myListTile(
        key: ObjectKey('4'),
        color: Colors.yellow,
        text: '4',
      ),
      myListTile(
        key: ObjectKey('5'),
        color: Colors.purple,
        text: '5',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Object Key Example'),
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

class myListTile extends StatelessWidget {
  const myListTile({
    Key? key,
    required Color color,
    required String text,
  })  : _color = color,
        _text = text,
        super(key: key);

  final Color _color;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: Card(
          color: _color,
          child: ListTile(
            leading: Icon(Icons.print),
            title: Text(_text),
            subtitle: Text(
                'Object Key ile Widgetları yeniden oluşturmak.${key.toString()}}}'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
