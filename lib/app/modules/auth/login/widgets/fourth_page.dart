import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogo/app/components/base_button.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Image.asset('assets/images/sukses.png'),
                    const SizedBox(height: 20),
                    const Text(
                      'Verifikasi Sukses',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text('Sekarang anda bisa menggunakan layanan OGO'),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 57,
                  width: Get.width,
                  child: BaseButton(
                    text: 'Beranda',
                    size: 20,
                    bold: FontWeight.bold,
                    onPressed: () {},
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
