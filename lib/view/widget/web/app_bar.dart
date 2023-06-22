import 'package:flutter/material.dart';

import '/core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        _PrimaryBar(),
        SizedBox(height: 20),
        _SecondaryBar(),
      ],
    );
  }
}

class _PrimaryBar extends StatelessWidget {
  const _PrimaryBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(),
        Row(
          children: [
            Transform(
              transform: Matrix4.identity()..scale(-1, 1, 1),
              child: const Icon(
                Icons.energy_savings_leaf_outlined,
                color: AppConstants.primary,
                size: 35,
              ),
            ),
            ShaderMask(
              shaderCallback: (bounds) {
                return const LinearGradient(
                  colors: [
                    AppConstants.primary,
                    AppConstants.darkPrimary,
                  ],
                ).createShader(Offset.zero & bounds.size);
              },
              child: Text(
                'HealhyFood',
                style: AppConstants.text2.copyWith(
                  color: AppConstants.lightPrimary,
                ),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: AppConstants.darkPrimary,
            ),
            SizedBox(width: 5),
            Text('Выбрать город', style: AppConstants.text2),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.phone, color: AppConstants.darkPrimary, size: 20),
            SizedBox(width: 5),
            Text('8-(960)-456-78-90', style: AppConstants.text2),
          ],
        ),
        const SizedBox(),
        const Row(
          children: [
            Icon(Icons.person_2_outlined, color: AppConstants.darkPrimary),
            SizedBox(width: 10),
            Icon(Icons.shopping_cart_outlined, color: AppConstants.darkPrimary),
          ],
        ),
      ],
    );
  }
}

class _SecondaryBar extends StatelessWidget {
  const _SecondaryBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'О нас',
          style: AppConstants.text2,
        ),
        const SizedBox(width: 40),
        const Text('Как мы работаем', style: AppConstants.text2),
        const SizedBox(width: 40),
        Text('Меню',
            style:
                AppConstants.text2.copyWith(color: AppConstants.darkPrimary)),
        const SizedBox(width: 40),
        const Text('Как оформить заказ', style: AppConstants.text2),
        const SizedBox(width: 40),
        const Text('Доставка и оплата', style: AppConstants.text2),
      ],
    );
  }
}
