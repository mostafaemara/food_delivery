import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/pages/main/home/widgets/category_list_item_shape.dart';
import 'package:food_delivery_app/presentation/pages/main/home/widgets/title_shape.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';
import 'package:food_delivery_app/presentation/widgets/meal_list_item_shape.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(milliseconds: 1000),
        baseColor: AppColors.baseShimmerColor,
        highlightColor: AppColors.highLightShimmerColor,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const TitleShape(),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryListItemShape(),
                    CategoryListItemShape(),
                    CategoryListItemShape(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TitleShape(),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MealListItemShape(),
                    MealListItemShape(),
                    MealListItemShape(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
