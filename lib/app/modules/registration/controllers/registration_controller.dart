import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/controllers/firebase_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationController extends GetxController {
  FirebaseController firebaseController = Get.put(FirebaseController());

  final registrationKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final nimController = TextEditingController();
  final placeController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();

  final RxString religionController = RxString("");
  final RxString genderController = RxString("");
  final RxString classController = RxString("");

  final RxBool isRegistered = RxBool(false);
  final RxInt statusRegistration = RxInt(1);
  final RxInt status = RxInt(3);

  final RxBool isHover = RxBool(false);
  final RxBool isLoading = RxBool(false);

  final Rx<Uint8List?> pickedImageInBytes = Rx<Uint8List?>(null);

  @override
  void onInit() {
    getStatusAndRegistrationFromSharedPreferences();
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    nimController.dispose();
    placeController.dispose();
    dateOfBirthController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    super.onClose();
  }

  String? validateForm(String? value) {
    if (value == null || value.isEmpty) {
      return 'Wajib di isi';
    }
    return null;
  }

  String? setReligion(String? value) {
    if (value != null) {
      return religionController.value = value;
    }
    return null;
  }

  String? setGender(String? value) {
    if (value != null) {
      return genderController.value = value;
    }
    return null;
  }

  String? setClass(String? value) {
    if (value != null) {
      return classController.value = value;
    }
    return null;
  }

  Future<void> pickImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );

      if (result == null) return;

      pickedImageInBytes.value = result.files.first.bytes;
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  void register() async {
    if (registrationKey.currentState!.validate()) {
      if (pickedImageInBytes.value == null) {
        Get.snackbar("Error", "Pilih gambar terlebih dahulu");
        return;
      }

      isLoading.value = true;

      String? imageUrl = await firebaseController.uploadImageToStorage(
        pickedImageInBytes.value!,
      );

      if (imageUrl != null) {
        try {
          await firebaseController.saveRegistrationData(
            nameController.text,
            nimController.text,
            placeController.text,
            dateOfBirthController.text,
            phoneNumberController.text,
            emailController.text,
            imageUrl,
            religionController.value,
            genderController.value,
            classController.value,
            1,
          );

          Get.snackbar("Registrasi Berhasil", "Data telah tersimpan",
              snackPosition: SnackPosition.BOTTOM);

          isLoading.value = false;
          isRegistered.value = true;
        } catch (e) {
          Get.snackbar("Error", "Gagal menyimpan data registrasi",
              snackPosition: SnackPosition.BOTTOM);
        }
      } else {
        Get.snackbar("Error", "Gagal mengunggah gambar",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  Future<void> getStatusAndRegistrationFromSharedPreferences() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      statusRegistration.value = prefs.getInt('statusCode') ?? 1;
      isRegistered.value = prefs.getBool('isRegistered') ?? false;

      print("Status Registration: ${statusRegistration.value}");
      print("Is Registered: ${isRegistered.value}");
    } catch (e) {
      print("Error getting status and registration from SharedPreferences: $e");
    }
  }
}
