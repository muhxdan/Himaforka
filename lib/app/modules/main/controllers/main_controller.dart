import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/modules/documentation/views/documentation_view.dart';
import 'package:himaforka/app/modules/home/views/home_view.dart';
import 'package:himaforka/app/modules/information/views/information_view.dart';
import 'package:himaforka/app/modules/registration/views/registration_view.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;
  late DefaultTabController tabController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  RxBool isDark = false.obs;

  final RxBool isLogin = RxBool(false);

  void isDarkMode() {
    isDark.toggle();
  }

  final List<Tab> mytab = [
    const Tab(
      text: "Beranda",
    ),
    const Tab(
      text: "Informasi",
    ),
    const Tab(
      text: "Dokumentasi",
    ),
    const Tab(
      text: "Pendaftaran",
    )
  ];
  final List<Widget> tabScreens = [
    const HomeView(),
    const InformationView(),
    const DocumentationView(),
    const RegistrationView(),
  ];

  @override
  void onInit() {
    controller = TabController(
      length: mytab.length,
      vsync: this,
    );
    checkAuthState(); // Memeriksa status autentikasi saat inisialisasi
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void checkAuthState() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        isLogin.value = true; // Jika pengguna login, set isLogin ke true
      } else {
        isLogin.value =
            false; // Jika pengguna tidak login, set isLogin ke false
      }
    });
  }
}
