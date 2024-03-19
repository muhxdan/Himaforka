import 'package:flutter/material.dart';
import 'package:himaforka/app/modules/main/widgets/tab_view_section.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    super.key,
    required this.controller,
    required this.context,
  });

  final MainController controller;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: TabBarViewSection(controller: controller),
      ),
    );
  }
}
