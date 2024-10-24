// File: widgets/welcome_slider.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jakone_pay_app_test/constants/app_colors.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class WelcomeSliderWidget extends StatelessWidget {
  const WelcomeSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.h,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        autoPlay: true,
      ),
      items: [
        _buildSlide(
          image: AppImages.imageMonas,
          title: 'Monumen Nasional',
          description: 'Explore Jakarta with Jakarta Tourist Pass',
        ),
        _buildSlide(
          image: AppImages.imageMonas,
          title: 'Kota Tua Jakarta',
          description: 'Discover the historic beauty of Jakarta',
        ),
      ].map((slide) => slide).toList(),
    );
  }

  Widget _buildSlide(
      {required String image,
      required String title,
      required String description}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.deepOrange.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.deepOrange,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
