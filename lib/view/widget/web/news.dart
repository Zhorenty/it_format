import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 525,
      color: const Color(0xFF032D3C),
      child: Column(
        children: [
          const _MainContent(),
          const SizedBox(height: 20),
          const Divider(color: Colors.grey),
          const SizedBox(height: 40),
          Text(
            '© HealthyFood Delivery 2022',
            style: AppConstants.text2.copyWith(
              color: const Color(0xFFA0A3A9),
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '+7 (123) 45-67-89',
                style: AppConstants.headlineSmall.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Заказать обратный звонок',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: AppConstants.darkPrimary,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 18),
              const Row(
                children: [
                  Icon(Icons.circle, size: 45, color: Colors.white),
                  SizedBox(width: 15),
                  Icon(Icons.circle, size: 45, color: Colors.white),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Вопросы',
                style: AppConstants.headlineSmall.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Оплата',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Вопросы',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Отзывы',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Оплата',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Поддержка',
                style: AppConstants.headlineSmall.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Оферта',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Контакты',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Политика\nконфидециальности',
                style: AppConstants.text1.copyWith(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Рассылка новостей',
                        style: AppConstants.headlineSmall.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Подпишитесь на рассылку новостей',
                        style: AppConstants.text1.copyWith(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        padding: const EdgeInsets.only(left: 10, bottom: 12),
                        height: 40,
                        width: 335,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Stack(
                          children: [
                            TextField(
                              style: AppConstants.text1.copyWith(
                                color: const Color(0xFFA5A5A5),
                                fontSize: 13.5,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Введите E-mail',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 79,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    width: 100,
                    height: 33,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: AppConstants.darkPrimary,
                      ),
                      child: Center(
                        child: Text(
                          'Отправить',
                          style: AppConstants.text4.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
