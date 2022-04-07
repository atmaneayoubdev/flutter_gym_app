import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class TrophyWidget extends StatelessWidget {
  const TrophyWidget({
    Key? key,
    required this.isEarned,
    required this.name,
  }) : super(key: key);
  final bool isEarned;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 61.h,
          width: 61.w,
          decoration: isEarned
              ? const BoxDecoration(
                  gradient: kgradiantColor,
                  shape: BoxShape.circle,
                )
              : BoxDecoration(
                  color: Colors.grey.shade100,
                  shape: BoxShape.circle,
                ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.0),
            child: SvgPicture.asset(
              "assets/icons/trophy.svg",
              color: isEarned ? Colors.white : klightGreyColo2r,
              height: 32.h,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          name,
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color:
                isEarned ? kblackColor : const Color.fromRGBO(131, 142, 162, 1),
          ),
        ),
      ],
    );
  }
}
