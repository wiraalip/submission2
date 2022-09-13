class Welcome {
  Welcome({
    required this.error,
    required this.message,
    required this.count,
    required this.restaurants,
  });

  final bool error;
  final String message;
  final int count;
  final List<Restaurant> restaurants;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        error: json["error"],
        message: json["message"],
        count: json["count"],
        restaurants: List<Restaurant>.from((json["restaurants"] as List)
            .map((x) => Restaurant.fromJson(x))
            .where((Restaurant) =>
                Restaurant.name != null &&
                Restaurant.description != null &&
                Restaurant.pictureId != null &&
                Restaurant.city != null)),
      );
}

class Restaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'].toString(),
      name: json['name'].toString(),
      description: json['description'].toString(),
      pictureId: json['pictureId'].toString(),
      city: json['city'].toString(),
      rating: json['rating'].toDouble(),
    );
  }
}
