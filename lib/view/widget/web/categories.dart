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
        SizedBox(
          height: 225,
          width: MediaQuery.sizeOf(context).width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(width: 135),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
              SizedBox(width: 25),
              _CategoryStack(category: 'Салаты', count: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryStack extends StatelessWidget {
  const _CategoryStack({
    this.image = 'assets/images/primary_plate.png',
    this.category = '',
    this.count = 5,
  });

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
                color: const Color(0xFFFEEFEA),
                borderRadius: BorderRadius.all(Radius.circular(7)),
                boxShadow: [
                  BoxShadow(
                    color: AppConstants.darkPrimary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
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
          child: Image.asset(height: 170, width: 140, '$image'),
        ),
      ],
    );
  }
}
