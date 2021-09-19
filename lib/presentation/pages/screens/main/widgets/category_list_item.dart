import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';
import 'package:random_color/random_color.dart';

class CategoryListItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final bool isSelected;
  CategoryListItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.id,
      this.isSelected = false})
      : super(key: Key(id));
  final _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    final color =
        _randomColor.randomColor(colorBrightness: ColorBrightness.dark);
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: AspectRatio(
          aspectRatio: 81 / 109,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color:
                            isSelected ? AppColors.selectedBorderColor : color),
                    borderRadius: const BorderRadius.all(Radius.circular(81))),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: isSelected ? Border.all() : null,
                      color: isSelected ? AppColors.selectedBackground : null,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(81))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Image.asset(
                          imageUrl,
                        ),
                      ),
                      Expanded(child: FittedBox(child: Text(title)))
                    ],
                  ),
                ),
              ),
              if (!isSelected)
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(81))),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
