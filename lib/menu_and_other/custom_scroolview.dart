import 'package:flutter/material.dart';
import 'dart:math';

class CustomScrolView extends StatelessWidget {
  const CustomScrolView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          floating: false,
          pinned: false,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Custom App Bar'),
            centerTitle: true,
            background: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            renkList,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate(_dinamikRenkList, childCount: 6),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
            itemExtent: 50,
            delegate:
                SliverChildBuilderDelegate(_extendRenkList, childCount: 6),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(
            renkList,
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate(_extendRenkList, childCount: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            )),
      ],
    );
  }

  List<Widget> get renkList {
    return [
      Container(
        height: 100,
        color: Colors.green,
        child: Center(
          child: Text(
            'Merhaba',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Flutter',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Container(
        height: 100,
        color: Colors.yellow,
        child: Center(
          child: Text(
            'Dart',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    ];
  }

  Widget? _dinamikRenkList(BuildContext context, int index) {
    return Container(
      height: 50,
      color: _randomRenkUret(),
      child: Center(
        child: Text(
          'Dinamik Renk Listesi $index',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  _randomRenkUret() {
    return Color.fromARGB(
      255,
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
  }

  Widget? _extendRenkList(BuildContext context, int index) {
    return Container(
      height: 50,
      color: _randomRenkUret(),
      child: Center(
        child: Text(
          'Extend Renk Listesi $index',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
