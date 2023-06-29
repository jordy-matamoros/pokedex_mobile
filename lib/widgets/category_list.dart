import 'package:flutter/material.dart';
import 'package:pokedex_mobile/providers/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/9S_4bGdvTc7lVpe2jYxPeU507moXnGOQ25iV5cTPhF869EWJHfPWBv71Y0NBkqmJI9M-Xea9S3Q28KjQmbEKP6nnBEwKQ-fhpZAndHO2Rvhyrg")),
                ),
                title: Text(
                  categoryProvider.categories[index].name,
                ),
              ),
            );
        },
        itemCount: categoryProvider.totalCategories,
      );
    });
  }
}
