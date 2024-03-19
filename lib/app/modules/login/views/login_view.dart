import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/controllers/firebase_controller.dart';
import 'package:himaforka/app/modules/registration/views/registration_view.dart';
import 'package:himaforka/app/widgets/custom_elevated_button.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    Get.put<FirebaseController>(FirebaseController());
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
                      "Selamat Datang 👋",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                          ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                        text: "Sign in",
                        onPressed: () => controller.login(),
                        width: double.infinity,
                        height: 55,
                        loadingIndicator: true,
                        isLoading: controller.isLoading.value,
                      ),
                    ),
                    // Obx(
                    //   () => CustomElevatedButton(
                    //     text: "Pop",
                    //     onPressed: () => Get.rootDelegate.backButtonPopMode,
                    //     width: double.infinity,
                    //     height: 55,
                    //     loadingIndicator: true,
                    //     isLoading: controller.isLoading.value,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Belum memiliki akun? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign up',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.toNamed(Routes.SIGNUP),
                          ),
                        ],
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
