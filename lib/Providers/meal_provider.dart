import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yourmeal/models/meal.dart';
import 'package:yourmeal/services/api_service.dart';
import 'package:yourmeal/services/api_service.dart';
import '../models/category.dart';

class MealProvider extends ChangeNotifier {
  double height = 300.0;
  bool isLoading = false;
  List<MealModel>? meals;
  List<MealModel>? categoryMeals;
  List<CategoryModel>? categories;
  CategoryModel? selectedCategory;
  bool _firstClick = true;
  void getActivity() async {
    setStatus(true);
    // ActivityModel data = await Api().getActivity();
    // setActivity(data);
  }

  setActivity(data) {
    setStatus(false);
    notifyListeners();
  }

  setStatus(value) {
    isLoading = value;
  }

  void listMeal() async {
    setStatus(true);
    List<MealModel> data = await Api().listMeals();
    setMeal(data);
  }

  void listByCategory() async {
    log('2222');
    List<MealModel> data = await Api().listMealsBy('category');
    setCategoryMeals(data);
  }

  void listCategories() async {
    List<CategoryModel> data = await Api().listCategories();
    setCategories(data);
  }

  setCategories(data) {
    categories = data;
    notifyListeners();
  }

  setMeal(data) {
    meals = data;
    setStatus(false);
    notifyListeners();
  }

  setCategoryMeals(data) {
    categoryMeals = data;
    notifyListeners();
  }

  void firstgenerate() {
    _firstClick = false;
  }

  bool get firstClick => _firstClick;
}
