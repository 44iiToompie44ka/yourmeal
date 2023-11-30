import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourmeal/Providers/meal_provider.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.0,
          width: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(38, 38, 38, 1),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Text(
            "Ingredients",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient1 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure1 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient2 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure2 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient3 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure3 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient4 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure4 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient5 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure5 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient6 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure6 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient7 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure7 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient8 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure8 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient9 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure9 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient10 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure10 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient11 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure11 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient12 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure12 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient13 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure13 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient14 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure14 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient15 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure15 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient16 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure16 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient17 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure17 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient18 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure18 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient19 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure19 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              context.watch<MealProvider>().meals?.first.strIngredient20 ?? ' ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Text(
              context.watch<MealProvider>().meals?.first.strMeasure20 ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
