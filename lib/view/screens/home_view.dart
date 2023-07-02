import 'package:flutter/material.dart';
import 'package:it_format/view/widget/web/categories.dart';
import 'package:it_format/view/widget/web/delivery_stack.dart';

import '../widget/web/app_bar.dart';
import '../widget/web/benefits.dart';
import '../widget/web/diet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const CustomAppBar(),
                    const DeliveryStack(),
                    const SizedBox(height: 120),
                    const CategoriesWidget(),
                    const SizedBox(height: 160),
                    const BenefitsWidget(),
                    const SizedBox(height: 160),
                    const DietWidget(),
                    const SizedBox(height: 1000),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
