import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

class DeliveryStack extends StatelessWidget {
  const DeliveryStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 50),
        Column(
          children: [
            RichText(
                text: TextSpan(
              children: [
                const TextSpan(
                    text: 'ДОСТАВКА ', style: AppConstants.headlineSmall),
                TextSpan(
                  text: 'ПРАВИЛЬНОГО \n ПИТАНИЯ',
                  style: AppConstants.headlineSmall.copyWith(
                    color: AppConstants.darkPrimary,
                  ),
                ),
                const TextSpan(
                    text: ' НА ДОМ', style: AppConstants.headlineSmall),
              ],
            ))
          ],
        ),
        const Stack(),
      ],
    );
  }
}
