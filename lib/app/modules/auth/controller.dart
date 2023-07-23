import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogo/app/modules/auth/login/widgets/first_page.dart';
import 'package:ogo/app/modules/auth/login/widgets/fourth_page.dart';
import 'package:ogo/app/modules/auth/login/widgets/second_page.dart';
import 'package:ogo/app/modules/auth/login/widgets/third_page.dart';

class Authcontroller extends GetxController {
  final pageController = PageController(initialPage: 0).obs;

  final pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
    const FourthPage(),
  ].obs;

  final formKeyPhoneNumber = GlobalKey<FormState>().obs;
  final phoneController = TextEditingController().obs;
  final phoneNumber = ''.obs;
  final phoneValidator = false.obs;
  final phoneValidator2 = false.obs;

  final formKeyOTP = GlobalKey<FormState>().obs;
  final otpInput = ''.obs;
  final otp = '1234'.obs;
  final otpValidator = false.obs;

  void loginNoTelp() {
    pageController.value.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void inputOTP() {
    pageController.value.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void verifikasiSukses() {
    pageController.value.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}
