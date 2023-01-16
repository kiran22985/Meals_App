import 'package:flutter/material.dart';
import 'package:udemycourse/section7/utils/dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const routeName = "/mealDetail";
  const MealDetail({super.key});

  Widget buildSectionTitle(String title){
    return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(title),
              );

  }

  Widget buildListview({Widget? child,} ){
    return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)
                ),
                height: 250,
                width: 300,
                child: child,
                );
  }
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = mealData.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(title: Text("${selectedMeal.title}")),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    selectedMeal.imageUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
                buildSectionTitle("Ingredients"),
                
                 buildListview(child: ListView.builder(
                    itemCount: selectedMeal.ingredients!.length,
                    itemBuilder: (ctx, index){
                      return Card(
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(selectedMeal.ingredients![index],style: TextStyle(color: Colors.white),),
                        ),
                      );
          
                  })),
                  
                  buildSectionTitle("Steps"),
                  buildListview(child: ListView.builder(
                    itemCount: selectedMeal.steps!.length,
                    itemBuilder: (ctx, index){
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: Text("# ${(index+1)}"),
                            ),
                            title: Text(selectedMeal.steps![index]),
                            
                          ),
                          Divider()
                        ],
                      );
          
                  })),
              ]
            ),
          ),
        ));
  }
}
