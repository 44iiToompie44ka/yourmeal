import 'package:flutter/material.dart';
import 'package:yourmeal/models/meal.dart';
import 'package:yourmeal/services/api_service.dart';
import 'package:yourmeal/services/api_service.dart';

class CounterProvider extends ChangeNotifier {
  double height = 300.0;
  bool isLoading = false;
  List<MealModel>? meals;
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

  setMeal(data) {
    meals = data;
    setStatus(false);
    notifyListeners();
  }

  void firstgenerate() {
    _firstClick = false;
  }

  bool get firstClick => _firstClick;
}
