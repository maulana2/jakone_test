import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class TouristPassSection extends StatelessWidget {
  const TouristPassSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> places = [
      {
        'image': AppImages.ancol,
        'title': 'Ancol Entrance Gate',
      },
      {
        'image': AppImages.ancol,
        'title': 'Monumen Nasional',
      },
      {
        'image': AppImages.ancol,
        'title': 'Museum Nasional',
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Go with Jakarta Tourist Pass",
                    style: GoogleFonts.nunito(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'a place not to be missed',
                    style: GoogleFonts.nunito(
                      fontSize: 12.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: GoogleFonts.nunito(
                    fontSize: 14.sp,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Did You \nKnow',
                    style: GoogleFonts.nunito(
                      fontSize: 15.sp,
                    ),
                  ),
                  Image.asset(
                    AppImages.maps2,
                    height: 62.h,
                    width: 68.w,
                  )
                ],
              ),
              SizedBox(
                width: 22.w,
              ),
              caraoselCard(),
              caraoselCard(),
            ],
          ),

          // Carousel Section
        ],
      ),
    );
  }

  Container caraoselCard() {
    return Container(
      margin: EdgeInsets.only(left: 22.w),
      height: 142.h,
      width: 99.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Image.asset(
            height: 99.h,
            width: double.infinity,
            AppImages.ancol,
            fit: BoxFit.cover,
          ),
          Text(
            'Ancol Entrance Gate',
            style: GoogleFonts.nunito(
              fontSize: 8.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 12.h,
              width: 28.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.orangeAccent,
              ),
              child: Text(
                textAlign: TextAlign.center,
                'Detail',
                style: GoogleFonts.nunito(
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
