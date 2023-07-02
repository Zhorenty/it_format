import 'package:flutter/material.dart';
import 'package:it_format/core/constants.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width / 20,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'assets/images/cocktail.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 656,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF03161B),
                  Color(0xFF03161B),
                  Color(0xFF03161B),
                  Color(0xFF03161B),
                  Color(0xFF03161B),
                  Colors.transparent,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 85),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'НОВИНКИ',
                        style: AppConstants.headline.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: ' МЕНЮ!',
                        style: AppConstants.headline.copyWith(
                          color: AppConstants.darkPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 27),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Детокс',
                        style: AppConstants.headlineSmall.copyWith(
                          color: AppConstants.darkPrimary,
                        ),
                      ),
                      TextSpan(
                        text: ' программа',
                        style: AppConstants.headlineSmall.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    const Icon(
                      Icons.timelapse,
                      color: AppConstants.darkPrimary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '5 дней',
                      style: AppConstants.text7.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Icon(
                      Icons.fireplace,
                      color: AppConstants.darkPrimary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '1 200 кКал',
                      style: AppConstants.text7.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 86,
                      width: 526,
                      child: Text(
                        'Программа очищения, состоящая из смузи-коктейлей. В составе натуральные продукты с прекрасным вкусовым сочетанием',
                        style: AppConstants.text7.copyWith(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: AppConstants.darkPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  'от 1 500 ₽',
                  style:
                      AppConstants.headlineSmall.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 210,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: AppConstants.darkPrimary.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConstants.darkPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        child: Text(
                          'Заказать',
                          style: AppConstants.headlineSmall.copyWith(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 21),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Подробнее',
                            style: AppConstants.headlineSmall.copyWith(
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                              color: AppConstants.darkPrimary,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 17,
                            color: AppConstants.darkPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
