import 'package:get/get.dart';

class BmiController extends GetxController {
  RxString gender = 'FeMale'.obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;

  // Skeleton pattern
  static BmiController get instance => Get.find();

  void genderHandle(String genders) {
    gender.value = genders;
  }
}
