
import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled2/models/category_model.dart';

class CategoryService {
  final String catUrl = 'http://127.0.0.1:8000/app/category-list/?format=json';

  Future<List<Category>> getCategory() async {
    Response res = await get(Uri.parse(catUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Category> categories =
      body.map((dynamic item) => Category.fromJson(item)).toList();
      return categories;
    } else {
      throw 'get categories';
    }
  }
}
