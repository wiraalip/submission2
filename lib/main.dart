import 'package:flutter/material.dart';
import 'package:submission2/ui/homescreen.dart';
import 'package:submission2/ui/restaurantlistpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        RestaurantListPage.routeName: (context) => const RestaurantListPage(),
      },
      home: const RestaurantHomeScreen(),
    );
  }
}
