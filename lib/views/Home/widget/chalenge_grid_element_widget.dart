import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ChalengeGridElementWidget extends StatelessWidget {
  const ChalengeGridElementWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 17.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color.fromRGBO(246, 248, 250, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 15.h,
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
              Container(
                height: 15.h,
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
              Container(
                height: 15.h,
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
              )
            ],
          ),
          Column(
            children: [
              Text(
                "(3 ايام)",
                style: GoogleFonts.tajawal(
                  //height: 2,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "الاسبوع 1",
                style: GoogleFonts.tajawal(
                  //height: 2,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: kblackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
