import 'package:flutter/material.dart';
import 'package:udemycourse/section7/screens/category_meals_screen.dart';



class CategoryItem extends StatelessWidget {
  final String? Id;
  final String? title;
  final Color?color;
  const CategoryItem({super.key, this.title, this.color, this.Id});


  void selectCategory(BuildContext context){
    Navigator.pushNamed(context, CategoryMealDetail.routeName, arguments: {"id":Id,"title":title});

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Text(title!,style: Theme.of(context).textTheme.titleLarge,),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color!.withOpacity(0.6),
            color!
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          
          ),
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}