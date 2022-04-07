import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class GenderPicker extends StatefulWidget {
  const GenderPicker({Key? key}) : super(key: key);

  @override
  State<GenderPicker> createState() => _GenderPickerState();
}

class _GenderPickerState extends State<GenderPicker> {
  bool _isMan = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 80.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 156.h,
                width: 155.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: klightGreyColor,
                  border: Border.all(
                    color: _isMan ? kBorderColor : Colors.transparent,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11.r),
                  child: Material(
                    child: InkWell(
                      splashColor: kBorderColor,
                      focusColor: klightGreyColor,
                      //highlightColor: klightGreyColor,
                      onTap: () {
                        setState(() {
                          _isMan = true;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 30.w),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/man.svg"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "ذكر",
                style: GoogleFonts.tajawal(
                  fontSize: 16.sp,
                  color: kblackColor,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            children: [
              Container(
                height: 156.h,
                width: 155.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: klightGreyColor,
                  border: Border.all(
                    color: _isMan ? Colors.transparent : kBorderColor,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11.r),
                  child: Material(
                    child: InkWell(
                      splashColor: kblackColor,
                      onTap: () {
                        setState(() {
                          _isMan = false;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 30.w),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/woman.svg"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "انثي",
                style: GoogleFonts.tajawal(
                  fontSize: 16.sp,
                  color: kblackColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
