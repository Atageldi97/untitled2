import 'package:flutter/material.dart';
import 'package:untitled2/models/category_model.dart';
import 'package:untitled2/services/category_service.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryService categoryService = CategoryService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: categoryService.getCategory(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
          if (snapshot.hasData) {
            List<Category> categories = snapshot.data;

            return ListView(
              children: categories
                  .map((Category category) => Row(children: [
                        Text(category.id.toString() + category.name),
                      ]
              )
              ).toList(),
            );
          }
        },
      ),
    );
  }
}
