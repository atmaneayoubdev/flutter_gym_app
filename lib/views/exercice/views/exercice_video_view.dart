import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ExerciceVideoView extends StatefulWidget {
  const ExerciceVideoView({Key? key}) : super(key: key);
  static const String routeName = '/exercice_video';

  @override
  State<ExerciceVideoView> createState() => _ExerciceVideoViewState();
}

class _ExerciceVideoViewState extends State<ExerciceVideoView> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 646.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/video_image.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: kblackgradiant,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 56.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButtonWidget(
                      backGroundColor: Colors.white,
                      iconColor: kgreyColor,
                    ),
                    Container(
                      height: 33.h,
                      width: 33.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.volume_off,
                          color: kredColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  height: 320.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(37.r),
                      topRight: Radius.circular(37.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 66.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        decoration: BoxDecoration(
                          gradient: kgradiantColor,
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        child: Center(
                          child: Text(
                            "1 / 12",
                            style: GoogleFonts.tajawal(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      isDone
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 32.h,
                                ),
                                Center(
                                  child: SvgPicture.asset(
                                    "assets/icons/video_done.svg",
                                    height: 77.h,
                                  ),
                                ),
                                Text(
                                  "عاش يابطل ، جاهز للتمرينه الثانيه",
                                  style: GoogleFonts.tajawal(
                                    height: 2,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.normal,
                                    color: kblackColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 53.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 25.w),
                                  padding: EdgeInsets.symmetric(vertical: 15.h),
                                  decoration: BoxDecoration(
                                    color: klightGreyColor,
                                    border:
                                        Border.all(color: Colors.deepOrange),
                                    borderRadius: BorderRadius.circular(36.r),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "يلا بينا",
                                          style: GoogleFonts.tajawal(
                                            fontSize: 14.sp,
                                            color: Colors.deepOrange,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/double_chevron.svg",
                                          color: Colors.deepOrange,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Column(
                              children: [
                                SizedBox(
                                  height: 130.h,
                                  width: 130.w,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: CircularPercentIndicator(
                                      radius: 65.h,
                                      lineWidth: 8.0,
                                      animation: true,
                                      percent: 50 / 100,
                                      center: FittedBox(
                                        child: Text(
                                          "19",
                                          style: GoogleFonts.tajawal(
                                            height: 2,
                                            fontSize: 51.sp,
                                            fontWeight: FontWeight.normal,
                                            color: kblackColor,
                                          ),
                                        ),
                                      ),
                                      backgroundColor: klightGreyColor,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      linearGradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color.fromARGB(255, 241, 100, 0),
                                          kYellowColor,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  "1x / 4x",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                    color: kredColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 36.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.w,
                                        vertical: 5.h,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: const Color.fromARGB(
                                            255, 253, 235, 241),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.pause,
                                          color:
                                              Color.fromARGB(255, 60, 16, 16),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isDone = !isDone;
                                        });
                                      },
                                      child: Container(
                                        height: 36.h,
                                        width: 111.w,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                          vertical: 5.h,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: klightGreyColo2r,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "التالي",
                                            style: GoogleFonts.tajawal(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.normal,
                                              color: kblackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
