import 'package:flutter/material.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({super.key});

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  String _secilenSehir = "İstanbul";
  List<String> _renkler = ["Kırmızı", "Yeşil", "Mavi", "Sarı", "Mor"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
          onSelected: (value) => setState(() => _secilenSehir = value),
          icon: Icon(Icons.arrow_drop_down),
          itemBuilder: (context) => _renkler.map((renk) {
                return PopupMenuItem<String>(
                  value: renk,
                  child: Text(renk),
                );
              }).toList()),
    );
  }
}
