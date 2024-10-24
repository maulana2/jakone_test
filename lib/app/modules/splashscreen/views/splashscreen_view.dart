import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jakone_pay_app_test/constants/app_colors.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';
import 'package:jakone_pay_app_test/constants/app_text_styles.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    print('UI called: ${controller.count}');
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.brightOrange, AppColors.deepOrange],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: -60,
            child: Image.asset(
              AppImages.iconBgSplashScreenTop2,
              width: 244,
              height: 332,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 100,
            child: Image.asset(
              AppImages.iconBgSplashScreenTop,
              width: 111,
              height: 112,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: Get.height * 0.4,
            left: Get.width * 0.1,
            child: Image.asset(
              AppImages.logoJakartaTourist,
              width: Get.width * 0.8,
              height: Get.height * 0.2,
            ),
          ),
          Positioned(
            top: Get.height * 0.4,
            right: -110,
            bottom: Get.height * 0.1,
            child: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(254, 95, 95, 0.5), // rgba(254, 95, 95, 0.5)
                  Color.fromRGBO(252, 152, 66, 0.5), // rgba(252, 152, 66, 0.5)
                ],
              ).createShader(bounds),
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                AppImages.iconBgSplashScreenBottom,
                width: 241,
                height: 332,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.83,
            left: Get.width * 0.7,
            child: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(254, 95, 95, 0.5), // rgba(254, 95, 95, 0.5)
                  Color.fromRGBO(252, 152, 66, 0.5), // rgba(252, 152, 66, 0.5)
                ],
              ).createShader(bounds),
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                AppImages.iconBgSplashScreenBottom2,
                width: 111,
                height: 112,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.9,
            left: Get.width * 0.35,
            child: Image.asset(
              AppImages.iconOjkLps,
              width: 103,
              height: 15,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: Get.height * 0.95,
            left: Get.width * 0.33,
            child: Text(
              'Powered by Bank DKI',
              style: AppTextStyles.fontInter.copyWith(
                fontSize: 11.6,
                fontWeight: FontWeight.w400,
                color: AppColors.appWhite,
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.97,
            left: Get.width * 0.45,
            child: Text(
              '2023',
              style: AppTextStyles.fontInter.copyWith(
                fontSize: 11.6,
                fontWeight: FontWeight.w400,
                color: AppColors.appWhite,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
