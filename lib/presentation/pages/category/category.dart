import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:food_delivery_app/presentation/bloc/category/category_cubit.dart';

import 'package:food_delivery_app/presentation/widgets/meal_list_item.dart';

import '../../../injection.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.categoryId}) : super(key: key);
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == "ar";
    return Scaffold(
        body: SafeArea(
      child: BlocProvider(
        create: (context) => CategoryCubit(locator<MealsRepository>()),
        child: Builder(builder: (context) {
          return BlocConsumer<CategoryCubit, CategoryState>(
            builder: (context, state) {
              if (state is CategoryInitial) {
                BlocProvider.of<CategoryCubit>(context)
                    .getMealsByCategoryId(categoryId);
              }
              if (state is CategoryLoaded) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Transform.rotate(
                                  angle: isArabic ? 380 : 0,
                                  child: const Icon(
                                    Icons.arrow_back_ios_new,
                                  ))),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                  childAspectRatio: 1 / 1.5,
                                  crossAxisCount: 2),
                          itemCount: state.meals.length,
                          itemBuilder: (context, index) =>
                              MealListItem(meal: state.meals[index]),
                        ),
                      ),
                    ],
                  ),
                );
              }
              if (state is CategoryFailure) {
                return const Center(
                  child: Text("Somthing went Wrong"),
                );
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            listener: (context, state) {},
          );
        }),
      ),
    ));
  }
}
