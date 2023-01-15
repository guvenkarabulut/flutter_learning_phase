import 'package:flutter/material.dart';
import 'dart:math' as math;

class GridViewKullanimi extends StatelessWidget {
  GridViewKullanimi({super.key});
  List renkler = List.generate(
      50000,
      (index) => Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Kullanımı'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                tileMode: TileMode.mirror,
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: renkler[index].computeLuminance() > 0.1
                    ? [Colors.transparent, renkler[index]]
                    : [renkler[index], Colors.black],
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            child: Text(
              ' ',
              textAlign: TextAlign.center,
            ),
          );
        }),
      ),
    );
  }

  GridView gridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 5,
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children: renkler
          .map((e) => Container(
                alignment: Alignment.center,
                color: e,
                child: Text(
                  ' ',
                  textAlign: TextAlign.center,
                ),
              ))
          .toList(),
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade900,
          child: Text(
            '1',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade800,
          child: Text(
            '2',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade700,
          child: Text(
            '3',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade600,
          child: Text(
            '4',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade500,
          child: Text(
            '5',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade400,
          child: Text(
            '6',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            '7',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade200,
          child: Text(
            '8',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade100,
          child: Text(
            '9',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade50,
          child: Text(
            '10',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade900,
          child: Text(
            '11',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade800,
          child: Text(
            '12',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade700,
          child: Text(
            '13',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade600,
          child: Text(
            '14',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade500,
          child: Text(
            '15',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade400,
          child: Text(
            '16',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade300,
          child: Text(
            '17',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade200,
          child: Text(
            '18',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade100,
          child: Text(
            '19',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber.shade50,
          child: Text(
            '20',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade900,
          child: Text(
            '21',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade800,
          child: Text(
            '22',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade700,
          child: Text(
            '23',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade600,
          child: Text(
            '24',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade500,
          child: Text(
            '25',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade400,
          child: Text(
            '26',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade300,
          child: Text(
            '27',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade200,
          child: Text(
            '28',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade100,
          child: Text(
            '29',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue.shade50,
          child: Text(
            '30',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red.shade900,
          child: Text(
            '31',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red.shade800,
          child: Text(
            '32',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red.shade700,
          child: Text(
            '33',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red.shade600,
          child: Text(
            '34',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
