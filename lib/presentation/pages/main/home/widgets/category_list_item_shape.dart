import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';

class CategoryListItemShape extends StatelessWidget {
  const CategoryListItemShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: AspectRatio(
        aspectRatio: 101 / 129,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              color: AppColors.shimmerBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(81))),
        ),
      ),
    );
  }
}
