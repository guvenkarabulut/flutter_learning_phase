import 'dart:math';
import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});

  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _rastgeleSayi = Random().nextInt(100);
        print('on wil pop ile gelen $_rastgeleSayi');
        Navigator.of(context).pop(_rastgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Red Page'),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  onPressed: () {
                    _rastgeleSayi = Random().nextInt(100);
                    print(_rastgeleSayi);
                    Navigator.of(context).pop(_rastgeleSayi);
                  },
                  child: Icon(Icons.arrow_back)),
            ],
          ),
        ),
      ),
    );
  }
}
