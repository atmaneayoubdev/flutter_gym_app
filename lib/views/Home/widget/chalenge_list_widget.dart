import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ChalengeListWidget extends StatelessWidget {
  const ChalengeListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.grey.shade100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 15.h,
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kgradiantColor,
                ),
                child: const FittedBox(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "اليوم الاول",
                    style: GoogleFonts.tajawal(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: kblackColor,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "مجموعات " " 4x ",
                        style: GoogleFonts.tajawal(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kredColor,
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Container(
                        height: 18.h,
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        "25",
                        style: GoogleFonts.tajawal(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kredColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kgradiantColor,
                    ),
                    child: const SizedBox(),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kgradiantColor,
                    ),
                    child: const SizedBox(),
                  ),
                ],
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kgradiantColor,
                    ),
                    child: const SizedBox(),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Container(
                    height: 12.h,
                    width: 12.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kgradiantColor,
                    ),
                    child: const SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
