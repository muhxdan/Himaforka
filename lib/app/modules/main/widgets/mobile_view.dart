import 'package:flutter/material.dart';
import 'package:himaforka/app/modules/main/widgets/tab_view_section.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
    required this.scaffoldKEY,
    required this.controller,
  });

  final GlobalKey<ScaffoldState> scaffoldKEY;
  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBarViewSection(controller: controller),
      ],
    );
  }
}
