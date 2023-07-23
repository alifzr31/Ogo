import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogo/app/components/base_button.dart';
import 'package:ogo/app/components/base_phoneformfield.dart';
import 'package:ogo/app/modules/auth/controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                ),
                Image.asset(
                  'assets/images/loginBanner2.png',
                  width: 300,
                ),
                const SizedBox(height: 82),
                SecondBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondBody extends StatelessWidget {
  SecondBody({super.key});
  final controller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Obx(
          () => Form(
            key: controller.formKeyPhoneNumber.value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Silahkan masuk dengan nomor HP-mu yang terdaftar',
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 26),
                    BasePhoneFormField(
                      controller: controller.phoneController.value,
                      onChanged: (value) {
                        controller.phoneNumber.value = value.phoneNumber ?? '';
                      },
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      visible: controller.phoneValidator.value,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Silahkan isi nomor telepon anda',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: controller.phoneValidator2.value,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Nomor telepon tidak valid',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 57,
                  width: Get.width,
                  child: BaseButton(
                    text: 'Kirim Saya Kode OTP',
                    bold: FontWeight.bold,
                    size: 20,
                    onPressed: () {
                      if (controller.phoneController.value.text == '') {
                        controller.phoneValidator.value = true;
                        controller.phoneValidator2.value = false;
                      } else {
                        if (controller.phoneController.value.text.length <
                            13) {
                          controller.phoneValidator.value = false;
                          controller.phoneValidator2.value = true;
                        } else {
                          controller.phoneValidator.value = false;
                          controller.phoneValidator2.value = false;
                          controller.inputOTP();
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
