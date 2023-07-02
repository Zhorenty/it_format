import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

/// TODO: docs
class DishCard extends StatelessWidget {
  const DishCard({
    super.key,
    this.child,
    required this.name,
    required this.cal,
    required this.ingridient,
    required this.actualPrice,
    required this.oldPrice,
  });

  ///
  final Widget? child;

  ///
  final String name;

  ///
  final double cal;

  ///
  final String ingridient;

  ///
  final double actualPrice;

  ///
  final double oldPrice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      width: 260,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: AppConstants.lightPrimary,
          ),
        ),
        color: const Color(0xFFFAFFFA),
        child: Row(
          children: [
            const SizedBox(width: 11),
            SizedBox(
              height: 70,
              width: 70,
              child: CircleAvatar(
                child: Image.asset(
                  'assets/images/primary_plate.png',
                ),
              ),
            ),
            const SizedBox(width: 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 9),
                Text(
                  name,
                  style: AppConstants.text4.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  '${cal.toString()} ккал',
                  style: AppConstants.text2.copyWith(
                    fontSize: 6.4,
                    color: AppConstants.darkPrimary,
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  height: 0.5,
                  width: 58,
                  color: Colors.grey.withOpacity(0.5),
                ),
                const SizedBox(height: 2),
                SizedBox(
                  width: 125,
                  height: 20,
                  child: Text(
                    ingridient,
                    style: AppConstants.text1.copyWith(
                      fontSize: 7,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  height: 0.5,
                  width: 80,
                  color: Colors.grey.withOpacity(0.5),
                ),
                Row(
                  children: [
                    Text(
                      '${actualPrice.toString()}₽',
                      style: AppConstants.text5.copyWith(
                        color: AppConstants.darkPrimary,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '${oldPrice.toString()}₽',
                      style: AppConstants.text2.copyWith(
                        fontSize: 8,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 25),
                    const Icon(
                      size: 8,
                      Icons.favorite_outline,
                      color: AppConstants.darkPrimary,
                    ),
                    const SizedBox(width: 3),
                    const Icon(
                      size: 8,
                      Icons.shopping_cart_outlined,
                      color: AppConstants.darkPrimary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
