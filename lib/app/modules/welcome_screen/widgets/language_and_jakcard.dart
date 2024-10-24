import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jakone_pay_app_test/constants/app_colors.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class LanguageAndJakcard extends StatelessWidget {
  const LanguageAndJakcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 37.h,
          decoration: BoxDecoration(
            color: AppColors.appWhite,
            borderRadius: BorderRadius.circular(46.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                    0.1), // Warna bayangan hitam dengan opasitas 10%
                blurRadius: 10.r, // Blur untuk bayangan
                offset: Offset(0, 5.h), // Posisi bayangan, sedikit ke bawah
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                AppImages.indonesiaFlag,
                fit: BoxFit.cover,
              ),
              Image.asset(
                AppImages.englishFlag,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 11.w, top: 6.h, bottom: 6.h),
          height: 30.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: AppColors.appWhite,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                    0.1), // Warna bayangan hitam dengan opasitas 10%
                blurRadius: 10.r, // Blur untuk bayangan
                offset: Offset(0, 5.h), // Posisi bayangan, sedikit ke bawah
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                AppImages.creditCard,
                fit: BoxFit.cover,
                height: 20.h,
                width: 20.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Image.asset(
                AppImages.jakCard,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
