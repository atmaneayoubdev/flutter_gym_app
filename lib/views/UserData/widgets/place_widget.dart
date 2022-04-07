import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class PlaceWidget extends StatefulWidget {
  const PlaceWidget({Key? key}) : super(key: key);

  @override
  State<PlaceWidget> createState() => _PlaceWidgetState();
}

class _PlaceWidgetState extends State<PlaceWidget> {
  bool _isHome = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 40.h,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isHome = true;
              });
            },
            child: Container(
              height: 153.h,
              width: 354.w,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
                border: Border.all(
                  color: _isHome ? kBorderColor : Colors.transparent,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "المنزل",
                      style: GoogleFonts.tajawal(
                        fontSize: 22.sp,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 129.h,
                    width: 166.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                      child: Center(
                        child: SvgPicture.asset("assets/images/home.svg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.w,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isHome = false;
              });
            },
            child: Container(
              height: 153.h,
              width: 354.w,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.r),
                color: klightGreyColor,
                border: Border.all(
                  color: !_isHome ? kBorderColor : Colors.transparent,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "الجيم",
                      style: GoogleFonts.tajawal(
                        fontSize: 22.sp,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 129.h,
                    width: 166.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                      child: Center(
                        child: SvgPicture.asset("assets/images/gym.svg"),
                      ),
                    ),
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
