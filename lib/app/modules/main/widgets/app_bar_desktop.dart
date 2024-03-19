import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';
import 'package:himaforka/app/widgets/custom_elevated_button.dart';

import '../../../routes/app_pages.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({
    super.key,
    required this.controller,
  });

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var isDark = controller.isDark.value;
        return Row(
          children: [
            TabBar(
              controller: controller.controller,
              tabs: controller.mytab,
              // tabs: controller.isLogin.value
              //     ? controller.mytab
              //     : controller.mytab.sublist(0, 3),
              unselectedLabelColor:
                  (isDark) ? Colors.white : const Color(0xff364150),
              labelColor: (isDark)
                  ? const Color(0xff818CF8)
                  : Theme.of(context).primaryColor,
              labelStyle: Theme.of(context).textTheme.bodyMedium,
              indicator: const BoxDecoration(),
              dividerColor: Colors.transparent,
              isScrollable: true,
              indicatorPadding: EdgeInsets.zero,
              splashBorderRadius: BorderRadius.circular(10),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : (isDark)
                          ? const Color(0xff1e1f23)
                          : Theme.of(context).primaryColor.withOpacity(0.1);
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            controller.isLogin.value
                ? Container()
                : CustomElevatedButton(
                    text: "Login",
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                      // Get.offAll(
                      //   const LoginView(),
                      //   duration: const Duration(
                      //     milliseconds: 500,
                      //   ),
                      //   transition: Transition.downToUp,
                      // );
                    }),
            const SizedBox(
              width: 20,
            ),
          ],
        );
      },
    );
  }
}
