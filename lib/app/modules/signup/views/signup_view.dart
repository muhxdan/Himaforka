import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/controllers/firebase_controller.dart';
import 'package:himaforka/app/modules/registration/views/registration_view.dart';
import 'package:himaforka/app/widgets/custom_elevated_button.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    Get.put(FirebaseController());
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: 388,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Buat Akun",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: controller.signupKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TwoColumnTextField(
                            label: "Nama",
                            controller: controller.nameController,
                            hint: "John Doe",
                            validator: controller.validateForm,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TwoColumnTextField(
                            label: "Nim",
                            controller: controller.nimController,
                            hint: "205***112",
                            validator: controller.validateForm,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TwoColumnTextField(
                            label: "Email",
                            hint: "John.doe@email.com",
                            validator: controller.validateForm,
                            controller: controller.emailController,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TwoColumnTextField(
                            label: "Password",
                            hint: "Minimal 8 karakter",
                            validator: controller.validateForm,
                            controller: controller.passwordController,
                            obsecureText: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Obx(
                      () => CustomElevatedButton(
                        text: "Sign up",
                        onPressed: () => controller.signup(),
                        width: double.infinity,
                        height: 55,
                        loadingIndicator: true,
                        isLoading: controller.isLoading.value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
