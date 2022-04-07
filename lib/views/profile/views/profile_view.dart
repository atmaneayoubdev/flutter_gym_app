import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/profile/views/membership_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  static const String routeName = '/profile';
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // height: double.infinity,
      // width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color.fromARGB(255, 241, 100, 0),
            kYellowColor,
          ],
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 90.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const BackButtonWidget(
                  iconColor: Colors.deepOrange,
                  backGroundColor: Colors.white,
                ),
              ),
              const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          height: 120.h,
          width: 120.w,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/images/profile_pic.png",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          "محمد محمود السعيد",
          style: GoogleFonts.tajawal(
            fontSize: 15.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 12.h),
        InkWell(
          onTap: (() {
            Navigator.pushNamed(context, MemberShipView.routeName);
          }),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              "العضويه البرونزيه",
              style: GoogleFonts.tajawal(
                height: 2,
                fontSize: 12.sp,
                color: kredColor,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          "باقي 25 يوم علي انتهاء الباقه",
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color: Colors.white,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 15.h),
        Expanded(
            child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 15.w,
              ),
              decoration: BoxDecoration(
                color: klightGreyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.r),
                  topRight: Radius.circular(36.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "المستوي الحالي : الاول",
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            color: kblackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 18.h),
                        Container(
                          width: 361.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(11.r),
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: (50 * 326.w) / 100,
                              height: 15.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.r),
                                gradient: kgradiantColot,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "5%",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kredColor,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              " 70 نقطه للمستوي الثاني",
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                color: kredColor,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          //height: 93.h,
                          //width: 194.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "الوزن الحالي",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kblackColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                      height: 31.h,
                                      width: 31.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: klightGreyColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return kgradiantColor
                                              .createShader(bounds);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/mizan.svg",
                                          color: Colors.white,
                                        ),
                                      )))
                                ],
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "79 كجم",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kredColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          //height: 93.h,
                          //width: 194.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "الطول",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kblackColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                      height: 31.h,
                                      width: 31.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: klightGreyColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return kgradiantColor
                                              .createShader(bounds);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/height_meter.svg",
                                          color: Colors.white,
                                        ),
                                      )))
                                ],
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "185 سم",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kredColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          //height: 93.h,
                          //width: 194.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "نسبه الدهون",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kblackColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                      height: 31.h,
                                      width: 31.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: klightGreyColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return kgradiantColor
                                              .createShader(bounds);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/grees_perc.svg",
                                          color: Colors.white,
                                        ),
                                      )))
                                ],
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "15 %",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kredColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          //height: 93.h,
                          //width: 194.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "كتله العضلات",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kblackColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                      height: 31.h,
                                      width: 31.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: klightGreyColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return kgradiantColor
                                              .createShader(bounds);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/bicep2.svg",
                                          color: Colors.white,
                                        ),
                                      )))
                                ],
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "79 كجم",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kredColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          //height: 93.h,
                          //width: 194.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "سعرات حراريه",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.sp,
                                      color: kblackColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Container(
                                      height: 31.h,
                                      width: 31.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: klightGreyColor,
                                      ),
                                      child: Center(
                                          child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return kgradiantColor
                                              .createShader(bounds);
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/calories.svg",
                                          color: Colors.white,
                                        ),
                                      )))
                                ],
                              ),
                              SizedBox(height: 21.h),
                              Text(
                                "22298",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.sp,
                                  color: kredColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 53.h,
                margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
                padding: EdgeInsets.symmetric(vertical: 15.h),
                decoration: BoxDecoration(
                  color: klightGreyColor,
                  border: Border.all(color: Colors.deepOrange),
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: Center(
                  child: Text(
                    "تعديل بياناتي",
                    style: GoogleFonts.tajawal(
                      fontSize: 14.sp,
                      color: Colors.deepOrange,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ],
        ))
      ]),
    ));
  }
}
