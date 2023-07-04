import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Выбирайте',
                    style: AppConstants.headlineSmall,
                  ),
                  TextSpan(
                    text: ' по категориям',
                    style: AppConstants.headlineSmall.copyWith(
                      color: AppConstants.darkPrimary,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 100),
          ],
        ),
        const SizedBox(height: 50),
        const SizedBox(
          height: 235,
          child: Wrap(
            children: [
              _CategoryStack(
                image: 'assets/images/category1.png',
                color: Color(0xFFFEEFEA),
                category: 'Салаты',
                count: 20,
              ),
              SizedBox(width: 15),
              _CategoryStack(
                image: 'assets/images/category2.png',
                color: Color(0xFFFFF3FF),
                category: 'Гарниры',
                count: 220,
              ),
              SizedBox(width: 15),
              _CategoryStack(
                image: 'assets/images/category3.png',
                color: Color(0xFFF2FCE4),
                category: 'Супы',
                count: 10,
              ),
              SizedBox(
                width: 15,
              ),
              _CategoryStack(
                image: 'assets/images/category4.png',
                color: Color(0xFFFEEFEA),
                category: 'ПП выпечка',
                count: 40,
              ),
              SizedBox(width: 15),
              _CategoryStack(
                image: 'assets/images/category5.png',
                color: Color(0xFFECFFEC),
                category: 'Напитки',
                count: 23,
              ),
              SizedBox(width: 15),
              _CategoryStack(
                image: 'assets/images/category6.png',
                color: Color(0xFFFFFAE0),
                category: 'Морепродукты',
                count: 3,
              ),
              SizedBox(width: 15),
              _CategoryStack(
                image: 'assets/images/category2.png',
                color: Color(0xFFDEF9EC),
                category: 'Соусы',
                count: 9,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryStack extends StatelessWidget {
  const _CategoryStack({
    this.image,
    this.category = '',
    this.count = 5,
    required this.color,
  });

  final Color color;

  final String? image;

  final String category;

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              width: 160,
              height: 50,
            ),
            Container(
              width: 160,
              height: 175,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                boxShadow: [
                  BoxShadow(
                    color: AppConstants.darkPrimary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    category,
                    style: AppConstants.text5.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$count элементов',
                    style: AppConstants.text1.copyWith(
                      fontSize: 12,
                      color: AppConstants.darkPrimary,
                    ),
                  ),
                  const SizedBox(height: 37),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          top: 0,
          child: Image.asset(height: 114, width: 114, '$image'),
        ),
      ],
    );
  }
}
