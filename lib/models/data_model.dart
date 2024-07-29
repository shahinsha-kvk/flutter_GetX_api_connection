// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Datamodel1> datamodelFromJson1(String str) => List<Datamodel1>.from(json.decode(str).map((x) => Datamodel1.fromJson(x)));

String datamodeltoJson1(List<Datamodel1> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Datamodel1 {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Datamodel1({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory Datamodel1.fromJson(Map<String, dynamic> json) => Datamodel1(
    id: json["id"],
    title: json["title"],
    price: json["price"].toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating?.toJson(),
  };
}

class Rating {
  double? rate;
  int? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"].toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}
