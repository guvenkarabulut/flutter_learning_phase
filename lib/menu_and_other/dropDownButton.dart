import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> sehirler = ["İstanbul", "Ankara", "İzmir", "Bursa", "Adana"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: DropdownButton<String>(
            value: _secilenSehir,
            icon: const Icon(Icons.arrow_downward),
            onChanged: (value) => setState(() => _secilenSehir = value),
            hint: Text("Şehir Seçiniz"),
            items: sehirler.map((String sehir) {
              return DropdownMenuItem<String>(
                value: sehir,
                child: Text(sehir),
              );
            }).toList()),
      ),
    );
  }
}
