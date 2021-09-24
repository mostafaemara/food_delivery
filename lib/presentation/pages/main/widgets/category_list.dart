import 'package:flutter/material.dart';

import 'category_list_item.dart';

class CategoryList extends StatelessWidget {
  final categories = [
    {"title": "Pizza", "imageUrl": "assets/images/pizza.png", "id": "1"},
    {"title": "Burger", "imageUrl": "assets/images/burger.png", "id": "2"},
    {"title": "Sausage", "imageUrl": "assets/images/sausage.png", "id": "3"},
    {"title": "Pizza", "imageUrl": "assets/images/pizza.png", "id": "4"},
    {"title": "Pizza", "imageUrl": "assets/images/pizza.png", "id": "5"},
  ];
  CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return CategoryListItem(
          isSelected: index == 1,
          id: categories[index]["id"]!,
          title: categories[index]["title"]!,
          imageUrl: categories[index]["imageUrl"]!,
        );
      },
    );
  }
}
