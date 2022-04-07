// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class FocusWidget extends StatefulWidget {
  const FocusWidget({Key? key}) : super(key: key);

  @override
  State<FocusWidget> createState() => _FocusWidgetState();
}

class _FocusWidgetState extends State<FocusWidget> {
  bool _isFirst = true, _iSSecond = false, _isThird = false, _isForth = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 50.h),
      color: Colors.white,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isFirst = !_isFirst;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 78.h,
              width: 344.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: _isFirst ? Colors.transparent : kredColor),
                          shape: BoxShape.circle,
                          gradient: _isFirst
                              ? kgradiantColot
                              : const LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                        ),
                        child: FittedBox(
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color:
                                  _isFirst ? Colors.white : Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "تمارين + تغذيه",
                        style: GoogleFonts.tajawal(
                          fontSize: 21.sp,
                          color: kblackColor,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/arm.svg",
                    height: 26.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _iSSecond = !_iSSecond;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 78.h,
              width: 344.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  _iSSecond ? Colors.transparent : kredColor),
                          shape: BoxShape.circle,
                          gradient: _iSSecond
                              ? kgradiantColot
                              : const LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                        ),
                        child: FittedBox(
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color:
                                  _iSSecond ? Colors.white : Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "نظام غذائي",
                        style: GoogleFonts.tajawal(
                          fontSize: 21.sp,
                          color: kblackColor,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/apple.svg",
                    height: 26.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isThird = !_isThird;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 78.h,
              width: 344.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: _isThird ? Colors.transparent : kredColor),
                          shape: BoxShape.circle,
                          gradient: _isThird
                              ? kgradiantColot
                              : const LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                        ),
                        child: FittedBox(
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color:
                                  _isThird ? Colors.white : Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "تمارين ",
                        style: GoogleFonts.tajawal(
                          fontSize: 21.sp,
                          color: kblackColor,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/exercice.svg",
                    height: 26.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isForth = !_isForth;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 78.h,
              width: 344.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: _isForth ? Colors.transparent : kredColor),
                          shape: BoxShape.circle,
                          gradient: _isForth
                              ? kgradiantColot
                              : const LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                        ),
                        child: FittedBox(
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color:
                                  _isForth ? Colors.white : Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "انقاص الوزن وخساره الدهون",
                        style: GoogleFonts.tajawal(
                          fontSize: 21.sp,
                          color: kblackColor,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/weight_lose.svg",
                    height: 26.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
