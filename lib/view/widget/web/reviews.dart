import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 570,
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0xFF032D3C),
              child: Column(
                children: [
                  const SizedBox(height: 140),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Отзывы наших',
                          style: AppConstants.headlineSmall.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: ' клиентов',
                          style: AppConstants.headlineSmall.copyWith(
                            color: AppConstants.darkPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 85),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            '20%',
                            style: AppConstants.text5.copyWith(
                              fontSize: 60,
                              color: AppConstants.darkPrimary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Скидки каждый месяц',
                            style: AppConstants.text3.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            '2 000+',
                            style: AppConstants.text5.copyWith(
                              fontSize: 60,
                              color: AppConstants.darkPrimary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Клиентов',
                            style: AppConstants.text3.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            '500+',
                            style: AppConstants.text5.copyWith(
                              fontSize: 60,
                              color: AppConstants.darkPrimary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Положительных отзывов',
                            style: AppConstants.text3.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
            )
          ],
        ),
        Positioned(
          top: 450,
          width: MediaQuery.sizeOf(context).width,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CustomCard(
                asset: 'assets/images/user1.png',
                name: 'Виктория',
                age: '25',
                description:
                    'Потрясающая доставка! Очень вкусно, а главное полезно! Пришла в форму за месяц.',
              ),
              SizedBox(width: 30),
              _CustomCard(
                asset: 'assets/images/user2.png',
                height: 220,
                name: 'Анна',
                age: '35',
                description:
                    'Готовый рацион на целый день, без лишней траты времени и грязной посуды. Как же это удобно , а главное очень вкусно!',
              ),
              SizedBox(width: 30),
              _CustomCard(
                asset: 'assets/images/user3.png',
                name: 'Полина',
                age: '30',
                description:
                    'Результат за короткое время! Очень здорово! Очень удобно, пользуюсь постоянно.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    this.height = 200,
    this.name = '',
    this.age = '',
    this.description = '',
    required this.asset,
  });

  final String asset;

  final double? height;

  final String name;

  final String age;

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 385,
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
        color: const Color(0xFFFAFFFA),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(asset),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppConstants.text5.copyWith(fontSize: 22),
                ),
                const SizedBox(height: 12),
                Text(
                  '$age лет',
                  style: AppConstants.text6.copyWith(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: 261,
                  height: 67,
                  child: Text(
                    description,
                    style: AppConstants.text6.copyWith(fontSize: 14),
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
