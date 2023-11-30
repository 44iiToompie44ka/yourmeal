import 'package:flutter/material.dart';

class NotificationProvider with ChangeNotifier {
  bool _areNotificationsEnabled = true;

  bool get areNotificationsEnabled => _areNotificationsEnabled;

  void toggleNotifications(bool newValue) {
    _areNotificationsEnabled = newValue;
    notifyListeners();
  }
}
