import 'package:flutter/foundation.dart';

class News {
  final String url;
  final int id;
  final String name;
  final String text;
  final String category;
  final String created;

  News(
      {@required this.url,
      @required this.id,
      @required this.name,
      @required this.text,
      @required this.category,
      @required this.created});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      url: json['url'] as String,
      id: json['pk'] as int,
      name: json['name'] as String,
      text: json['text'] as String,
      category: json['category'] as String,
      created: json['created'] as String,
    );
  }
}
