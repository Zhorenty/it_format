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
        const Text('В любое место и время!'),
        const SizedBox(height: 75),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CustomCard(
              title: 'Выбираете рацион',
              body:
                  'Все блюда разделены по типу: завтраки, салаты, горячие блюда, десерты.',
            ),
            SizedBox(width: 25),
            _CustomCard(
              title: 'Ожидаете курьера',
              body:
                  'Доставка рационов осуществляется каждый день в удобное для вас место.',
            ),
            SizedBox(width: 25),
            _CustomCard(
              title: 'Наслаждаетесь',
              body: 'Приятного аппетита!',
            ),
          ],
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.title, required this.body});

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
          const Icon(
            Icons.schedule,
            size: 130,
            color: AppConstants.darkPrimary,
          ),
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
