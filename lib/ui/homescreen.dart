import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:submission2/ui/restaurantdetailpage.dart';
import 'package:submission2/ui/restaurantlistpage.dart';
import 'package:submission2/ui/restaurantsearchpage.dart';

class RestaurantHomeScreen extends StatefulWidget {
  const RestaurantHomeScreen({super.key});

  @override
  State<RestaurantHomeScreen> createState() => RestaurantHomeScreenState();
}

class RestaurantHomeScreenState extends State<RestaurantHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _option = <Widget>[
    const RestaurantListPage(),
    const RestaurantSearchPage(),
  ];

  void _onTapped(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurant')),
      body: _option.elementAt(_selectedIndex),
      bottomNavigationBar: _makeBottomNavigationBar(),
    );
  }

  Widget _makeBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withOpacity(0.5),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search))
      ],
      onTap: (Index) {
        _onTapped(Index);
      },
    );
  }
}
