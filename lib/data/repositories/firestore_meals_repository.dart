import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/data/models/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';
import "../mappers/firestore_query_snapshot_mapper.dart";
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';

class FirestoreMealsRepository implements MealsRepositoryInterface {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<AuthFailure, List<MealCategory>>> getCategories() async {
    try {
      final snapshot = await firestore.collection("categories").get();

      return right(snapshot.toMealCategories());
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, List<Meal>>> getMealsByCategory(
      String categoryId) async {
    try {
      final snapshot = await firestore
          .collection("meals")
          .where("category", isEqualTo: categoryId)
          .get();

      return right(snapshot.toMeals());
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, List<Meal>>> getPopularMeals() async {
    try {
      final snapshot = await firestore.collection("popularItems").get();
      if (snapshot.docs.isEmpty) {
        return right([]);
      }
      final meals =
          await fetchMealsByIds(snapshot.docs.map((e) => e.id).toList());
      return right(meals);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  Future<List<Meal>> fetchMealsByIds(List<String> ids) async {
    List<Meal> meals = [];
    for (final id in ids) {
      final snapshot = await firestore.collection("meals").doc(id).get();
      final Map<String, dynamic> map = {"id": snapshot.id}
        ..addAll(snapshot.data()!);
      meals.add(MealModel.fromMap(map));
    }
    return meals;
  }
}
