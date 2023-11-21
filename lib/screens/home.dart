import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/Providers/meal_provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(38, 38, 38, 1), // Set background color to black
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                color: Colors.grey, // Set text color to grey
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
