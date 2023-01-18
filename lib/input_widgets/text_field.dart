import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldExample extends StatelessWidget {
  TextFieldExample({super.key});

  String _string = 'Hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 3,
                onChanged: (value) {
                  _string = value;
                  print(_string);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintTextDirection: TextDirection.rtl,
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.account_box),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  _string = value;
                  print(_string);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Surname',
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintTextDirection: TextDirection.rtl,
                  hintText: 'Enter your surname',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.account_box),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  _string = value;
                  print(_string);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    gapPadding: 10,
                  ),
                  labelText: 'Email',
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.all(20),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(color: Colors.grey),
                  icon: Icon(Icons.email),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
