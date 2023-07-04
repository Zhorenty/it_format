import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class HowToOrderWidget extends StatelessWidget {
  const HowToOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Как оформить',
                style: AppConstants.headlineSmall,
              ),
              TextSpan(
                text: ' заказ',
                style: AppConstants.headlineSmall.copyWith(
                  color: AppConstants.darkPrimary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        const Text('В любое место и время!', style: AppConstants.text2),
        const SizedBox(height: 75),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CustomCard(
              title: 'Выбираете рацион',
              body:
                  'Все блюда разделены по типу: завтраки, салаты, горячие блюда, десерты.',
              child: Icon(
                Icons.event_rounded,
                size: 130,
                color: AppConstants.darkPrimary,
              ),
            ),
            SizedBox(width: 25),
            _CustomCard(
              title: 'Ожидаете курьера',
              body:
                  'Доставка рационов осуществляется каждый день в удобное для вас место.',
              child: Icon(
                Icons.directions_car,
                size: 130,
                color: AppConstants.darkPrimary,
              ),
            ),
            SizedBox(width: 25),
            _CustomCard(
              title: 'Наслаждаетесь',
              body: 'Приятного аппетита!',
              child: Icon(
                Icons.restaurant_rounded,
                size: 130,
                color: AppConstants.darkPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    required this.title,
    required this.body,
    this.child,
  });

  // final IconData? icon;

  final Widget? child;

  final String title;

  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 410,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: AppConstants.lightPrimary,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppConstants.darkPrimary.withOpacity(0.06),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 65),
          child!,
          const SizedBox(height: 65),
          Text(
            title,
            style: AppConstants.text5.copyWith(fontSize: 24),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 70,
            width: 335,
            child: Text(
              body,
              style: AppConstants.text6.copyWith(
                fontSize: 16,
                color: const Color(0xFF626262),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
