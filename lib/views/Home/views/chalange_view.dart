import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/Home/views/chalenge_video_view.dart';
import 'package:gym/views/Home/widget/chalenge_grid_element_widget.dart';

class ChalengeView extends StatefulWidget {
  const ChalengeView({Key? key}) : super(key: key);
  static const String routeName = '/chalenge';
  @override
  State<ChalengeView> createState() => _ChalengeViewState();
}

class _ChalengeViewState extends State<ChalengeView> {
  final int _width = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 418.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/main_chalenge.png"),
                    fit: BoxFit.fill)),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.9),
                    Colors.black26,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 27.w),
                child: const BackButtonWidget(
                  backGroundColor: Colors.white24,
                  iconColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 160.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "( 100 ) تمرين ضغط",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 66.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.r),
                            gradient: kgradiantColor,
                          ),
                          child: Center(
                            child: Text(
                              "8 اسابيع",
                              style: GoogleFonts.tajawal(
                                height: 2,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '4.7',
                                style: GoogleFonts.tajawal(
                                  height: 1.8,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kYellowColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Center(
                              child: Icon(
                                Icons.star,
                                color: kYellowColor,
                                size: 20.h,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 16.h,
                    left: 16.w,
                    right: 16.w,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(37.r),
                      topRight: Radius.circular(37.r),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "تفاصيل التحدي",
                              style: GoogleFonts.tajawal(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: kblackColor,
                              ),
                            ),
                            Text(
                              "(3 ايام اسبوعيا)",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kredColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          "اتبع هذا التمرين للوصول الي ١٠٠ تمرين ضغط بدون توقف",
                          style: GoogleFonts.tajawal(
                            //height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: kgreyColor,
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          " مكتمل " "$_width % ",
                          style: GoogleFonts.tajawal(
                            //height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepOrange,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 8.h,
                          width: 364.w,
                          child: Stack(
                            children: [
                              Container(
                                height: 8.h,
                                width: 364.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color:
                                      const Color.fromRGBO(237, 237, 237, 0.5),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 400),
                                height: 8.h,
                                width: (364.w / 100) * _width,
                                constraints: BoxConstraints(maxWidth: 379.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  gradient: kgradiantColot,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 23.h,
                        ),
                        const Divider(),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          //physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10.h,
                            crossAxisSpacing: 10.w,
                          ),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ChalengeVideoView.routeName);
                                },
                                child: const ChalengeGridElementWidget());
                          },
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 53.h,
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          decoration: BoxDecoration(
                            color: klightGreyColor,
                            border: Border.all(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(36.r),
                          ),
                          child: Center(
                            child: Text(
                              "تقييم التحدي",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: Colors.deepOrange,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
