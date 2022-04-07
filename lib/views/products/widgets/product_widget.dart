import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.favorite,
    required this.isGrid,
  }) : super(key: key);
  final String image;
  final String name;
  final String price;
  final bool favorite;
  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      height: isGrid ? 206.h : 232.h,
      width: isGrid ? 209.w : 183.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 115.h,
                    width: 115.w,
                    child: Center(
                      child: Image.asset(image),
                    ),
                  ),
                ),
                SizedBox(
                  height: isGrid ? 19.h : 22.h,
                ),
                Text(
                  name,
                  style: GoogleFonts.tajawal(
                    fontSize: 12.sp,
                    color: kblackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  price,
                  style: GoogleFonts.tajawal(
                    fontSize: 14.sp,
                    color: kredColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
          InkWell(
            onTap: () {},
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.center,
                height: isGrid ? 21.h : 23.h,
                width: isGrid ? 21.h : 23.h,
                //padding: const EdgeInsets.all(11),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: isGrid
                    ? Icon(
                        favorite ? Icons.star : Icons.start_outlined,
                        size: isGrid ? 18.h : 17.h,
                        color: kYellowColor,
                      )
                    : Icon(
                        favorite ? Icons.favorite : Icons.favorite_outline,
                        size: 18.h,
                        color: kYellowColor,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
