import 'package:flutter/material.dart';
import './object_key_example_page.dart';
import './unique_key_example_page.dart';

class KeyExamplePageMain extends StatelessWidget {
  const KeyExamplePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Key Example'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Object Key Example'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const ObjectKeyExampleWidget();
                    }),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Unique Key Example'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const KeyExamplePage();
                    }),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
