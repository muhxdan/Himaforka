import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himaforka/app/data/theme.dart';
import 'package:himaforka/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCwniQF60XdQc4H41TL8rS6FmqkTNkiwu4",
    appId: "1:152433867635:web:b53e0861fdddb37cf1a306",
    messagingSenderId: "152433867635",
    projectId: "web-himaforka",
    storageBucket: "web-himaforka.appspot.com",
  ));

  // runApp(
  //   GetMaterialApp.router(
  //     title: "HIMAFORKA",
  //     // initialRoute: AppPages.INITIAL,
  //     getPages: AppPages.pages,
  //     routerDelegate: AppRouterDelegate(),
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeOptions().lightTheme,
  //     darkTheme: ThemeOptions().darkTheme,
  //     themeMode: ThemeMode.light,
  //   ),
  // );

  runApp(
    GetMaterialApp(
      title: "HIMAFORKA",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.pages,
      // routerDelegate: AppRouterDelegate(),
      debugShowCheckedModeBanner: false,
      theme: ThemeOptions().lightTheme,
      darkTheme: ThemeOptions().darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}

// class AppRouterDelegate extends GetDelegate {
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       onPopPage: (route, result) => route.didPop(result),
//       pages: currentConfiguration != null
//           ? [currentConfiguration!.currentPage!]
//           : [GetNavConfig.fromRoute(Routes.MAIN)!.currentPage!],
//     );
//   }
// }
