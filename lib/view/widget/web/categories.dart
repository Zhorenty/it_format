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
        const SizedBox(height: 55),
        const Row(
          children: [
            SizedBox(width: 135),
            _CategoryStack(),
          ],
        ),
      ],
    );
  }
}

class _CategoryStack extends StatelessWidget {
  const _CategoryStack();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 175,
          decoration: const BoxDecoration(
            color: Color(0xFFFEEFEA),
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Салаты',
                style: AppConstants.text5.copyWith(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                ),
              ),
              Text(
                '20 элементов',
                style: AppConstants.text1.copyWith(fontSize: 12),
              ),
              const SizedBox(height: 37),
            ],
          ),
        ),
        Positioned(
          left: 16,
          child: Image.asset(
            height: 114,
            width: 114,
            'assets/images/primary_plate.png',
          ),
        ),
      ],
    );
  }
}
