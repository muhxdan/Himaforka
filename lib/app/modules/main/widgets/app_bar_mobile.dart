import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({
    super.key,
    required this.scaffoldKEY,
    required this.controller,
  });

  final GlobalKey<ScaffoldState> scaffoldKEY;
  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var isDark = controller.isDark.value;
        return Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () => scaffoldKEY.currentState!.openDrawer(),
              padding: const EdgeInsets.all(10),
              icon: Icon(
                Icons.menu_rounded,
                size: 22.0,
                color: (isDark) ? Colors.white : const Color(0xff364150),
              ),
              splashRadius: 20,
            ));
      },
    );
  }
}
