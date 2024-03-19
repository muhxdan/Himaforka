import 'package:get/get.dart';

import '../modules/documentation/bindings/documentation_binding.dart';
import '../modules/documentation/views/documentation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

// class AppPages {
//   AppPages._();
//
//   static const INITIAL = Routes.MAIN;
//
//   static final routes = [
//     GetPage(
//       name: _Paths.HOME,
//       page: () => const HomeView(),
//       binding: HomeBinding(),
//     ),
//     GetPage(
//       name: _Paths.INFORMATION,
//       page: () => const InformationView(),
//       binding: InformationBinding(),
//     ),
//     GetPage(
//       name: _Paths.DOCUMENTATION,
//       page: () => const DocumentationView(),
//       binding: DocumentationBinding(),
//     ),
//     GetPage(
//       name: _Paths.REGISTRATION,
//       page: () => const RegistrationView(),
//       binding: RegistrationBinding(),
//     ),
//     GetPage(
//       name: _Paths.LOGIN,
//       page: () => const LoginView(),
//       binding: LoginBinding(),
//     ),
//     GetPage(
//       name: _Paths.SIGNUP,
//       page: () => const SignupView(),
//       binding: SignupBinding(),
//     ),
//     GetPage(
//       name: _Paths.MAIN,
//       page: () => const MainView(),
//       binding: MainBinding(),
//     ),
//   ];
// }

abstract class AppPages {
  static const INITIAL = Routes.MAIN;
  static final pages = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENTATION,
      page: () => const DocumentationView(),
      binding: DocumentationBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
  ];
}
