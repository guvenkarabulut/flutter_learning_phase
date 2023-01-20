// To parse this JSON data, do
//
//     final fakerCarModel = fakerCarModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

FakerCarModel fakerCarModelFromMap(String str) =>
    FakerCarModel.fromMap(json.decode(str));

String fakerCarModelToMap(FakerCarModel data) => json.encode(data.toMap());

class FakerCarModel {
  FakerCarModel({
    required this.manufacturer,
    required this.model,
    required this.type,
    required this.url,
  });

  final String manufacturer;
  final String model;
  final String type;
  final String url;

  factory FakerCarModel.fromMap(Map<String, dynamic> json) => FakerCarModel(
        manufacturer: json["manufacturer"],
        model: json["model"],
        type: json["type"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "manufacturer": manufacturer,
        "model": model,
        "type": type,
        "url": url,
      };
}
