import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';

class ThemeButton extends StatelessWidget {
  final bool isDark;
  final MainController controller;
  const ThemeButton({
    super.key,
    required this.isDark,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: (isDark)
            ? const Color.fromARGB(255, 40, 40, 46)
            : Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: () {
          Get.changeThemeMode(
            Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
          );
          controller.isDarkMode();
        },
        icon: (isDark)
            ? SvgPicture.asset(
                "assets/images/sun.svg",
                width: 18,
              )
            : SvgPicture.asset(
                "assets/images/moon.svg",
                width: 15,
              ),
      ),
    );
  }
}
