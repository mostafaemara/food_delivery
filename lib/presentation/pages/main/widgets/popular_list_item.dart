import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';

class PopularListItem extends StatelessWidget {
  final Meal meal;
  PopularListItem({
    Key? key,
    required this.meal,
  }) : super(key: Key(meal.id));

  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == "ar";
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.mealDetailsPage, arguments: meal);
      },
      child: SizedBox(
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  meal.imageUrl,
                  height: 112,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  isArabic ? meal.title.arabic : meal.title.english,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  isArabic
                      ? meal.shortDescription.arabic
                      : meal.shortDescription.english,
                  style: Theme.of(context).textTheme.caption,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        constraints:
                            const BoxConstraints(maxWidth: 18, maxHeight: 18),
                        splashRadius: 18,
                        alignment: AlignmentDirectional.center,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/star.png",
                          height: 18,
                          width: 18,
                        )),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 3),
                      child: Text(
                        "5",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        constraints:
                            const BoxConstraints(maxWidth: 18, maxHeight: 18),
                        padding: EdgeInsets.zero,
                        alignment: AlignmentDirectional.centerEnd,
                        onPressed: () {},
                        icon: Image.asset(
                          false
                              ? "assets/icons/heart_active.png"
                              : "assets/icons/heart.png",
                          height: 18,
                          width: 18,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
