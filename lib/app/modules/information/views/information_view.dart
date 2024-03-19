import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/modules/information/views/section/section_activity.dart';
import 'package:himaforka/app/modules/information/views/section/section_executive.dart';
import 'package:himaforka/app/modules/information/views/section/section_structure.dart';
import 'package:himaforka/app/modules/information/views/section/section_vision_mission.dart';
import 'package:himaforka/app/widgets/footer/footer.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({super.key});

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
                  SectionStructure(),
                  SizedBox(height: 130),
                  SectionExecutive(),
                  SizedBox(height: 80),
                  SectionVisionMission(),
                  SizedBox(height: 130),
                  SectionActivity(),
                ],
              ),
            ),
            const SizedBox(height: 130),
            const SectionFooter(),
          ],
        ),
      ),
    );
  }
}
