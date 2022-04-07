import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ExerciceListWidget extends StatefulWidget {
  const ExerciceListWidget({
    Key? key,
    required this.name,
    this.duration,
    required this.isDone,
    this.sets,
    this.reps,
  }) : super(key: key);
  final String name;
  final String? duration;
  final bool isDone;
  final String? sets;
  final String? reps;

  @override
  State<ExerciceListWidget> createState() => _ExerciceListWidgetState();
}

class _ExerciceListWidgetState extends State<ExerciceListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 77.h,
            width: 91.w,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: klightGreyColor,
              borderRadius: BorderRadius.circular(11.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11.r),
              child: Image.asset(
                "assets/images/exercice_list_image.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 13.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Inchworm",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kblackColor,
                      ),
                    ),
                    Container(
                      height: 10.h,
                      width: 10.w,
                      decoration: !widget.isDone
                          ? const BoxDecoration(
                              shape: BoxShape.circle,
                              color: klightGreyColo2r,
                            )
                          : const BoxDecoration(
                              gradient: kgradiantColor,
                              shape: BoxShape.circle,
                            ),
                    )
                  ],
                ),
                if (widget.reps == null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/clock.svg",
                        color: kredColor,
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "02:00",
                        style: GoogleFonts.tajawal(
                          height: 2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kredColor,
                        ),
                      ),
                    ],
                  ),
                if (widget.duration == null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.sets}" "X" "مجموعات  ",
                        style: GoogleFonts.tajawal(
                          height: 2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kredColor,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 18.h,
                        width: 2,
                        color: klightGreyColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        widget.reps!,
                        style: GoogleFonts.tajawal(
                          height: 2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kredColor,
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
