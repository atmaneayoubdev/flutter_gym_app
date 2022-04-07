import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class DayChartWidget extends StatelessWidget {
  const DayChartWidget({
    Key? key,
    required this.day,
    required this.percentage,
  }) : super(key: key);
  final String day;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 166.h,
          width: 8.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              Container(
                height: (percentage * 166.h) / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: kgradiantColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          day,
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color: kblackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
