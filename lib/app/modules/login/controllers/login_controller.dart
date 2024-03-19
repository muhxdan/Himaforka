import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/controllers/firebase_controller.dart';

class LoginController extends GetxController {
  FirebaseController authController = Get.put(FirebaseController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isLoading = RxBool(false);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateForm(String? value) {
    if (value == null || value.isEmpty) {
      return 'Wajib di isi';
    }
    return null;
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        await authController.signIn(
          emailController.text.trim(),
          passwordController.text.trim(),
        );
      } catch (e) {
        Get.snackbar("Error", "Gagal melakukan login. Silakan coba lagi.");
      } finally {
        isLoading.value = false;
      }
    }
  }
}
