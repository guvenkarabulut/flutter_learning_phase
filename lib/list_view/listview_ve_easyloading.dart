import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewVeEasyLoadingKullanimi extends StatelessWidget {
  ListViewVeEasyLoadingKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          index + 1, 'Ogrenci ${index + 1}', 'Ogrenci Soyisim${index + 1}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView ve EasyLoading Kullanımı'),
      ),
      body: ListView(
        children: tumOgrenciler
            .map((e) => Card(
                  color: e.id % 2 == 0
                      ? Colors.red.shade100
                      : Colors.blue.shade100,
                  elevation: 5,
                  child: ListTile(
                    onTap: () {
                      EasyLoading.showToast(
                        'Öğrenciye Tıklandı ve index değeri: ${e.id}',
                        toastPosition: EasyLoadingToastPosition.bottom,
                        duration: Duration(seconds: 2),
                        dismissOnTap: true,
                        maskType: EasyLoadingMaskType.black,
                      );
                    },
                    onLongPress: () {
                      _alertDialogIslemleri(context, e);
                    },
                    title: Text(e.isim),
                    subtitle: Text(e.soyisim),
                    leading: CircleAvatar(
                      child: Text(e.id.toString()),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.isim),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text('Dialog içeriği' * 50),
                Text('Dialog içeriği1' * 50),
                Text('Dialog içeriği2' * 50),
              ],
            )),
            actions: [
              TextButton(onPressed: () {}, child: Text('Tamam')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kapat'))
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;
  Ogrenci(this.id, this.isim, this.soyisim);
}
