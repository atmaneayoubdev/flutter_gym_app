import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MealComponent extends StatelessWidget {
  const MealComponent({
    Key? key, required this.name, required this.level,
  }) : super(key: key);
  final String name;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65.h,
          width: 65.w,

          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(width: 2,color: Colors.white70,)
          ),
        child:  Center(
          child: Text(
        level,
        style: GoogleFonts.tajawal(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
        )
      ),
      SizedBox(height: 6.h,),
      Text(
        name,
        style: GoogleFonts.tajawal(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      )
      ],
    );
  }
}