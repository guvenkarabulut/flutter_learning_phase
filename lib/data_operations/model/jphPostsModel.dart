// To parse this JSON data, do
//
//     final jphPostsModel = jphPostsModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

JphPostsModel jphPostsModelFromMap(String str) =>
    JphPostsModel.fromMap(json.decode(str));

String jphPostsModelToMap(JphPostsModel data) => json.encode(data.toMap());

class JphPostsModel {
  JphPostsModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory JphPostsModel.fromMap(Map<String, dynamic> json) => JphPostsModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
