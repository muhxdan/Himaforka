import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/modules/main/controllers/main_controller.dart';
import 'package:himaforka/app/widgets/custom_button.dart';

Widget drawer(BuildContext context) {
  var controller = Get.put(MainController());

  return Obx(
    () {
      var isDark = controller.isDark.value;
      // if (isDark) {
      //   // if(listIndex == controller.controller.index){
      //   //   Color(0xff818CF8);
      //   // }else{
      //   //   Colors.white;
      //   // }
      // }
      return Drawer(
        backgroundColor: (isDark) ? const Color(0xff101012) : Colors.white,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: controller.mytab.map(
                  (e) {
                    var listIndex = controller.mytab.indexOf(e);
                    return Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: ListTile(
                        hoverColor: (isDark)
                            ? const Color(0xff1e1f23)
                            : const Color(0xffe0e7ff),
                        title: Text(
                          e.text.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (isDark)
                                ? (listIndex == controller.controller.index)
                                    ? const Color(0xff818CF8)
                                    : Colors.white
                                : (listIndex == controller.controller.index)
                                    ? const Color(0xff4239CA)
                                    : Colors.black,
                          ),
                        ),
                        onTap: () {
                          Get.back();
                          controller.controller.index = listIndex;
                        },
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: CustomButton(
                text: "Login",
                onPressed: () {},
                width: double.infinity,
              ),
            ),
          ],
        ),
      );
    },
  );
}
