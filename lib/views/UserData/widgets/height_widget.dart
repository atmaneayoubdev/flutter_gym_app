import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({Key? key}) : super(key: key);

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  double _currentHeight = 180;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          SvgPicture.asset(
            "assets/images/height.svg",
            height: 207.h,
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            "${_currentHeight.toInt()}" "سم",
            style: GoogleFonts.tajawal(fontSize: 22.sp, color: kredColor),
          ),
          Slider(
            thumbColor: kredColor,
            activeColor: kblackColor,
            value: _currentHeight,
            max: 200,
            divisions: 200,
            //label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentHeight = value;
              });
            },
          )
        ],
      ),
    );
  }
}
