import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class LevelWidget extends StatefulWidget {
  const LevelWidget({Key? key}) : super(key: key);

  @override
  State<LevelWidget> createState() => _LevelWidgetState();
}

class _LevelWidgetState extends State<LevelWidget> {
  int _level = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          color: klightGreyColor,
          height: 305.h,
          width: 137.w,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _level = 1;
                    });
                  },
                  child: Container(
                    height: 71.h,
                    color: _level == 1 ? kblackColor : klightGreyColor,
                    child: Center(
                      child: Text(
                        "محترف",
                        style: GoogleFonts.tajawal(
                            fontSize: 18.sp,
                            color: _level == 1 ? Colors.white : kblackColor),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _level = 2;
                    });
                  },
                  child: Container(
                    height: 71.h,
                    color: _level == 2 ? kblackColor : klightGreyColor,
                    child: Center(
                        child: Text(
                      "متوسط",
                      style: GoogleFonts.tajawal(
                          fontSize: 18.sp,
                          color: _level == 2 ? Colors.white : kblackColor),
                    )),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _level = 3;
                      });
                    },
                    child: Container(
                      height: 71.h,
                      color: _level == 3 ? kblackColor : klightGreyColor,
                      child: Center(
                          child: Text(
                        "مبتدئ",
                        style: GoogleFonts.tajawal(
                            fontSize: 18.sp,
                            color: _level == 3 ? Colors.white : kblackColor),
                      )),
                    )),
              ]),
        ),
      ),
    );
  }
}
