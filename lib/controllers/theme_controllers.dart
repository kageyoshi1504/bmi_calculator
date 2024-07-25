import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeControllers extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme() async {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
