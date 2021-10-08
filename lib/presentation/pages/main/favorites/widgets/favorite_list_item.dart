import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';

class FavoriteListItem extends StatelessWidget {
  final Favorite favorite;
  FavoriteListItem({Key? key, required this.favorite})
      : super(key: Key(favorite.mealId));

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
                favorite.imageUrl,
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
                favorite.title.english,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                favorite.title.english,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
