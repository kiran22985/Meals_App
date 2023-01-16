import 'package:flutter/material.dart';
import 'package:udemycourse/section7/screens/categories_screen.dart';
import 'package:udemycourse/section7/screens/favourites.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

  List<Map<String, dynamic>> pages=[
    {
      'page':CategoryScreen(),
      'title':"Categories"
    },

    {
      'page':Favourite(),
      'title':"Favourites"
    }

  ];

  int _selectedScreenIndex=0;
  void _selectPage(int index){
    setState(() {
      _selectedScreenIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pages[_selectedScreenIndex]["title"])),
      body:pages[_selectedScreenIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        //type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.star),label: "Favourite")
      ]),
    );
  }
}