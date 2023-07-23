import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogo/app/components/base_button.dart';
import 'package:ogo/app/components/base_otpfield.dart';
import 'package:ogo/app/modules/auth/controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
                  'assets/images/loginBanner3.png',
                  width: 300,
                ),
                const SizedBox(height: 44),
                ThirdBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThirdBody extends StatelessWidget {
  ThirdBody({super.key});
  final controller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Obx(
          () => Form(
            key: controller.formKeyOTP.value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Masukan Kode OTP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Masukkan 4 digit kode yang kami kirirmkan melalui SMS ke nomor HP-mu',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    BaseOTPField(
                      onChanged: (otp) {
                        controller.otpInput.value = otp;
                      },
                      onSubmit: (otp) {
                        controller.otpInput.value = otp;
                      },
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      visible: controller.otpValidator.value,
                      child: const Text(
                        'Nomor OTP tidak valid',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 57,
                  width: controller.otpLoading.value ? 70 : Get.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: controller.otpLoading.value
                          ? const CircleBorder()
                          : RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                    onPressed: () {
                      if (controller.otpInput.value != controller.otp.value) {
                        controller.otpValidator.value = true;
                      } else {
                        controller.otpValidator.value = false;
                        controller.otpLoading.value = true;
                        controller.verifikasiSukses();
                      }
                    },
                    child: controller.otpLoading.value
                        ? const CircularProgressIndicator(color: Colors.black)
                        : const Text(
                            'Verifikasi OTP',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
