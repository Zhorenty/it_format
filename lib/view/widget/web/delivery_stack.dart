import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';
import 'package:it_format/view/widget/web/dish_card.dart';

class DeliveryStack extends StatelessWidget {
  const DeliveryStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: 110,
              left: 870,
              child: Transform.rotate(
                angle: 50,
                child: SizedBox(
                  width: 260,
                  height: 285,
                  child: Image.asset('assets/images/leafs.png'),
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 1240,
              child: Transform.rotate(
                angle: 50,
                child: SizedBox(
                  width: 170,
                  height: 260,
                  child: Image.asset('assets/images/beans.png'),
                ),
              ),
            ),
            Positioned(
              left: 1150,
              top: 150,
              child: Image.asset('assets/images/thirdy_image.png'),
            ),
            Positioned(
              left: 720,
              top: 210,
              child: Image.asset('assets/images/secondary_plate.png'),
            ),
            Positioned(
              left: 870,
              top: 210,
              child: Image.asset('assets/images/primary_plate.png'),
            ),
            Column(
              children: [
                const SizedBox(height: 180),
                Row(
                  children: [
                    const SizedBox(width: 130),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'ДОСТАВКА ',
                                style: AppConstants.headlineSmall,
                              ),
                              TextSpan(
                                text: 'ПРАВИЛЬНОГО \nПИТАНИЯ',
                                style: AppConstants.headlineSmall.copyWith(
                                  color: AppConstants.darkPrimary,
                                ),
                              ),
                              const TextSpan(
                                text: ' НА ДОМ',
                                style: AppConstants.headlineSmall,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 21),
                        const Text(
                          'Cбалансированные рационы питания \nс суточной нормой витаминов доставкой на дом',
                          style: AppConstants.text6,
                        ),
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 44,
                              width: 171,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppConstants.darkPrimary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Text(
                                  'Заказать',
                                  style: AppConstants.headlineSmall.copyWith(
                                    fontSize: 18,
                                    color: AppConstants.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 44,
                              width: 200,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: AppConstants.darkPrimary,
                                    width: 1.25,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: const Text(
                                  'Подобрать рацион',
                                  style: AppConstants.text4,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 65),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Популярные ',
                                  style: AppConstants.text4
                                      .copyWith(fontSize: 26)),
                              TextSpan(
                                text: 'блюда',
                                style: AppConstants.text4.copyWith(
                                  fontSize: 26,
                                  color: AppConstants.darkPrimary,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 110,
                          width: 1000,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: AppConstants.dishes.length,
                            itemBuilder: (context, index) {
                              final dish = AppConstants.dishes[index];

                              return Row(
                                children: [
                                  DishCard(
                                    asset: dish.image,
                                    name: dish.name,
                                    cal: dish.cal,
                                    ingridient: dish.ingredients,
                                    actualPrice: dish.actualPrice,
                                    oldPrice: dish.oldPrice,
                                  ),
                                  const SizedBox(width: 20),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
