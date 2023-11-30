import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:yourmeal/models/meal.dart';

import '../models/category.dart';

class Api {
  final mealURL = 'https://www.themealdb.com/api/json/v1/1/random.php';
  final categoryURL = 'https://www.themealdb.com/api/json/v1/1/categories.php';
  final mealByCategoryURL =
      'https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood';
  final dio = Dio();

  Future<List<MealModel>> listMeals() async {
    Response response;
    response = await dio.get(mealURL);
    log(response.data.toString());
    return parseMealModels(response.data);
  }

  Future<List<MealModel>> listMealsBy(String category) async {
    log('message');
    Response response;
    response = await dio.get(mealByCategoryURL);
    log(response as String);
    log(category);
    log(response.data.toString());
    return parseMealModels(response.data);
  }

  Future<List<CategoryModel>> listCategories() async {
    Response response;
    response = await dio.get(categoryURL);
    log(response.data.toString());
    return parseCateryModels(response.data);
  }

  List<MealModel> parseMealModels(Map<String, dynamic> json) {
    List<dynamic> mealsJson = json['meals'];
    return mealsJson.map((mealJson) => MealModel.fromJson(mealJson)).toList();
  }

  List<CategoryModel> parseCateryModels(Map<String, dynamic> json) {
    List<dynamic> mealsJson = json['categories'];
    return mealsJson
        .map((mealJson) => CategoryModel.fromJson(mealJson))
        .toList();
  }
}
