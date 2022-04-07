import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TodaysAdviseWidget extends StatelessWidget {
  const TodaysAdviseWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 240.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.r),
          image: DecorationImage(
            image: AssetImage(image),
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
                    Color.fromARGB(29, 0, 0, 0),
                    Color.fromARGB(188, 0, 0, 0),
                  ],
                ),
                borderRadius: BorderRadius.circular(11.r),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.h,
                horizontal: 10.w,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  title,
                  style: GoogleFonts.tajawal(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
