import 'package:flutter/material.dart';

class Category {
  final String url;
  final int id;
  final String name;

  Category({@required this.url, @required this.id, @required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        url: json['url'] as String,
        id: json['id'] as int,
        name: json['name'] as String);
  }
}
