import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      AppImages.banner,
      AppImages.banner,
      AppImages.banner,
    ]; // Ganti dengan path gambar Anda

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: CarouselSlider(
        items: imageList.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 200.h,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: const Duration(seconds: 3),
          viewportFraction: 0.85,
          aspectRatio: 16 / 9,
          initialPage: 0,
        ),
      ),
    );
  }
}
