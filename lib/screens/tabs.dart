import 'package:explorer/screens/categories.dart';
import 'package:explorer/screens/meals.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget{
  const TabsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}
class _TabsScreenState extends State<TabsScreen>{
  int _selectedPageIndex=0;
  void _selectPage(int index)
  {
    setState((){
      _selectedPageIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    Widget activePage=const CategoriesScreen();
    var activePageTitle='Categories';

    if(_selectedPageIndex==1)
      {
        activePage=const MealsScreen(meals: []);
        activePageTitle='Your Favorites';
      }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Favorite'),
          // BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        ],
      ),
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
    );
  }
}