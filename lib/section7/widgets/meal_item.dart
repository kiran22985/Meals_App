import 'package:flutter/material.dart';
import 'package:udemycourse/section7/models/meal.dart';
import 'package:udemycourse/section7/screens/meal_detail.dart';

class MealItem extends StatelessWidget {
  String?id;
  String? title;
  String? imageUrl;
  int? duration;
  Complexity? complexity;
  Affordability? affordability;
  MealItem(
      {super.key,
      this.id,
      this.title,
      required this.imageUrl,
      this.duration,
      this.complexity,
      this.affordability});

  void selectMeal(BuildContext context) {
    Navigator.pushNamed(context, MealDetail.routeName, arguments: id);


  }

  String? get complexityText{
    switch ( complexity ) { 
   case Complexity.Simple: { 
      return "Simple";
   } 
   case Complexity.Challenging: { 
      return "Challenging";
   }  
   
   case Complexity.Hard: { 
      return "Hard";
   }
   
   default: { 
      return "Unknown"; 
   } 
} 

  }

  String? get affordabilityText{
    switch ( affordability ) { 
   case Affordability.Pricy: { 
      return "Pricy";
   } 
   case Affordability.Luxurious: { 
      return "Luxurious";
   }  
   
   case Affordability.Affordable: { 
      return "Affordable";
   }
   
   default: { 
      return "Unknown"; 
   } 
} 

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,

                  child: Container(
                    width: 320,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    child: Text(title!,style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ), softWrap: true,overflow: TextOverflow.fade,),
                  ),
                )
              ],
            ),
            Padding(

              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.schedule),
                    SizedBox(width: 4,),
                    Text("$duration min")

                  ],),
                  Row(children: [
                    Icon(Icons.work),
                    SizedBox(width: 4,),
                    Text(complexityText!)

                  ],),

                  Row(children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 4,),
                    Text(affordabilityText!)

                  ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
