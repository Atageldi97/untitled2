import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled2/models/address_model.dart';

class AddressService {
final String catUrl = 'http://127.0.0.1:8000/app/category-list/?format=json';

Future<List<Address>> getCategory() async {
  Response res = await get(Uri.parse(catUrl));

  if (res.statusCode == 200) {
    List<dynamic> body = jsonDecode(res.body);
    List<Address> categories =
    body.map((dynamic item) => Address.fromJson(item)).toList();
    return categories;
  } else {
    throw 'get address';
  }
}
}