import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/Providers/meal_provider.dart';
import 'package:yourmeal/models/category.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<MealProvider>(context, listen: false).listCategories();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 38, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount:
                    context.watch<MealProvider>().categories?.length ?? 0,
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            context
                                    .watch<MealProvider>()
                                    .categories?[index]
                                    .strCategory ??
                                '',
                          ),
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(
                height:
                    20), // Add some space between the category row and the text
            Text(
              'Select category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
