import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class ShipPaymentWidget extends StatelessWidget {
  const ShipPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 860,
      color: const Color(0xFF032D3C),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LeftWidget(),
          const Flexible(
            fit: FlexFit.loose,
            child: SizedBox(width: 110),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 600,
                height: 385,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  border: Border.all(
                    color: AppConstants.lightPrimary,
                    width: 1,
                  ),
                ),
                child: Image.asset('assets/images/map.png'),
              ),
              const SizedBox(height: 35),
              Text(
                'Узнай, в какой зоне твой адрес:',
                style: AppConstants.text2.copyWith(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                width: 310,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6FFF6),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green, width: 1),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 8),
                        child: Image.asset('assets/images/point.png')),
                    hintText: 'Введите адрес',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LeftWidget extends StatelessWidget {
  const LeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Доставка',
                style: AppConstants.headlineSmall.copyWith(
                  color: AppConstants.darkPrimary,
                ),
              ),
              TextSpan(
                text: ' и оплата',
                style: AppConstants.headlineSmall.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'По городу и пригород до 50 км - бесплатно',
          style: AppConstants.text2.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 50),
        const _CustomCard(
          asset: 'assets/images/payment1.png',
          width: 280,
          title: 'Быстрая доставка',
          subtitle: 'Время ожидания курьера по адресу составляет 20 минут',
        ),
        const SizedBox(height: 15),
        const _CustomCard(
          asset: 'assets/images/payment2.png',
          width: 360,
          title: 'Оплата',
          subtitle:
              'Оплата производится наличными курьеру за недельный рацион, согласно выбранному тарифному плану',
        ),
        const SizedBox(height: 15),
        const _CustomCard(
          asset: 'assets/images/payment3.png',
          width: 330,
          title: 'Перенос заказа',
          subtitle:
              'Если Вам необходимо пропустить следующий день, необходимо до 14-00 сообщить об этом оператору',
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.width,
  });

  final double width;

  final String asset;

  final String title;

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 480,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: const Color(0xFFFAFFFA),
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
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Image.asset(asset),
            const SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppConstants.text5.copyWith(fontSize: 18)),
                const SizedBox(height: 7),
                SizedBox(
                  width: width,
                  height: 30,
                  child: Text(
                    subtitle,
                    style: AppConstants.text7.copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
