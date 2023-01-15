import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Layout Problemleri'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Başladı'),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    color: Colors.orange.shade900,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade800,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade700,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade600,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade500,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    height: 100,
                    color: Colors.orange.shade50,
                  ),
                ],
              ),
            ),
            Text('Bitti'),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          width: 4,
          color: Colors.red,
        )),
      ),
    );
  }
}
