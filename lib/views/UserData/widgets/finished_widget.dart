import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants.dart';

class FinishedWidget extends StatefulWidget {
  const FinishedWidget({Key? key}) : super(key: key);

  @override
  State<FinishedWidget> createState() => _FinishedWidgetState();
}

class _FinishedWidgetState extends State<FinishedWidget> {
  final int _percent = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: _percent / 100,
            center: Center(
              child: Text(
                "$_percent" "%",
                style: GoogleFonts.tajawal(
                  fontSize: 80.sp,
                  fontWeight: FontWeight.bold,
                  //scolor: kblackColor,
                  height: 2,
                  foreground: Paint()
                    ..shader = kgradiantColot.createShader(
                        const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                ),
              ),
            ),
            footer: Container(
              margin: EdgeInsets.only(top: 50.h),
              width: 273.w,
              child: Text(
                "جاري تحليل بياناتك وانشاء الخطه المناسبه لك",
                style: GoogleFonts.tajawal(
                  fontSize: 21.sp,
                  color: kblackColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            backgroundColor: klightGreyColor,
            circularStrokeCap: CircularStrokeCap.round,
            linearGradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                kredColor,
                kYellowColor,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
