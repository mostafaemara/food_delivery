import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/home/home_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main/home/widgets/home_failure.dart';
import 'package:food_delivery_app/presentation/pages/main/home/widgets/home_loaded.dart';
import 'package:food_delivery_app/presentation/pages/main/home/widgets/home_loading.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<HomeCubit>(context).init();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const HomeLoading(),
          loaded: (popularMeals, categories) =>
              HomeLoaded(categories: categories, popularMeals: popularMeals),
          failure: (failure) => const HomeFailure(),
        );
      },
    );
  }
}
