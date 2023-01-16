import 'package:flutter/material.dart';

class ListViewBuilderKullanimi extends StatelessWidget {
  ListViewBuilderKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          index + 1, 'Ogrenci ${index + 1}', 'Ogrenci Soyisim${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return listViewSepareted();
  }

  Scaffold listViewSepareted() {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Builder Kullanımı'),
        ),
        body: ListView.separated(
          itemBuilder: ((context, index) {
            return Card(
              color:
                  index % 2 == 0 ? Colors.red.shade100 : Colors.blue.shade100,
              child: ListTile(
                onTap: () =>
                    {print('Öğrenciye Tıklandı ve index değeri: $index')},
                title: Text(tumOgrenciler[index].isim),
                subtitle: Text(tumOgrenciler[index].soyisim),
                leading: CircleAvatar(
                  child: Text(tumOgrenciler[index].id.toString()),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => Divider(
            color: Colors.blueGrey.shade200,
            thickness: 2,
          ),
          itemCount: tumOgrenciler.length,
        ));
  }

  Scaffold listViewBuilderKullanimi() {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder Kullanımı'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.red.shade100 : Colors.blue.shade100,
            elevation: 20,
            child: ListTile(
              onTap: () =>
                  {print('Öğrenciye Tıklandı ve index değeri: $index')},
              title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].soyisim),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),
            ),
          );
        }),
        itemCount: tumOgrenciler.length,
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
