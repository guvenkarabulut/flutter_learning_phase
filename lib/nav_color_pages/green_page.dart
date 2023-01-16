import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Green Page'),
      ),
      body: Center(
        child: Text(
          'Green Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
