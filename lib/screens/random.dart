import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/Providers/meal_provider.dart';

class RandomMealPage extends StatefulWidget {
  @override
  _RandomMealPageState createState() => _RandomMealPageState();
}

class _RandomMealPageState extends State<RandomMealPage> {
  bool isIngredientsActive = true;
  bool isInstructionsActive = true;
  bool isInformationActive = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 38, 1),
      body: Column(
        children: [
          // Top Container with Image and SizedBox
          Container(
            color: Color.fromRGBO(30, 30, 30, 1),
            child: Column(
              children: [
                SizedBox(height: 16.0),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      context
                              .watch<CounterProvider>()
                              .meals
                              ?.first
                              .strMealThumb ??
                          '',
                      fit: BoxFit.cover,
                      height: 225.0,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
            width: screenWidth,
          ),

          // Bottom Container with Text
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(38, 38, 38, 1),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24.0),
                Text(
                  context.watch<CounterProvider>().meals?.first.strMeal ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().listMeal();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                  ),
                  icon: Icon(Icons.casino, size: 30.0),
                  label: Text(
                    'Random Meal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 30, 30, 1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: isIngredientsActive
                            ? () {
                                setState(() {
                                  isIngredientsActive = false;
                                  isInstructionsActive = true;
                                  isInformationActive = true;
                                });
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          primary: isIngredientsActive
                              ? Color.fromRGBO(38, 38, 38, 1)
                              : Colors.amber,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                        ),
                        child: Text(
                          'Ingredients',
                          style: TextStyle(
                            color: isIngredientsActive
                                ? Colors.amber
                                : Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isInformationActive
                            ? () {
                                setState(() {
                                  isIngredientsActive = true;
                                  isInstructionsActive = true;
                                  isInformationActive = false;
                                });
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          primary: isInformationActive
                              ? Color.fromRGBO(38, 38, 38, 1)
                              : Colors.amber,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                        ),
                        child: Text(
                          'Information',
                          style: TextStyle(
                            color: isInformationActive
                                ? Colors.amber
                                : Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isInstructionsActive
                            ? () {
                                setState(() {
                                  isIngredientsActive = true;
                                  isInstructionsActive = false;
                                  isInformationActive = true;
                                });
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          primary: isInstructionsActive
                              ? Color.fromRGBO(38, 38, 38, 1)
                              : Colors.amber,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                        ),
                        child: Text(
                          'Instructions',
                          style: TextStyle(
                            color: isInstructionsActive
                                ? Colors.amber
                                : Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
