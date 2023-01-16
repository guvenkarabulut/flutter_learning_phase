import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> ogrenciler = List.generate(elemanSayisi,
        (index) => Ogrenci(index, 'Ogrenci $index', 'Ogrenci Soyisim $index'));
    return Scaffold(
        appBar: AppBar(title: const Text('Ogrenci Listesi'), centerTitle: true),
        body: Container(
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue.shade400,
                  child: ListTile(
                    onTap: () => Navigator.pushNamed(context, '/ogrenciDetay',
                        arguments: ogrenciler[index]),
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child:
                            Icon(Icons.person, color: Colors.black, size: 40)),
                    title: Text(ogrenciler[index].isim),
                    subtitle: Text(ogrenciler[index].soyisim),
                    trailing: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 40),
                  ),
                );
              },
              itemCount: ogrenciler.length),
        ));
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
