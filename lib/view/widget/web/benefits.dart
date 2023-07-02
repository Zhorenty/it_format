import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class BenefitsWidget extends StatelessWidget {
  const BenefitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Почему именно',
                style: AppConstants.headlineSmall,
              ),
              TextSpan(
                text: ' мы',
                style: AppConstants.headlineSmall.copyWith(
                  color: AppConstants.darkPrimary,
                ),
              ),
              const TextSpan(
                text: '?',
                style: AppConstants.headlineSmall,
              )
            ],
          ),
        ),
        const SizedBox(height: 65),
        SizedBox(
          height: 217,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 7,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BenefitContainer(
                  title: 'Лучшие продукты',
                  subtitle: '100% натуральный состав и свежие продукты',
                ),
                SizedBox(width: 30),
                BenefitContainer(
                  title: 'Индивидуальный подход',
                  subtitle: 'Подбор программы в соответствии с вашей целью',
                ),
                SizedBox(width: 30),
                BenefitContainer(
                  title: 'Быстрая доставка',
                  subtitle: 'Каждый день в удобное для вас время',
                ),
                SizedBox(width: 30),
                BenefitContainer(
                  title: 'Забота об экологии',
                  subtitle: 'Принимаем контайнеры на переработку',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BenefitContainer extends StatelessWidget {
  const BenefitContainer({
    super.key,
    this.iconAsset = const Icon(Icons.shop),
    this.title = '',
    this.subtitle = '',
  });

  final Icon iconAsset;

  final String title;

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppConstants.lightPrimary,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: AppConstants.darkPrimary.withOpacity(0.06),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 27),
          const Icon(Icons.shop, size: 50, color: AppConstants.darkPrimary),
          const SizedBox(height: 28),
          Text(
            title,
            style: AppConstants.text4,
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 50,
            width: 230,
            child: Text(
              subtitle,
              style: AppConstants.text3,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
