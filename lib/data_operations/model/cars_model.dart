// To parse this JSON data, do
//
//     final modelCar = modelCarFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ModelCar modelCarFromMap(String str) => ModelCar.fromMap(json.decode(str));

String modelCarToMap(ModelCar data) => json.encode(data.toMap());

class ModelCar {
  ModelCar({
    required this.brand,
    required this.models,
  });

  final String brand;
  final List<String> models;

  factory ModelCar.fromMap(Map<String, dynamic> json) => ModelCar(
        brand: json["brand"],
        models: List<String>.from(json["models"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "brand": brand,
        "models": List<dynamic>.from(models.map((x) => x)),
      };
}
