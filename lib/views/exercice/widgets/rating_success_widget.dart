import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class RatingSuccessWidget extends StatefulWidget {
  const RatingSuccessWidget({Key? key}) : super(key: key);

  @override
  State<RatingSuccessWidget> createState() => _RatingSuccessWidgetState();
}

class _RatingSuccessWidgetState extends State<RatingSuccessWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/Stars.svg",
            height: 225.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "تم تقييم تمرينتك انهارده بنجاح",
            style: GoogleFonts.tajawal(
              fontSize: 20.sp,
              color: kblackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "حلمك علي بعد خطوات استمر يابطل",
            style: GoogleFonts.tajawal(
              fontSize: 22.sp,
              color: kredColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
