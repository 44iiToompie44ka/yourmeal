import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:yourmeal/app.dart';
import 'package:yourmeal/screens/home.dart';
import 'package:yourmeal/providers/theme_provider.dart';
import 'package:yourmeal/providers/language_provider.dart';
import 'package:yourmeal/providers/notification_provider.dart';
import 'package:yourmeal/providers/meal_provider.dart';
import 'package:yourmeal/providers/notification_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider<LanguageProvider>(
          create: (context) => LanguageProvider(),
        ),
        ChangeNotifierProvider<NotificationProvider>(
          create: (context) => NotificationProvider(),
        ),
        ChangeNotifierProvider<MealProvider>(
          create: (context) => MealProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Your Meal App',
        theme: Provider.of<ThemeProvider>(context).isDarkMode
            ? ThemeData.dark()
            : ThemeData.light(),
        home: MyHomePage(backgroundColor: Colors.amber, title: "title"),
      ),
    );
  }
}
