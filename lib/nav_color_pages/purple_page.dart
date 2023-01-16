import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Purple Page'),
      ),
      body: Center(
        child: Text(
          'Purple Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
