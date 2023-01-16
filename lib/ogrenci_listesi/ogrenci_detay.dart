import 'package:flutter/material.dart';

import './ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(secilenOgrenci.isim),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(secilenOgrenci.isim),
                Text(secilenOgrenci.soyisim),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Geri'))
              ],
            ),
          ),
        ));
  }
}
