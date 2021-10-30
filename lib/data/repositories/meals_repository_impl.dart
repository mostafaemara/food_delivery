import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/meal_category_model.dart';

import 'package:food_delivery_app/data/models/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';

class MealsRepositoryImpl implements MealsRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<ServerFailure, List<MealCategory>>> getCategories() async {
    try {
      final snapshot = await firestore.collection("categories").get();

      return right(_documentsToMealCategories(snapshot.docs));
    } catch (e) {
      return left(ServerFailure());
    }
  }

  List<MealCategory> _documentsToMealCategories(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> documents) {
    List<MealCategory> categories = [];
    for (final document in documents) {
      categories.add(MealCategoryModel.fromDocument(document));
    }
    return categories;
  }

  @override
  Future<Either<ServerFailure, List<Meal>>> getMealsByCategory(
      String categoryId) async {
    try {
      final snapshot = await firestore
          .collection("meals")
          .where("category", isEqualTo: categoryId)
          .get();

      return right(_documentsToMeals(snapshot.docs));
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<Meal>>> getPopularMeals() async {
    try {
      final snapshot = await firestore.collection("popularItems").get();

      final meals =
          await fetchMealsByIds(snapshot.docs.map((e) => e.id).toList());
      return right(meals);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  Future<List<Meal>> fetchMealsByIds(List<String> ids) async {
    List<Meal> meals = [];
    for (final id in ids) {
      final snapshot = await firestore.collection("meals").doc(id).get();
      if (snapshot.exists) {
        meals.add(MealModel.fromDocument(snapshot));
      }
    }
    return meals;
  }

  List<Meal> _documentsToMeals(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> documents) {
    List<Meal> meals = [];
    for (final document in documents) {
      meals.add(MealModel.fromDocument(document));
    }
    return meals;
  }
}
