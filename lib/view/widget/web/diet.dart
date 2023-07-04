import 'package:flutter/material.dart';

import '../../../core/constants.dart';

final List<String> kkal = <String>[
  '   2000 ккал',
  '   5000 ккал',
  '   10000 ккал'
];

final List<String> days = <String>[
  '   Понедельник',
  '   Вторник',
  '   Среда',
  '   Четверг',
  '   Пятница',
  '   Суббота',
  '   Воскресенье',
];

class DietWidget extends StatelessWidget {
  const DietWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Выберите',
                style: AppConstants.headlineSmall,
              ),
              TextSpan(
                text: ' рацион',
                style: AppConstants.headlineSmall.copyWith(
                  color: AppConstants.darkPrimary,
                ),
              ),
              const TextSpan(
                text: ', который\n подходит именно вам?',
                style: AppConstants.headlineSmall,
              )
            ],
          ),
        ),
        const SizedBox(height: 80),
        Row(
          children: [
            const SizedBox(width: 122),
            const _CategoryButton(category: 'Салаты'),
            const SizedBox(width: 15),
            const _CategoryButton(category: 'Гарниры'),
            const SizedBox(width: 15),
            const _CategoryButton(category: 'Супы'),
            const SizedBox(width: 15),
            const _CategoryButton(category: 'ПП выпечка'),
            const SizedBox(width: 15),
            const _CategoryButton(category: 'Напитки'),
            const Flexible(fit: FlexFit.loose, child: SizedBox(width: 230)),
            SizedBox(
              height: 41,
              width: 395,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                  ),
                  hintText: 'Название блюда',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 18,
                    color: AppConstants.lightSecondary,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                style: AppConstants.text6.copyWith(fontSize: 13),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
        const SizedBox(height: 50),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _TypeButton(type: 'Стандартный'),
            _TypeButton(type: 'Премиум'),
            _TypeButton(type: 'Самостоятельный'),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 180,
          width: MediaQuery.sizeOf(context).width,
          color: AppConstants.lightPrimary.withOpacity(0.5),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(width: 156),
                  Text(
                    'Кол-во каллорий',
                    style: AppConstants.text4.copyWith(fontSize: 15),
                  ),
                  const SizedBox(width: 112),
                  Text(
                    'Дни недели',
                    style: AppConstants.text4.copyWith(fontSize: 15),
                  ),
                  const SizedBox(width: 135),
                  Text(
                    'Количество дней',
                    style: AppConstants.text4.copyWith(fontSize: 15),
                  ),
                  const SizedBox(width: 98),
                  Text(
                    'Количество персон',
                    style: AppConstants.text4.copyWith(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 122),
                  _CustomDropDown(items: kkal, dropdownValue: kkal.first),
                  const SizedBox(width: 40),
                  _CustomDropDown(
                    items: days,
                    dropdownValue: days.first,
                    width: 45,
                  ),
                  const SizedBox(width: 40),
                  const Row(
                    children: [
                      CircleButton(label: '2'),
                      CircleButton(label: '3'),
                      CircleButton(label: '5', inverted: true),
                      CircleButton(label: '6'),
                      CircleButton(label: '7'),
                    ],
                  ),
                  const SizedBox(width: 43),
                  const Row(
                    children: [
                      CircleButton(label: '1', inverted: true),
                      CircleButton(label: '3'),
                      CircleButton(label: '6'),
                    ],
                  ),
                  const Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(width: 80),
                  ),
                  SizedBox(
                    width: 161,
                    height: 39,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppConstants.darkPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Подобрать',
                        style: AppConstants.headlineSmall.copyWith(
                          fontSize: 13.7,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 27),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Подробнее',
                          style: AppConstants.headlineSmall.copyWith(
                            fontSize: 13.7,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: AppConstants.darkPrimary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.label, this.inverted = false});

  final String label;

  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppConstants.darkPrimary),
        ),
        child: Material(
          color: inverted ? AppConstants.darkPrimary : Colors.white,
          type: MaterialType.circle,
          child: Center(
            child: Text(
              label,
              style: AppConstants.text4.copyWith(
                color: inverted ? Colors.white : const Color(0xFF032D3C),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// TODO: should be remove
// ignore: must_be_immutable
class _CustomDropDown extends StatefulWidget {
  _CustomDropDown({
    required this.items,
    required this.dropdownValue,
    this.width = 65,
  });

  String dropdownValue;

  final List<String> items;

  final double width;

  @override
  State<_CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<_CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 175,
      decoration: BoxDecoration(
        border: Border.all(color: AppConstants.darkPrimary, width: 0.5),
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        underline: const SizedBox(),
        value: widget.dropdownValue,
        icon: Row(
          children: [
            SizedBox(width: widget.width),
            const Icon(Icons.arrow_drop_down, color: AppConstants.darkPrimary),
          ],
        ),
        style: const TextStyle(color: AppConstants.lightSecondary),
        onChanged: (String? value) {
          setState(() {
            widget.dropdownValue = value!;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppConstants.text6.copyWith(fontSize: 12.5),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _TypeButton extends StatelessWidget {
  const _TypeButton({required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: 198,
      child: TextButton(
        onPressed: () {},
        child: Text(
          type,
          style: AppConstants.text4.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}

class _CategoryButton extends StatefulWidget {
  const _CategoryButton({required this.category});

  final String category;

  @override
  State<_CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<_CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 121.5,
      height: 29,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppConstants.darkPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(widget.category),
      ),
    );
  }
}
