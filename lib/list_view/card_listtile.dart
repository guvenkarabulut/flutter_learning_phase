import 'package:flutter/material.dart';

class CardListTileKullanimi extends StatelessWidget {
  const CardListTileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(reverse: true, children: [
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        ElevatedButton(onPressed: (() => print('sea')), child: Text('sea')),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        OutlinedButton(onPressed: ((() => print('ase'))), child: Text('ase')),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(
            title: 'About', subTitle: 'About Page', icon: Icons.info),
      ]),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(children: [
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
        tekListeElemani(),
      ]),
    );
  }

  Column tekListeElemani(
      {String title = 'Home',
      String subTitle = 'Home Page',
      IconData icon = Icons.home}) {
    return Column(
      children: [
        Card(
          elevation: 5,
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.blue.shade100,
          child: ListTile(
            leading: CircleAvatar(child: Icon(icon)),
            title: Text(title),
            subtitle: Text(subTitle),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('Home Page');
            },
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
/* Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ), */
