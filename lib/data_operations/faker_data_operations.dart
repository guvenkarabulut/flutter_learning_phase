import 'dart:convert';

import 'package:flutter/material.dart';
import './model/faker_card_model.dart';

class FakerDataMain extends StatefulWidget {
  const FakerDataMain({super.key});

  @override
  State<FakerDataMain> createState() => _FakerDataMainState();
}

class _FakerDataMainState extends State<FakerDataMain> {
  @override
  Widget build(BuildContext context) {
    readMyJson();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faker Data Operations'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: readMyJson(),
        builder: (context, AsyncSnapshot<List<FakerCarModel>> snapshot) {
          if (snapshot.hasData) {
            List<FakerCarModel> allFakerCards = snapshot.data!;
            return ListView.builder(
              itemCount: allFakerCards.length,
              itemBuilder: (context, index) {
                return myCardTile(
                    url: allFakerCards[index].url,
                    title: allFakerCards[index].model,
                    subTitle: allFakerCards[index].type);
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<FakerCarModel>> readMyJson() async {
    List<FakerCarModel> allFakerCards = [];
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/fakerJsCars.json');
    var myObject = jsonDecode(myString);
    allFakerCards =
        (myObject as List).map((e) => FakerCarModel.fromMap(e)).toList();
    return allFakerCards;
  }
}

class myCardTile extends StatelessWidget {
  const myCardTile({
    Key? key,
    required String url,
    required String title,
    required String subTitle,
  })  : _url = url,
        _title = title,
        _subTitle = subTitle,
        super(key: key);

  final String _url;
  final String _title;
  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(3),
      color: Colors.teal.shade200,
      child: ListTile(
        leading: Image.network(
          _url,
          scale: 0.8,
          alignment: Alignment.center,
          fit: BoxFit.contain,
          width: 100,
          height: 100,
        ),
        title: Text(_title, style: Theme.of(context).textTheme.headline6),
        subtitle: Text(_subTitle, style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}
