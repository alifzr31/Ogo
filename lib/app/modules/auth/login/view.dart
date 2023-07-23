import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogo/app/modules/auth/controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginBody();
  }
}

class LoginBody extends StatelessWidget {
  LoginBody({super.key});
  final controller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController.value,
        itemCount: controller.pages.length,
        itemBuilder: (context, index) {
          return controller.pages[index];
        },
      ),
    );
  }
}
