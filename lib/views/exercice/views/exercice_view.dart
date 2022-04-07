import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/views/exercice/views/exercice_video_view.dart';
import 'package:gym/views/exercice/widgets/exercice_rating_widget.dart';
import 'package:gym/views/exercice/widgets/rating_success_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../common/header_widget.dart';
import '../../../common/week_calandar_widget.dart';
import '../../../constants.dart';
import '../widgets/exercice_list_widget.dart';
import '../widgets/tadays_exercice_widget.dart';

class ExerciceView extends StatefulWidget {
  const ExerciceView({Key? key}) : super(key: key);
  static const String routeName = '/exercice';
  @override
  State<ExerciceView> createState() => _ExerciceViewState();
}

class _ExerciceViewState extends State<ExerciceView> {
  final _currentDay = DateFormat('EEE').format(DateTime.now());
  final _currentDayNumbr = DateFormat('d').format(DateTime.now());
  // ignore: unused_field
  final bool _isRestDay = true;
  @override
  void initState() {
    super.initState();
    log(_currentDay);
    log(_currentDayNumbr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(title: "حلمك علي بعد خطوات.\nاستمر يابطل"),
          WeekCalandarWidget(
              currentDay: _currentDay, currentDayNumbr: _currentDayNumbr),
          SizedBox(
            height: 23.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              "تمرين اليوم",
              style: GoogleFonts.tajawal(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: kblackColor,
              ),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          const TodaysExerciceWidget(
            imagepath: "assets/images/exercice_image.png",
            duration: "60 دقيقه",
            level: "المستوي الثاني",
            name: "Full Body Hustle",
            sets: "15 تمرين",
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            child: FittedBox(
              child: Text(
                "الماء هو المغذيات الأساسية، وليس فقط لتشكل ما بين 50٪ - 70٪",
                maxLines: 1,
                style: GoogleFonts.tajawal(
                  //fontSize: 14.sp,
                  fontWeight: FontWeight.w600,

                  color: kgreyColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "بدء التمرين",
                  style: GoogleFonts.tajawal(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: kblackColor,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    gradient: kgradiantColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                      child: Text(
                    "12 تمرين",
                    style: GoogleFonts.tajawal(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 7.h,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ExerciceVideoView.routeName)
                          .then((value) => showMaterialModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => StatefulBuilder(
                                  builder: (BuildContext context, setState) {
                                    return const ExerciceRatingWidget();
                                  },
                                ),
                              ).then((value) {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => StatefulBuilder(
                                    builder: (BuildContext context, setState) {
                                      return const RatingSuccessWidget();
                                    },
                                  ),
                                );
                              }));
                    },
                    child: const ExerciceListWidget(
                      isDone: true,
                      name: "Inchworm",
                      //duration: "02:00",
                      reps: "20",
                      sets: "4",
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
