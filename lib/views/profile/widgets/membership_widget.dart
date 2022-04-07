import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class MemberShipWidget extends StatelessWidget {
  const MemberShipWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(30),
      height: 445.h,
      width: 366.w,

      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: const Offset(0, 3), // changes position of shadow
        //   ),
        // ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: kYellowColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 99.h,
            width: 223.w,
            color: const Color.fromARGB(29, 255, 204, 0),
            child: Center(
              child: Text(
                "العضويه البرونزيه",
                style: GoogleFonts.tajawal(
                  fontSize: 18.sp,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "355 SAR" "/ شهريا",
                    style: GoogleFonts.poppins(
                      fontSize: 30.sp,
                      color: kYellowColor,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/chek.svg",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      "الميزه الاولي",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: kblackColor,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/chek.svg",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      "االميزه الثانيه",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: kblackColor,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/chek.svg",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      "الميزه الثالثه",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: kblackColor,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/chek.svg",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      "الميزه الرابعه",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: kblackColor,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/chek.svg",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Text(
                      "الميزه الخامسه",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: kblackColor,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
