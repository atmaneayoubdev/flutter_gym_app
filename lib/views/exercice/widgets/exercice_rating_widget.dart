import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ExerciceRatingWidget extends StatefulWidget {
  const ExerciceRatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ExerciceRatingWidget> createState() => _ExerciceRatingWidgetState();
}

class _ExerciceRatingWidgetState extends State<ExerciceRatingWidget> {
  final _currentRating = RatingEnum.ok;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31.r),
          topRight: Radius.circular(31.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: Text(
              "عاش يابطل ، خلصت كل تمارينك اليوم",
              style: GoogleFonts.tajawal(
                fontSize: 22.sp,
                color: kblackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 45.h),
          Center(
            child: Text(
              "ايه رايك في تمرينه انهارده",
              style: GoogleFonts.tajawal(
                fontSize: 22.sp,
                color: kredColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentRating == RatingEnum.veryGood;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: _currentRating == RatingEnum.veryGood
                            ? Colors.orange
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/veryGood.svg",
                        height: 40.h,
                        color: _currentRating == RatingEnum.veryGood
                            ? Colors.white
                            : Colors.orange,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "ممتاز",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        color: _currentRating == RatingEnum.veryGood
                            ? Colors.orange
                            : kblackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentRating == RatingEnum.good;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: _currentRating == RatingEnum.good
                            ? Colors.orange
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/veryGood.svg",
                        height: 40.h,
                        color: _currentRating == RatingEnum.good
                            ? Colors.white
                            : Colors.orange,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "جيد",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        color: _currentRating == RatingEnum.good
                            ? Colors.orange
                            : kblackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentRating == RatingEnum.ok;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: _currentRating == RatingEnum.ok
                            ? Colors.orange
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/ok.svg",
                        height: 40.h,
                        color: _currentRating == RatingEnum.ok
                            ? Colors.white
                            : Colors.orange,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "مقبول",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        color: _currentRating == RatingEnum.ok
                            ? Colors.orange
                            : kblackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentRating == RatingEnum.bad;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: _currentRating == RatingEnum.bad
                            ? Colors.orange
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/bad.svg",
                        height: 40.h,
                        color: _currentRating == RatingEnum.bad
                            ? Colors.white
                            : Colors.orange,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "سيئ",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        color: _currentRating == RatingEnum.bad
                            ? Colors.orange
                            : kblackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentRating == RatingEnum.veryBad;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: _currentRating == RatingEnum.veryBad
                            ? Colors.orange
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/veryBad.svg",
                        height: 40.h,
                        color: _currentRating == RatingEnum.veryBad
                            ? Colors.white
                            : Colors.orange,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "سيئ جدا",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        color: _currentRating == RatingEnum.veryBad
                            ? Colors.orange
                            : kblackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.r,
                    ),
                    gradient: kgradiantColot,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    //splashColor: Colors.blue[50],
                    child: Text(
                      "ارسال",
                      style: GoogleFonts.tajawal(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum RatingEnum { veryBad, bad, ok, good, veryGood }
