// File: widgets/guest_buttons.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jakone_pay_app_test/app/routes/app_pages.dart';

class GuestButtons extends StatelessWidget {
  const GuestButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFC371), Color(0xFFFF5F6D)],
            ),
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(
              color: Colors.yellow,
              width: 2.w,
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              Get.offAndToNamed(Routes.HOME);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
            ),
            child: Text(
              'Continue as a Guest',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(
              color: Color(0xFFFFC371),
              width: 2.w,
            ),
          ),
          child: OutlinedButton(
            onPressed: () {
              Get.offAndToNamed(Routes.HOME);
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
              side: BorderSide(color: Colors.transparent, width: 0),
            ),
            child: Text(
              'Continue as a Guest',
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xFFFF5F6D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
