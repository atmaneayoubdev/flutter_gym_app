import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../views/profile/views/profile_view.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      //height: 170.h,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ProfileView.routeName);
                },
                child: Container(
                  height: 36.h,
                  //width: 26.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/person.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 36.h,
                    width: 36.h,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: klightRedColor,
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/icons/heart.svg",
                    )),
                  ),
                  SizedBox(
                    width: 23.w,
                  ),
                  Container(
                    height: 36.h,
                    width: 36.h,
                    padding: EdgeInsets.symmetric(vertical: 7.h),
                    decoration: const BoxDecoration(
                      color: klightRedColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/icons/bell.svg",
                    )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: GoogleFonts.tajawal(
                fontSize: 22.sp,
                color: kblackColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
