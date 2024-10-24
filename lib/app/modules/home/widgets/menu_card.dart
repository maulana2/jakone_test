import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const MenuCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container with Gradient and Border
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFFE085), Color(0xFFFF914D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: Colors.redAccent, // Border color
                width: 2,
              ),
            ),
            child: Image.asset(
              icon,
              height: 55.h,
              width: 50.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.h),
          // Title Text
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
