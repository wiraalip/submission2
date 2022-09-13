import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:submission2/models/listclass.dart';
import 'package:submission2/ui/restaurantdetailpage.dart';

class CardRestaurant extends StatelessWidget {
  final Restaurant restaurant;

  const CardRestaurant({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      shadowColor: Colors.black,
      child: ListTile(
        leading: Hero(
          tag: restaurant.pictureId,
          child: Image.network(
            'https://restaurant-api.dicoding.dev/images/large/${restaurant.pictureId}',
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(restaurant.name),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RestaurantDetailPage(resto: restaurant.id);
          }));
        },
        subtitle: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Text(restaurant.city),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.yellow,
                  ),
                  Text(restaurant.rating.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
