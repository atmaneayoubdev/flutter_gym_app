import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widget/chalenge_list_widget.dart';

class ChalengeVideoView extends StatefulWidget {
  const ChalengeVideoView({Key? key}) : super(key: key);
  static const String routeName = '/chalenge_video';

  @override
  State<ChalengeVideoView> createState() => _ChalengeVideoViewState();
}

class _ChalengeVideoViewState extends State<ChalengeVideoView> {
  bool isDone = false;
  bool _isPaused = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/chalenge_video.png"),
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
                  children: const [
                    BackButtonWidget(
                      backGroundColor: Colors.white30,
                      iconColor: kgreyColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25.h),
                  height: 540.h,
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 260.h,
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: 3,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(
                                  height: 9.h,
                                );
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return const ChalengeListWidget();
                              },
                            ),
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
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 25.w),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15.h),
                                      decoration: BoxDecoration(
                                        color: klightGreyColor,
                                        border: Border.all(
                                            color: Colors.deepOrange),
                                        borderRadius:
                                            BorderRadius.circular(36.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "بدء اليوم الجديد",
                                          style: GoogleFonts.tajawal(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.deepOrange,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      // height: 130.h,
                                      // width: 130.w,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isPaused = !_isPaused;
                                            });
                                          },
                                          child: Container(
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
                                            child: Center(
                                              child: Icon(
                                                _isPaused
                                                    ? Icons.play_arrow
                                                    : Icons.pause,
                                                color: const Color.fromARGB(
                                                    255, 60, 16, 16),
                                              ),
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
                                              color: Colors.grey.shade100,
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
