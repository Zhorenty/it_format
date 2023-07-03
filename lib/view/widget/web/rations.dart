import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class RationsWidget extends StatelessWidget {
  const RationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // TODO: add leather from figma
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Готовые',
                    style: AppConstants.headlineSmall,
                  ),
                  TextSpan(
                    text: ' рационы',
                    style: AppConstants.headlineSmall.copyWith(
                      color: AppConstants.darkPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        const Text(
          'Вы можете исключить любой ингридиент,\n блюдо или тип блюда по желанию',
          style: AppConstants.text2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 122),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RationCard(
              headline: '1 000 ккал 3х-разовое',
              inverted: false,
              label:
                  'Рацион состоит из 3 блюд на 850 ккал и суточной нормой всех витаминов. Предназначено для быстрого снижения веса.',
              price: '1 000',
            ),
            SizedBox(width: 30),
            RationCard(
              headline: '2 000 ккал 4х-разовое',
              inverted: true,
              label:
                  'Рацион состоит из 4 блюд на 2 000 ккал и суточной нормой всех витаминов. Предназначено для поддержания желаемого веса.',
              price: '1 900',
            ),
            SizedBox(width: 30),
            RationCard(
              headline: '1 200 ккал 3х-разовое',
              inverted: false,
              label:
                  'Рацион состоит из 3 блюд на 850 ккал и суточной нормой всех витаминов. Предназначено для быстрого снижения веса.',
              price: '1 200',
            ),
          ],
        )
      ],
    );
  }
}

class RationCard extends StatelessWidget {
  const RationCard({
    super.key,
    required this.headline,
    required this.label,
    required this.price,
    required this.inverted,
  });

  final String headline;

  final String label;

  final String price;

  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        color: inverted ? AppConstants.darkPrimary : Colors.white,
      ),
      height: 635,
      width: 380,
      child: Column(
        children: [
          SizedBox(
            height: 237,
            width: 378,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/cocktail.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 26),
          Text(
            headline,
            style: AppConstants.text4.copyWith(
              color: inverted ? Colors.white : AppConstants.darkPrimary,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 88,
            width: 280,
            child: Text(
              label,
              style: AppConstants.text3.copyWith(
                color: inverted ? Colors.white : AppConstants.darkPrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 34),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$price ₽',
                  style: AppConstants.headlineSmall.copyWith(
                    color: inverted ? Colors.white : AppConstants.darkPrimary,
                  ),
                ),
                TextSpan(
                  text: '/ в день',
                  style: AppConstants.text2.copyWith(
                    color: inverted ? Colors.white : AppConstants.darkPrimary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 70,
            width: 295,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    inverted ? Colors.white : AppConstants.darkPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Заказать',
                style: AppConstants.headlineSmall.copyWith(
                  fontSize: 17,
                  color: inverted ? AppConstants.darkPrimary : Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
