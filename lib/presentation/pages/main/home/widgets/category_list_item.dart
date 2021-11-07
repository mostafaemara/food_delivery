import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:random_color/random_color.dart';
import "package:auto_route/auto_route.dart";
import '../../../../helpers/translators.dart';

class CategoryListItem extends StatelessWidget {
  final MealCategory category;

  CategoryListItem({Key? key, required this.category})
      : super(key: Key(category.id));
  final _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    final color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.dark);
    return GestureDetector(
      onTap: () {
        context.router.push(CategoryRoute(category: category));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: AspectRatio(
          aspectRatio: 101 / 129,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(color: color),
                    borderRadius: const BorderRadius.all(Radius.circular(81))),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(81))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        category.imageUrl,
                        height: 60,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          category.title.translate(context),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
