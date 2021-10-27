import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';

class TitleShape extends StatelessWidget {
  const TitleShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shimmerBackgroundColor,
      height: 30,
    );
  }
}
