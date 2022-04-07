import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/constants.dart';

class BodyTypeWidget extends StatefulWidget {
  const BodyTypeWidget({Key? key}) : super(key: key);

  @override
  State<BodyTypeWidget> createState() => _BodyTypeWidgetState();
}

class _BodyTypeWidgetState extends State<BodyTypeWidget> {
  int slideIndex = 1;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 8.h,
      width: isCurrentPage ? 18.h : 14.h,
      decoration: BoxDecoration(
        color: isCurrentPage ? kredColor : klightRedColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  List<Widget> types = [
    Container(
      padding: const EdgeInsets.all(30),
      height: 311.h,
      width: 234.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: kblackColor),
      ),
      child: Center(child: Image.asset("assets/images/body1.png")),
    ),
    Container(
      padding: const EdgeInsets.all(30),
      height: 311.h,
      width: 234.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: kblackColor),
      ),
      child: Center(child: Image.asset("assets/images/body2.png")),
    ),
    Container(
      padding: const EdgeInsets.all(30),
      height: 311.h,
      width: 234.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: kblackColor),
      ),
      child: Center(child: Image.asset("assets/images/body3.png")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          SizedBox(
            height: 311.h,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                  initialPage: 1,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  height: 311.h,
                  enableInfiniteScroll: false,
                  pageSnapping: true,
                  viewportFraction: 0.5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      slideIndex = index;
                    });
                  }),
              items: types,
              carouselController: CarouselController(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                i == slideIndex
                    ? _buildPageIndicator(true)
                    : _buildPageIndicator(false),
            ],
          ),
        ],
      ),
    );
  }
}
