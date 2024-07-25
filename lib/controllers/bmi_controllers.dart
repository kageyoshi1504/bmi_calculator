import 'package:get/get.dart';

class BmiController extends GetxController {
  RxString gender = 'FeMale'.obs;

  void genderHandle(String genders) {
    gender.value = genders;
  }
}
