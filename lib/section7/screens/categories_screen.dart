import 'package:flutter/material.dart';
import 'package:udemycourse/section7/widgets/categories_item.dart';
import 'package:udemycourse/section7/utils/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: const EdgeInsets.all(20),
      
      children: dummyData.map((e) {
        return CategoryItem(
          Id: e.id,
          title: e.title,
          color: e.color,);
      }).toList(),
      gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20
            ),
          
    );
    
  }
}
