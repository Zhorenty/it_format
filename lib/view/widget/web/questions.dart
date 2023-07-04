import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Часто задаваемые',
                style: AppConstants.headlineSmall,
              ),
              TextSpan(
                text: ' вопросы',
                style: AppConstants.headlineSmall.copyWith(
                  color: AppConstants.darkPrimary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              width: 185,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(color: AppConstants.darkPrimary),
                ),
                onPressed: () {},
                child: Text(
                  'Доставка',
                  style: AppConstants.text4.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            SizedBox(
              height: 45,
              width: 185,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: AppConstants.darkPrimary,
                ),
                onPressed: () {},
                child: Text(
                  'Питание',
                  style: AppConstants.text4.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            SizedBox(
              height: 45,
              width: 185,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  side: const BorderSide(color: AppConstants.darkPrimary),
                ),
                onPressed: () {},
                child: Text(
                  'Результаты',
                  style: AppConstants.text4.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 90),
        SizedBox(
          height: 80,
          width: 950,
          child: ExpansionTile(
            iconColor: AppConstants.darkPrimary,
            collapsedIconColor: AppConstants.darkPrimary,
            title: Text(
              'Какая программа подойдет лично мне?',
              style: AppConstants.text3.copyWith(fontSize: 28),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 950,
          child: ExpansionTile(
            iconColor: AppConstants.darkPrimary,
            collapsedIconColor: AppConstants.darkPrimary,
            title: Text(
              'Можно ли подогревать блюда в контейнерах?',
              style: AppConstants.text3.copyWith(fontSize: 28),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 950,
          child: ExpansionTile(
            iconColor: AppConstants.darkPrimary,
            collapsedIconColor: AppConstants.darkPrimary,
            title: Text(
              'Как готовятся блюда?',
              style: AppConstants.text3.copyWith(fontSize: 28),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 950,
          child: ExpansionTile(
            iconColor: AppConstants.darkPrimary,
            collapsedIconColor: AppConstants.darkPrimary,
            title: Text(
              'Срок хранения наших блюд',
              style: AppConstants.text3.copyWith(fontSize: 28),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          width: 950,
          child: ExpansionTile(
            iconColor: AppConstants.darkPrimary,
            collapsedIconColor: AppConstants.darkPrimary,
            title: Text(
              'Консультации специалистов',
              style: AppConstants.text3.copyWith(fontSize: 28),
            ),
          ),
        ),
      ],
    );
  }
}
