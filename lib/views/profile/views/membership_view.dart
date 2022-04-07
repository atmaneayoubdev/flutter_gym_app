import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../widgets/membership_widget.dart';

class MemberShipView extends StatefulWidget {
  const MemberShipView({Key? key}) : super(key: key);
  static const String routeName = '/membership';
  @override
  State<MemberShipView> createState() => _MemberShipViewState();
}

class _MemberShipViewState extends State<MemberShipView> {
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

  List<Widget> memberships = [
    const MemberShipWidget(),
    const MemberShipWidget(),
    const MemberShipWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash_image.png"))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 274.h,
              width: double.infinity,
              child: Center(
                  child: Text(
                "قم باختيار العضويه المناسبه لك وتابع تقدمك علي يد أفضل المدربين",
                style: GoogleFonts.tajawal(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              )),
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: klightGreyColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 13.h,
                ),
                SizedBox(
                  height: 459.h,
                  width: double.infinity,
                  child: Center(
                    child: CarouselSlider(
                      options: CarouselOptions(
                          initialPage: 0,
                          //aspectRatio: 16 / 9,
                          enlargeCenterPage: true,
                          height: 474.h,
                          enableInfiniteScroll: true,
                          pageSnapping: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              slideIndex = index;
                            });
                          }),
                      items: memberships,
                      carouselController: CarouselController(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < memberships.length; i++)
                      i == slideIndex
                          ? _buildPageIndicator(true)
                          : _buildPageIndicator(false),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 53.h,
                    margin:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 25.h),
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      color: klightGreyColor,
                      border: Border.all(color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(36.r),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "الاشتراك بالباقه",
                            style: GoogleFonts.tajawal(
                              fontSize: 18.sp,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: kgradiantColor,
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
