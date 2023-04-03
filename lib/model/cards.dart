// To parse this JSON data, do
//
//     final cards = cardsFromJson(jsonString);

import 'dart:convert';

List<Cards> cardsFromJson(String str) => List<Cards>.from(json.decode(str).map((x) => Cards.fromJson(x)));

String cardsToJson(List<Cards> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cards {
  Cards({
    required this.name,
    required this.brand,
    required this.image,
    required this.desc,
  });

  String name;
  String brand;
  String image;
  String desc;

  factory Cards.fromJson(Map<String, dynamic> json) => Cards(
    name: json["name"],
    brand: json["brand"],
    image: json["image"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "brand": brand,
    "image": image,
    "desc": desc,
  };
}
