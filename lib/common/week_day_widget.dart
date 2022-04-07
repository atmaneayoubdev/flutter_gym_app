import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class WeekDayWidget extends StatelessWidget {
  const WeekDayWidget({
    Key? key,
    required this.name,
    required this.number,
    required this.isSelected,
  }) : super(key: key);
  final String name;
  final String number;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 49.w,
          padding: EdgeInsets.symmetric(vertical: 13.h),
          decoration: isSelected
              ? BoxDecoration(
                  gradient: kgradiantColor,
                  borderRadius: BorderRadius.circular(9.r),
                  shape: BoxShape.rectangle,
                )
              : BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(9.r),
                  shape: BoxShape.rectangle,
                ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                number,
                style: GoogleFonts.tajawal(
                  fontSize: 15.sp,
                  color: isSelected ? Colors.white : kblackColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                name,
                style: GoogleFonts.tajawal(
                  fontSize: 12.sp,
                  color: isSelected ? Colors.white : kgreyColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 6.h,
          width: 6.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? kredColor : Colors.transparent,
          ),
          child: const SizedBox(),
        ),
      ],
    );
  }
}
