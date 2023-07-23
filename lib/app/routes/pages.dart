import 'package:get/get.dart';
import 'package:ogo/app/modules/auth/login/view.dart';
import 'package:ogo/app/modules/splash/view.dart';
import 'package:ogo/app/routes/routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
