import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      height: 53.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.r),
        color: kblackColor,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.tajawal(
                fontSize: 18.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            SvgPicture.asset(
              'assets/icons/double_chevron.svg',
              height: 12.h,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
