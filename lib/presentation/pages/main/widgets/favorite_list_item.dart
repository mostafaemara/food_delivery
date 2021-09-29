import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

class FavoriteListItem extends StatelessWidget {
  final Meal meal;
  FavoriteListItem({Key? key, required this.meal}) : super(key: Key(meal.id));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      height: 150,
      child: Row(
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                meal.title.english,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                meal.shortDescription.english,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                meal.calories.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
