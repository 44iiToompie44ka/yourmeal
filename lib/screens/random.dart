import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/Providers/meal_provider.dart';
import 'package:yourmeal/widgets/ingridient.dart';

class RandomMealPage extends StatefulWidget {
  @override
  _RandomMealPageState createState() => _RandomMealPageState();
}

class _RandomMealPageState extends State<RandomMealPage> {
  bool isIngredientsActive = false;
  bool isInstructionsActive = true;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<MealProvider>(context, listen: false).listMeal();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100.0),
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(30, 30, 30, 1),
              child: Column(
                children: [
                  SizedBox(height: 16.0),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        context
                                .watch<MealProvider>()
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
            Container(
              padding: EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 38, 38, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(148.0),
                      topRight: Radius.circular(148.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 24.0),
                  Text(
                    context.watch<MealProvider>().meals?.first.strMeal ?? '',
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
                      context.read<MealProvider>().listMeal();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 25.0), // Adjusted padding
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
                  SizedBox(height: 26.0),
                  Container(
                      height: 60.0, // Adjusted height

                      decoration: BoxDecoration(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0))),
                      child: Stack(
                        children: [
                          AnimatedAlign(
                            alignment: isIngredientsActive
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.bounceInOut,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color.fromRGBO(32, 32, 32, 1),
                                ),
                                height: 40,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 32,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  isIngredientsActive = true;
                                  isInstructionsActive = false;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Container(
                                    height: 60,
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            32,
                                    child: Center(
                                      child: Text(
                                        'Ingredients',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.amber,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  isInstructionsActive = true;
                                  isIngredientsActive = false;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          32,
                                      child: Center(
                                        child: Text(
                                          'Instructions',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.amber,
                                              ),
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  Visibility(
                    visible: isInstructionsActive,
                    child: Container(
                      //instructions
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(30, 30, 30, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))),
                      child: Column(children: [
                        SizedBox(height: 10.0),
                        Text(
                          "Instructions",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            context
                                    .watch<MealProvider>()
                                    .meals
                                    ?.first
                                    ?.strInstructions ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(fontSize: 15.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ]),
                    ),
                  ),
                  Visibility(
                    visible: isIngredientsActive,
                    child: Container(
                      //instructions
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(30, 30, 30, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))),
                      child: Column(children: [Ingredients()]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
