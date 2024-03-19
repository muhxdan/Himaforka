import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/app_pages.dart';

class FirebaseController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> createAccount(
      String email, String password, String nama, String nim) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await saveUserDataToFirestore(userCredential.user!.uid, nama, nim, email);
      Get.rootDelegate.backButtonPopMode;
      Get.snackbar("Berhasil membuat akun", "Silahkan login terlebih dahulu",
          snackPosition: SnackPosition.BOTTOM);
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        Get.snackbar(
            "Error", "Password terlalu lemah, gunakan password yang lebih kuat",
            snackPosition: SnackPosition.BOTTOM);
      } else if (ex.code == "email-already-in-use") {
        Get.snackbar("Error", "Email sudah digunakan, gunakan email lain",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.toNamed(Routes.MAIN);
      // Get.snackbar("Login berhasil", "Selamat datang",
      //     snackPosition: SnackPosition.BOTTOM);
      // Get.offAll(
      //   const MainView(),
      //   duration: const Duration(
      //     milliseconds: 500,
      //   ),
      //   transition: Transition.downToUp,
      // );
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "user-not-found") {
        Get.snackbar("Error", "Pengguna tidak ditemukan",
            snackPosition: SnackPosition.BOTTOM);
      } else if (ex.code == "wrong-password") {
        Get.snackbar("Error", "Password salah",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  Future<void> saveUserDataToFirestore(
      String uid, String nama, String nim, String email) async {
    try {
      await firestore.collection('users').doc(uid).set({
        'nama': nama,
        'nim': nim,
        'email': email,
        'uid': uid,
      });
    } catch (e) {
      Get.snackbar("Error", "Gagal menyimpan data pengguna",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> saveRegistrationData(
    String name,
    String nim,
    String place,
    String dateOfBirth,
    String phoneNumber,
    String email,
    String ktmUrl,
    String religion,
    String gender,
    String classNumber,
    int statusCode,
  ) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;

      await FirebaseFirestore.instance
          .collection('registrations')
          .doc(uid)
          .set({
        'name': name,
        'nim': nim,
        'place': place,
        'dateOfBirth': dateOfBirth,
        'phoneNumber': phoneNumber,
        'email': email,
        'ktmUrl': ktmUrl,
        'religion': religion,
        'gender': gender,
        'class': classNumber,
        'statusCode': statusCode,
      });

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('statusCode', statusCode);
      await prefs.setBool('isRegistered', true);

      Get.snackbar("Registrasi Berhasil", "Data telah tersimpan",
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar("Error", "Gagal menyimpan data registrasi",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<String?> uploadImageToStorage(Uint8List imageFile) async {
    String imageUrl = '';
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      final uploadTask = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('ktm')
          .child('/$uid.jpg')
          .putData(imageFile,
              firebase_storage.SettableMetadata(contentType: 'image/jpeg'));

      await uploadTask.whenComplete(() => null);

      final ref = uploadTask.snapshot.ref;

      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      return null;
    }

    return imageUrl;
  }
}
