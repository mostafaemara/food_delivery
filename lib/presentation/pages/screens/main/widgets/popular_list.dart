import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/widgets/popular_list_item.dart';

class PopularList extends StatelessWidget {
  PopularList({Key? key}) : super(key: key);

  final meals = [
    {
      "id": "1",
      "title": "Big cheese burger",
      "body": "No 10 opp lekki phase 1 bridge in sangotedo estate",
      "rating": 4.00,
      "isFavorite": true,
      "imageUrl": "assets/images/burger_sample.png"
    },
    {
      "id": "2",
      "title": "Medium cheese burger",
      "body": "No 10 opp lekki phase 1 bridge in sangotedo estate",
      "rating": 5.0,
      "isFavorite": false,
      "imageUrl": "assets/images/burger_sample.png"
    },
    {
      "id": "3",
      "title": "Big cheese burger",
      "body": "No 10 opp lekki phase 1 bridge in sangotedo estate",
      "rating": 4.0,
      "isFavorite": true,
      "imageUrl": "assets/images/burger_sample.png"
    },
    {
      "id": "4",
      "title": "Big cheese burger",
      "body": "No 10 opp lekki phase 1 bridge in sangotedo estate",
      "rating": 4.0,
      "isFavorite": true,
      "imageUrl": "assets/images/burger_sample.png"
    },
    {
      "id": "5",
      "title": "Big cheese burger",
      "body": "No 10 opp lekki phase 1 bridge in sangotedo estate",
      "rating": 4.0,
      "isFavorite": true,
      "imageUrl": "assets/images/burger_sample.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => PopularListItem(
        id: meals[index]["id"].toString(),
        body: meals[index]["body"].toString(),
        imageUrl: meals[index]["imageUrl"].toString(),
        isFavorite: meals[index]["isFavorite"] as bool,
        title: meals[index]["title"] as String,
        rating: meals[index]["rating"] as double,
      ),
    );
  }
}
