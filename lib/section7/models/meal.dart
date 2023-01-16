enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability { Affordable, Pricy, Luxurious }

class Meal {
  final String? id;
  final List<String>? categoriesId;
  final String? title;
  final String? imageUrl;
  final List<String>? ingredients;
  List<String>? steps;
  int? duration;
  Complexity? complexity;
  Affordability? affordability;
  bool? isGlutenFree;
  bool? isLactoseFree;
  bool? isVegan;
  bool? isVegetarian;

  Meal(
      {this.id,
      this.categoriesId,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isGlutenFree,
      this.isVegan,
      this.isLactoseFree,
      this.isVegetarian
      });
}
