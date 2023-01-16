import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          index + 1, 'Ogrenci ${index + 1}', 'Ogrenci Soyisim${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Kullanımı'),
      ),
      body: ListView(
        children: tumOgrenciler
            .map((Ogrenci ogr) => ListTile(
                  title: Text(ogr.isim),
                  subtitle: Text(ogr.soyisim),
                  leading: CircleAvatar(
                    child: Text(ogr.id.toString()),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;
  Ogrenci(this.id, this.isim, this.soyisim);
}
