import 'package:flutter/material.dart';
import 'package:untitled2/services/httpservice.dart';

import '../models/news_model.dart';

class NewsWidget extends StatelessWidget {
final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: httpService.getNews(),
        builder: (BuildContext context, AsyncSnapshot <List<News>> snapshot){
          if(snapshot.hasData){
            List<News> newss = snapshot.data;
            return ListView(
              children: newss.map((News news) => ListView(
              children: [
                Text(news.name + news.created),
              ]
              )
              ).toList()
            );
          }
          return Center(child: CircularProgressIndicator(),);
        },
      )
    );
  }
}
