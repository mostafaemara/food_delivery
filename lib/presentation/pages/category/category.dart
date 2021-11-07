import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:food_delivery_app/presentation/bloc/category/category_cubit.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:food_delivery_app/presentation/widgets/my_app_bar.dart';

import '../../../injection.dart';
import 'widgets/body.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.category}) : super(key: key);
  final MealCategory category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          MyAppBar(title: category.title.translate(context)),
          BlocProvider(
              create: (context) => CategoryCubit(locator<MealsRepository>(),
                  categoryId: category.id),
              child: const Body()),
        ],
      ),
    ));
  }
}
