import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250.h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFF5D5D), Color(0xFFFF914D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppImages.logoJakartaTourist,
                      height: 39.h,
                      width: 119.w,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.description, color: Colors.white),
                        SizedBox(width: 15),
                        Icon(Icons.notifications, color: Colors.white),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Good morning, \nGuest',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
