import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        (Navigator.of(context).canPop())
            ? Navigator.of(context).pop()
            : print('pop yapılabilir değil');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Orange Page'),
        ),
        body: Center(
          child: Text(
            'Orange Page',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
