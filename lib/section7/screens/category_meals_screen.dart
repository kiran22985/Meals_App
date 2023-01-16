import 'package:flutter/material.dart';
import 'package:udemycourse/section7/utils/dummy_data.dart';
import 'package:udemycourse/section7/widgets/meal_item.dart';

class CategoryMealDetail extends StatelessWidget {
  const CategoryMealDetail({super.key});
  static const routeName = "/category-meal-detail";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    final categortyTitle = routeArgs["title"];
    final categoryID = routeArgs["id"];
    final categoryMeals = mealData.where((meal) {
      return meal.categoriesId!.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categortyTitle!),
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeals[index].id,
              imageUrl: categoryMeals[index].imageUrl,
              title: categoryMeals[index].title,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              );
          }),
    );
  }
}
