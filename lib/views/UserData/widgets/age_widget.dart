import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:numberpicker/numberpicker.dart';

class AgePickerWidget extends StatefulWidget {
  const AgePickerWidget({Key? key}) : super(key: key);

  @override
  State<AgePickerWidget> createState() => _AgePickerWidgetState();
}

class _AgePickerWidgetState extends State<AgePickerWidget> {
  int _currentValue = 25;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(80.h),
      child: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return ksliderGradiant.createShader(bounds);
          },
          child: SizedBox(
            height: 300.h,
            child: NumberPicker(
              value: _currentValue,
              minValue: 0,
              maxValue: 100,
              selectedTextStyle: GoogleFonts.tajawal(
                fontSize: 30.sp,
                color: kredColor,
                fontWeight: FontWeight.bold,
              ),
              itemCount: 7,
              itemHeight: 36.h,
              textStyle: GoogleFonts.tajawal(
                fontSize: 22.sp,
                color: kblackColor,
              ),
              onChanged: (value) => setState(() => _currentValue = value),
            ),
          ),
        ),
      ),
    );
  }
}
