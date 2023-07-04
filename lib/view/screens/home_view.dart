import 'package:flutter/material.dart';
import 'package:it_format/view/widget/web/categories.dart';
import 'package:it_format/view/widget/web/delivery_stack.dart';
import 'package:it_format/view/widget/web/how_to_order.dart';
import 'package:it_format/view/widget/web/new_products.dart';
import 'package:it_format/view/widget/web/rations.dart';
import 'package:it_format/view/widget/web/reviews.dart';
import 'package:it_format/view/widget/web/ship_payment.dart';
import 'package:it_format/view/widget/web/stock.dart';

import '../widget/web/app_bar.dart';
import '../widget/web/benefits.dart';
import '../widget/web/diet.dart';
import '../widget/web/news.dart';
import '../widget/web/questions.dart';

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
                    const SizedBox(height: 55),
                    const NewProduct(),
                    const SizedBox(height: 250),
                    const RationsWidget(),
                    const SizedBox(height: 240),
                    const HowToOrderWidget(),
                    const SizedBox(height: 120),
                    const ReviewsWidget(),
                    const SizedBox(height: 200),
                    const StockWidget(),
                    const SizedBox(height: 120),
                    const ShipPaymentWidget(),
                    const SizedBox(height: 60),
                    const QuestionsWidget(),
                    const SizedBox(height: 100),
                    const NewsWidget(),
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
