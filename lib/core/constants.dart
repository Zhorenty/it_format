import 'package:flutter/material.dart';

import '../model/dish.dart';

/// Constants of the application.
class AppConstants {
  /// TODO: add url images
  static List<Dish> dishes = [
    Dish(
      image: '',
      name: 'Рис с овощами и рыбой',
      cal: 300,
      ingredients: 'Листья салата, пекинская капуста, яйцо, авакадо, помидоры',
      actualPrice: 450,
      oldPrice: 500,
    ),
    Dish(
      image: '',
      name: 'Салат с яйцом и фасолью',
      cal: 200,
      ingredients: 'Листья салата, морковь, яйцо, фасоль, тушеная капуста',
      actualPrice: 300,
      oldPrice: 350,
    ),
    Dish(
      image: '',
      name: 'Свежий летний салат',
      cal: 200,
      ingredients: 'Листья салата, пекинская капуста, яйцо, авакадо, орехи',
      actualPrice: 250,
      oldPrice: 300,
    ),
  ];

  /// Light color of primary color.
  static const Color lightPrimary = Color(0xFFCEFFCE);

  /// Primary color of application.
  static const Color primary = Color(0xFF5AFF15);

  /// Dark color of primary color.
  static const Color darkPrimary = Color(0xFF32CD32);

  ///
  static const Color onPrimary = Colors.white;

  /// Secondary color of application.
  static const Color secondary = Color(0xFF032D3C);

  /// Light color of secondary color.
  static const Color lightSecondary = Color(0xFF626262);

  /// TODO: docs
  static const TextStyle headline = TextStyle(
    fontFamily: 'Jost',
    fontSize: 45,
    fontWeight: FontWeight.w600,
    color: secondary,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: 'Jost',
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: secondary,
  );

  static const TextStyle text1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: secondary,
  );

  static const TextStyle text2 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: secondary,
  );

  static const TextStyle text3 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: secondary,
  );

  static const TextStyle text4 = TextStyle(
    fontFamily: 'Jost',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: secondary,
  );

  static const TextStyle text5 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: secondary,
  );

  static const TextStyle text6 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: lightSecondary,
  );

  static const TextStyle text7 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: secondary,
  );
}
