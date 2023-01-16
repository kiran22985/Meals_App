import 'package:flutter/material.dart';
import 'package:udemycourse/section7/screens/categories_screen.dart';
import 'package:udemycourse/section7/screens/favourites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        //initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Meals"),
            bottom: const TabBar(


              tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "category",
              ),
              Tab(icon: Icon(Icons.star),
              text: "favourite",

              ),
            ]),
          ),
          body: const TabBarView(children: [
            CategoryScreen(),
            Favourite()

          ]),
          
        ),
      
        );
  }
}
