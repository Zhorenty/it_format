import 'dart:convert';

/// TODO: add docs
class Dish {
  Dish({
    required this.image,
    required this.name,
    required this.cal,
    required this.ingredients,
    required this.actualPrice,
    required this.oldPrice,
  });

  final String image;

  final String name;

  final double cal;

  final String ingredients;

  final double actualPrice;

  final double oldPrice;

  Dish copyWith({
    String? image,
    String? name,
    double? cal,
    String? ingredients,
    double? actualPrice,
    double? oldPrice,
  }) {
    return Dish(
      image: image ?? this.image,
      name: name ?? this.name,
      cal: cal ?? this.cal,
      ingredients: ingredients ?? this.ingredients,
      actualPrice: actualPrice ?? this.actualPrice,
      oldPrice: oldPrice ?? this.oldPrice,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'cal': cal,
      'ingredients': ingredients,
      'actualPrice': actualPrice,
      'oldPrice': oldPrice,
    };
  }

  factory Dish.fromMap(Map<String, dynamic> map) {
    return Dish(
      image: map['image'] as String,
      name: map['name'] as String,
      cal: map['cal'] as double,
      ingredients: map['ingredients'] as String,
      actualPrice: map['actualPrice'] as double,
      oldPrice: map['oldPrice'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dish.fromJson(String source) =>
      Dish.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Dish(image: $image, name: $name, cal: $cal, ingredients: $ingredients, actualPrice: $actualPrice, oldPrice: $oldPrice)';
  }

  @override
  bool operator ==(covariant Dish other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.name == name &&
        other.cal == cal &&
        other.ingredients == ingredients &&
        other.actualPrice == actualPrice &&
        other.oldPrice == oldPrice;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        name.hashCode ^
        cal.hashCode ^
        ingredients.hashCode ^
        actualPrice.hashCode ^
        oldPrice.hashCode;
  }
}
