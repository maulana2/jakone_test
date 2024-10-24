import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:jakone_pay_app_test/app/modules/welcome_screen/widgets/guest_buttons.dart';
import 'package:jakone_pay_app_test/app/modules/welcome_screen/widgets/language_and_jakcard.dart';
import 'package:jakone_pay_app_test/app/modules/welcome_screen/widgets/welcome_slider_widget.dart';

import '../controllers/welcome_screen_controller.dart';

class WelcomeScreenView extends GetView<WelcomeScreenController> {
  const WelcomeScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 26.h),
        child: Column(
          children: [
            const LanguageAndJakcard(),
            SizedBox(height: 30.h),
            const WelcomeSliderWidget(),
            const GuestButtons(),
          ],
        ),
      ),
    );
  }
}
