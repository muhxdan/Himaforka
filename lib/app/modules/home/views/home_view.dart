import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:himaforka/app/modules/home/views/section/section_benefit.dart';
import 'package:himaforka/app/modules/home/views/section/section_information.dart';
import 'package:himaforka/app/modules/home/views/section/section_welcome.dart';
import 'package:himaforka/app/widgets/footer/footer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1400),
              margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: const Column(
                children: [
                  SectionWelcome(),
                  SizedBox(
                    height: 130,
                  ),
                  SectionInformation(),
                  SizedBox(
                    height: 130,
                  ),
                  SectionBenefit(),
                ],
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            const SectionFooter()
          ],
        ),
      ),
    );
  }
}
