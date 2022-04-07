import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants.dart';

class WeeklyNutritionRegime extends StatelessWidget {
  const WeeklyNutritionRegime({
    Key? key,
    required this.fatLevel,
    required this.carbsLevel,
    required this.proteinLevel,
    required this.caloriesGoalPercent,
    required this.caloriesCount,
  }) : super(key: key);
  final String fatLevel;
  final String carbsLevel;
  final String proteinLevel;
  final double caloriesGoalPercent;
  final String caloriesCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 75.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "النظام الغذائي الاسبوعي",
                  style: GoogleFonts.tajawal(
                    fontSize: 16.sp,
                    color: kblackColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                  width: 70.w,
                  child: FittedBox(
                    child: CircularPercentIndicator(
                      radius: 35.h,
                      lineWidth: 3.0,
                      animation: true,
                      percent: caloriesGoalPercent / 100,
                      center: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              caloriesCount,
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: kredColor,
                              ),
                            ),
                            Text(
                              "كالوري",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: kblackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: klightGreyColor,
                      circularStrokeCap: CircularStrokeCap.round,
                      linearGradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 241, 100, 0),
                          kYellowColor,
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "البروتين",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    proteinLevel,
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: kredColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الكارب",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    carbsLevel,
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: kredColor,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الدهون",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    fatLevel,
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: kredColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
