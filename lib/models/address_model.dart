
import 'package:flutter/material.dart';

class Address {
  final int id;
  final String name;
  final int region_id;

  Address({@required this.id, @required this.name, @required this.region_id});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        id: json['id'] as int,
        name: json['name'] as String,
        region_id: json['region_id'] as int);
  }
}