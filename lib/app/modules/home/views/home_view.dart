import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jakone_pay_app_test/app/modules/home/widgets/header_section.dart';

import '../controllers/home_controller.dart';
import 'package:jakone_pay_app_test/app/modules/home/widgets/menu_section.dart';
import 'package:jakone_pay_app_test/app/modules/home/widgets/tourist_pass_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const HeaderSection(),
                  Positioned(
                    bottom: -70.h,
                    left: 20.w,
                    right: 20.w,
                    child: _balanceSection(),
                  ),
                ],
              ),
              SizedBox(height: 80.h),
              const MenuSection(),
              const TouristPassSection(),
            ],
          ),
        ],
      ),
    );
  }
}

// Balance Section Widget
Widget _balanceSection() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Balance Account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Rp 0',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              'Top Up',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// Header Section
