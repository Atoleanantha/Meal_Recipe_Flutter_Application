import 'package:flutter/material.dart';
import 'package:explorer/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal, required this.onToggleFavorite});
  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.bold);
    TextStyle styleText = Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
        fontWeight: FontWeight.bold);

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              onToggleFavorite(meal);
            }, icon: Icon(Icons.star_border)),
          ],
          title: Text(meal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meal.title,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Ingredients : ', style: style),
                    for (final ingredients in meal.ingredients)
                      Text(
                        ingredients,
                        style: styleText,
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Steps: ', style: style),
                    for (final steps in meal.steps)
                      Text(
                        steps,
                        style: const TextStyle(color: Colors.white),
                      ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
