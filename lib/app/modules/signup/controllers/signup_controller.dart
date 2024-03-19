import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/controllers/firebase_controller.dart';

class SignupController extends GetxController {
  final FirebaseController authController = Get.find();
  final signupKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final nimController = TextEditingController();
  final passwordController = TextEditingController();

  final RxBool isLoading = RxBool(false);

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
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

  Future<void> signup() async {
    if (signupKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        await authController.createAccount(
          emailController.text.trim(),
          passwordController.text.trim(),
          nameController.text.trim(),
          nimController.text.trim(),
        );
      } catch (e) {
        Get.snackbar("Error", "Gagal melakukan sign up. Silakan coba lagi.");
      } finally {
        isLoading.value = false;
      }
    }
  }
}
