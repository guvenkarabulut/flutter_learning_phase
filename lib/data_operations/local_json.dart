import 'dart:convert';
import 'package:flutter/material.dart';
import './model/cars_model.dart';

class LocalJSONPage extends StatefulWidget {
  const LocalJSONPage({super.key});

  @override
  State<LocalJSONPage> createState() => _LocalJSONPageState();
}

class _LocalJSONPageState extends State<LocalJSONPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local JSON'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        initialData: [
          ModelCar(
            brand: 'No Data',
            models: ['No Data'],
          )
        ],
        future: readMyJson(),
        builder: (context, AsyncSnapshot<List<ModelCar>> snapshot) {
          if (snapshot.hasData) {
            var allCars = snapshot.data!;
            return ListView.builder(
              itemCount: allCars.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(allCars[index].brand),
                    subtitle: Text(allCars[index].models.toString()),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<ModelCar>> readMyJson() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/cars.json');
    var jsonObject = jsonDecode(myString);
    List<ModelCar> myCars =
        (jsonObject as List).map((e) => ModelCar.fromMap(e)).toList();

    return myCars;
  }
}
