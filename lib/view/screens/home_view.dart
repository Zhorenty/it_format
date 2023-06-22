import 'package:flutter/material.dart';
import 'package:it_format/view/widget/web/delivery_stack.dart';

import '../widget/web/app_bar.dart';

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
                    const SizedBox(height: 180),
                    const DeliveryStack(),
                    const SizedBox(height: 1000)
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