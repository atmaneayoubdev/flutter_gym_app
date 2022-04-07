import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/large_button.dart';
import 'package:gym/tab_view.dart';
import 'package:gym/views/UserData/widgets/age_widget.dart';
import 'package:gym/views/UserData/widgets/birth_date_widget.dart';
import 'package:gym/views/UserData/widgets/days_widget.dart';
import 'package:gym/views/UserData/widgets/height_widget.dart';
import 'package:gym/views/UserData/widgets/level_widget.dart';

import '../../../common/back_button.dart';
import '../widgets/Focus_widget.dart';
import '../widgets/body_type.dart';
import '../widgets/finished_widget.dart';
import '../widgets/gender_widget.dart';
import '../widgets/place_widget.dart';
import '../widgets/weight_widget.dart';

class UserMainData extends StatefulWidget {
  const UserMainData({Key? key}) : super(key: key);
  static const String routeName = '/user_data';

  @override
  State<UserMainData> createState() => _UserMainDataState();
}

class _UserMainDataState extends State<UserMainData> {
  int _width = 0;
  List<String> titles = [
    "اختار النوع ؟",
    "ماعمرك ؟",
    "حدد تاريخ ميلادك",
    "ماهو طولك ؟",
    "ماهو وزنك ؟",
    "اختر الصوره الاقرب لشكل جسمك ؟",
    "اختر مكان التدريب الخاص بك",
    "حدد مستواك الرياضي",
    "حدد الايام والاوقات التي تناسبك",
    "ايه ال مهتم تركز عليه اكتر ؟",
    "لحظات وتحصل علي  برنامجك المثالي الذي أعده أفضل المدربين وخبراء التغذية وباستخدام تقنية الذكاء الاصطناعي.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_image.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 343.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 67.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          _width == 0
                              ? Navigator.of(context).pop()
                              : setState(() {
                                  _width--;
                                });
                        },
                        child: const BackButtonWidget(),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            titles[_width],
                            style: GoogleFonts.tajawal(
                              fontSize: 25.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      if (_width < 10)
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (_width < 10)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "10 / $_width",
                                    style: GoogleFonts.muli(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                height: 5.h,
                                width: 379.w,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 379.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: const Color.fromRGBO(
                                            237, 237, 237, 0.5),
                                      ),
                                    ),
                                    AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      height: 5.h,
                                      width: (379.w / 10) * _width,
                                      constraints:
                                          BoxConstraints(maxWidth: 379.w),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: _width == 0
                      ? const GenderPicker()
                      : _width == 1
                          ? const AgePickerWidget()
                          : _width == 2
                              ? const BirthDateWidget()
                              : _width == 3
                                  ? const HeightWidget()
                                  : _width == 4
                                      ? const WeightWidget()
                                      : _width == 5
                                          ? const BodyTypeWidget()
                                          : _width == 6
                                              ? const PlaceWidget()
                                              : _width == 7
                                                  ? const LevelWidget()
                                                  : _width == 8
                                                      ? const DaysWidget()
                                                      : _width == 9
                                                          ? const FocusWidget()
                                                          : _width == 10
                                                              ? const FinishedWidget()
                                                              : const SizedBox(),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      if (_width < 10) {
                        setState(() {
                          _width++;
                        });
                      } else {
                        log("All Done");
                        Navigator.of(context)
                            .pushReplacementNamed(TabView.routeName);
                      }
                    },
                    child: const LargeButton(
                      title: "متابعه",
                    )),
                SizedBox(
                  height: 30.h,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
