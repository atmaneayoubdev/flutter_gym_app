import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TodaysExerciceWidget extends StatelessWidget {
  const TodaysExerciceWidget({
    Key? key,
    required this.name,
    required this.imagepath,
    required this.sets,
    required this.duration,
    required this.level,
  }) : super(key: key);
  final String name;
  final String imagepath;
  final String sets;
  final String duration;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        color: Colors.transparent,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(125, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: GoogleFonts.tajawal(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/exerciceicon.svg"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "15 تمرين",
                          style: GoogleFonts.tajawal(
                            height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/clock.svg",
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          duration,
                          style: GoogleFonts.tajawal(
                            height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/level.svg"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          level,
                          style: GoogleFonts.tajawal(
                            height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
