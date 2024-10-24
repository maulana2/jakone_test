import 'package:get/get.dart';

class WelcomeScreenController extends GetxController {
  //TODO: Implement WelcomeScreenController

  final isIndonesia = false.obs; // true = ID, false = EN

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void changeLanguage() => isIndonesia.value = !isIndonesia.value;
}
