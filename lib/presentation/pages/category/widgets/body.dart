import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/bloc/category/category_cubit.dart';

import 'package:food_delivery_app/presentation/pages/category/widgets/meals_grid.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/widgets/server_error.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void didChangeDependencies() {
    context.read<CategoryCubit>().getMealsByCategoryId();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) => state.maybeWhen(
        loaded: (meals) => MealsGrid(meals: meals),
        failure: (failure) => const ServerError(),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    ));
  }
}
