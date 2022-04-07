import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class HomeHorizontalListWidget extends StatelessWidget {
  const HomeHorizontalListWidget({
    Key? key,
    required this.name,
    required this.duration,
    required this.rating,
  }) : super(key: key);
  final String name;
  final String duration;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 182.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        image: const DecorationImage(
          image: AssetImage("assets/images/pushUp.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 0, 0, 0),
                  Color.fromARGB(156, 0, 0, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(11.r),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 66.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      gradient: kgradiantColor,
                    ),
                    child: Center(
                      child: Text(
                        duration,
                        style: GoogleFonts.tajawal(
                          height: 2,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        name,
                        style: GoogleFonts.tajawal(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 25.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.r),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              rating,
                              style: GoogleFonts.tajawal(
                                height: 1.8,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: kYellowColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Center(
                            child: Icon(
                              Icons.star,
                              color: kYellowColor,
                              size: 20.h,
                            ),
                          ),
                        ],
                      ),
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
