import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';
import 'package:random_color/random_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryListItem extends StatelessWidget {
  final MealCategory category;

  CategoryListItem({Key? key, required this.category})
      : super(key: Key(category.id));
  final _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == "ar";

    final color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.dark);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.categoryPage, arguments: category.id);
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
                    border: Border.all(color: color),
                    borderRadius: const BorderRadius.all(Radius.circular(81))),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(81))),
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
                          isArabic
                              ? category.title.arabic
                              : category.title.english,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
