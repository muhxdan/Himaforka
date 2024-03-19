import 'package:flutter/material.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';

class TabBarViewSection extends StatelessWidget {
  const TabBarViewSection({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.controller,
      // children: controller.isLogin.value
      //     ? controller.tabScreens
      //     : controller.tabScreens.sublist(0, 3),
      children: controller.tabScreens,
    );
  }
}
