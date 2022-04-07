import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class AchivementBottomSheetWidget extends StatelessWidget {
  const AchivementBottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430.h,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31.r),
          topRight: Radius.circular(31.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 233.h,
            child: Center(
              child: SvgPicture.asset(
                "assets/images/achivement_image.svg",
                height: 350.h,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              "عاش يابطل , انجاز. جديد اضاف لانجازاتك",
              style: GoogleFonts.tajawal(
                fontSize: 22.sp,
                color: kblackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 53.h,
                padding: EdgeInsets.symmetric(vertical: 15.h),
                decoration: BoxDecoration(
                  color: klightGreyColor,
                  border: Border.all(color: Colors.deepOrange),
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: Center(
                  child: Text(
                    "مشاركه",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      color: Colors.deepOrange,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
