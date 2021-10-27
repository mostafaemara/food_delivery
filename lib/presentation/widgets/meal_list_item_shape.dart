import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';

class MealListItemShape extends StatelessWidget {
  const MealListItemShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        color: AppColors.shimmerBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
