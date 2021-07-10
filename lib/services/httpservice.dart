import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled2/models/news_model.dart';


class HttpService {
  final String newsUrl = 'http://127.0.0.1:8000/app/news-list/?format=json';

  Future<List<News>> getNews() async {
    Response res = await get(Uri.parse(newsUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<News> newss =
      body.map((dynamic item) => News.fromJson(item)).toList();
      return newss;
    } else {
      throw 'get news';
    }
  }
}
