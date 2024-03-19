import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/data/responsive.dart';
import 'package:himaforka/app/modules/main/widgets/app_bar_desktop.dart';
import 'package:himaforka/app/modules/main/widgets/app_bar_mobile.dart';
import 'package:himaforka/app/modules/main/widgets/drawer.dart';
import 'package:himaforka/app/modules/main/widgets/tab_view_section.dart';
import 'package:himaforka/app/widgets/navbar_logo.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
        title: Row(
          children: [
            (!Responsive.isDesktop(context))
                ? AppBarMobile(
                    // scaffoldKEY: controller.scaffoldKey,
                    controller: controller,
                  )
                : Container(),
            const NavBarLogo(),
          ],
        ),
        actions: [
          (Responsive.isDesktop(context))
              ? AppBarDesktop(controller: controller)
              : Container(),
        ],
      ),
      drawer: drawer(context),
      body: TabBarViewSection(controller: controller),
    );
  }
}
