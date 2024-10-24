import 'package:get/get.dart';
import 'package:jakone_pay_app_test/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print('onInit called');
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(Routes.WELCOME_SCREEN);
    });
  }

  @override
  void onClose() {
    print('on Close called');
    super.onClose();
  }

  void increment() => count.value++;
}
