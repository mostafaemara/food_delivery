import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

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
  Future<Either<Failure, List<MealCategory>>> getCategories() async {
    try {
      final snapshot = await firestore.collection("categories").get();

      return right(snapshot.toMealCategories());
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Meal>>> getMealsByCategory(
      String categoryId) async {
    try {
      final snapshot = await firestore
          .collection("meals")
          .where("category", isEqualTo: categoryId)
          .get();

      return right(snapshot.toMeals());
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Meal>>> getPopularMeals() async {
    try {
      final snapshot = await firestore.collection("popularItems").get();
      if (snapshot.docs.isEmpty) {
        return right([]);
      }
      List<Meal> meals = [];
      for (final doc in snapshot.docs) {
        final data = await firestore.collection("meals").doc(doc.id).get();
        final Map<String, dynamic> map = {"id": data.id}..addAll(data.data()!);
        meals.add(MealModel.fromMap(map));
      }
      return right(meals);
    } catch (e) {
      print("Errorrrrrrrr" + e.toString());
      return left(ServerFailure());
    }
  }
}
