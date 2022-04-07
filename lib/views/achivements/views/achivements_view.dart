import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/header_widget.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/achivements/widgets/day_chart_widget.dart';

import '../widgets/trophy_widget.dart';

class AchivementsView extends StatefulWidget {
  const AchivementsView({Key? key}) : super(key: key);
  static const String routeName = '/achivements';
  @override
  State<AchivementsView> createState() => _AchivementsViewState();
}

class _AchivementsViewState extends State<AchivementsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(
              title: "انت تقوم بعمل رائع حتي الان ، واصل التقدم"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Text(
              "السعرات اليوميه",
              textAlign: TextAlign.start,
              style: GoogleFonts.tajawal(
                fontSize: 16.sp,
                color: kblackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DayChartWidget(day: "SAT", percentage: 10),
                DayChartWidget(day: "SUN", percentage: 50),
                DayChartWidget(day: "MON", percentage: 70),
                DayChartWidget(day: "TUE", percentage: 10),
                DayChartWidget(day: "WED", percentage: 80),
                DayChartWidget(day: "THU", percentage: 90),
                DayChartWidget(day: "FRI", percentage: 30),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                                height: 13.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "عدد الساعات",
                                style: GoogleFonts.tajawal(
                                  height: 2,
                                  fontSize: 16.sp,
                                  color: kblackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "8 ساعات",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              color: kredColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 44.h,
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/calories.svg",
                                height: 16.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "اجمالي السعرات",
                                style: GoogleFonts.tajawal(
                                  height: 2,
                                  fontSize: 16.sp,
                                  color: kblackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "184.7 كجم",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              color: kredColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Container(
                    width: 326.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: (50 * 326.w) / 100,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.r),
                              gradient: kgradiantColot,
                            ),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "50 %",
                                style: GoogleFonts.tajawal(
                                    fontSize: 14.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    height: 180.h,
                    width: double.infinity,
                    child: GridView.count(
                      //childAspectRatio: 2,
                      crossAxisCount: 4,
                      //crossAxisSpacing: 30.w,
                      mainAxisSpacing: 20.h,
                      shrinkWrap: true,
                      children: const [
                        TrophyWidget(isEarned: true, name: "التدريب 3"),
                        TrophyWidget(isEarned: true, name: "التدريب 3"),
                        TrophyWidget(isEarned: false, name: "التدريب 3"),
                        TrophyWidget(isEarned: true, name: "التدريب 3"),
                        TrophyWidget(isEarned: false, name: "التدريب 3"),
                        TrophyWidget(isEarned: true, name: "التدريب 3"),
                        TrophyWidget(isEarned: false, name: "التدريب 3"),
                        TrophyWidget(isEarned: false, name: "التدريب 3"),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
