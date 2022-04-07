import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InspiringSrotiesWidget extends StatelessWidget {
  const InspiringSrotiesWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 182.w,
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
                  Color.fromARGB(0, 0, 0, 0),
                  Color.fromARGB(156, 0, 0, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(11.r),
            ),
          ),
          Stack(
            children: [
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
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
