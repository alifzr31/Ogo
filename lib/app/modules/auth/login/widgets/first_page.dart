import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ogo/app/components/base_button.dart';
import 'package:ogo/app/modules/auth/controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/loginBanner.png'),
          FirstBody(),
        ],
      ),
    );
  }
}

class FirstBody extends StatelessWidget {
  FirstBody({super.key});
  final controller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mulai dengan OGO,',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rounded Mplus 1c',
                  ),
                ),
                Text(
                  'Pesan Taxi/Ojek & Makanan !',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rounded Mplus 1c',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 57,
                  child: BaseButton(
                    bgColor: Colors.black,
                    fgColor: Colors.white,
                    text: 'Masuk dengan nomor telepon',
                    bold: FontWeight.bold,
                    size: 20,
                    onPressed: controller.loginNoTelp,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        width: Get.width,
                        color: Colors.black.withOpacity(0.3),
                        margin: const EdgeInsets.only(right: 5),
                      ),
                    ),
                    const Text(
                      'atau',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: Get.width,
                        color: Colors.black.withOpacity(0.3),
                        margin: const EdgeInsets.only(left: 5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 57,
                  child: ElevatedButton.icon(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.red,
                      side: const BorderSide(
                        width: 2.0,
                        color: Colors.red,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: Logo(
                      Logos.google,
                      size: 22,
                    ),
                    onPressed: () {},
                    label: const Text(
                      'Masuk dengan Google',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
