import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../constants.dart';
import 'achivement_bottom_sheet_widget.dart';

class MealWidget extends StatefulWidget {
  const MealWidget({
    Key? key,
    required this.mealType,
    required this.time,
    required this.mealName,
    required this.fatLevel,
    required this.carbsLevel,
    required this.proteinLevel,
    required this.isDone,
    required this.imagePath,
  }) : super(key: key);
  final String mealType;
  final String time;
  final String mealName;
  final String fatLevel;
  final String carbsLevel;
  final String proteinLevel;
  final bool isDone;
  final String imagePath;

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  bool isdone = false;
  @override
  void initState() {
    super.initState();
    isdone = widget.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.mealType,
                style: GoogleFonts.tajawal(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: kblackColor,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (isdone) {
                          } else {
                            isdone = !isdone;
                            showMaterialModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) =>
                                  const AchivementBottomSheetWidget(),
                            );
                          }
                        },
                      );
                    },
                    child: Container(
                      height: 17.h,
                      width: 17.w,
                      decoration: isdone
                          ? BoxDecoration(
                              shape: BoxShape.rectangle,
                              gradient: kgradiantColor,
                              borderRadius: BorderRadius.circular(3.r),
                            )
                          : BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.transparent,
                              border: Border.all(color: kgreyColor, width: 1),
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                      child: FittedBox(
                        child: Icon(
                          Icons.check,
                          color: isdone ? Colors.white : kgreyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "تم",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: kredColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 13.h),
          Container(
            height: 194.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: Colors.transparent),
            child: Stack(fit: StackFit.expand,
                //alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.9),
                          Colors.black26,
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
                          widget.mealName,
                          style: GoogleFonts.tajawal(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "الدهون  ${widget.fatLevel}",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الكارب  ${widget.carbsLevel}",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "البروتين  ${widget.proteinLevel}",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: kgradiantColor,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: Text(
                        widget.time,
                        style: GoogleFonts.tajawal(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ]));
  }
}
