import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gym/common/header_widget.dart';
import 'package:gym/views/nutrition/views/meal_view.dart';

import '../../../common/week_calandar_widget.dart';
import '../widgets/meal_widget.dart';
import '../widgets/weekly_diett.dart';

class NutritionView extends StatefulWidget {
  const NutritionView({Key? key}) : super(key: key);
  static const String routeName = '/nutrition';

  @override
  State<NutritionView> createState() => _NutritionViewState();
}

class _NutritionViewState extends State<NutritionView> {
  final _currentDay = DateFormat('EEE').format(DateTime.now());
  final _currentDayNumbr = DateFormat('d').format(DateTime.now());
  @override
  void initState() {
    super.initState();
    log(_currentDay);
    log(_currentDayNumbr);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderWidget(title: "انت تقوم بعمل رائع حتي الان ، واصل التقدم"),
        WeekCalandarWidget(
            currentDay: _currentDay, currentDayNumbr: _currentDayNumbr),
        SizedBox(
          height: 24.h,
        ),
        const WeeklyNutritionRegime(
            proteinLevel: "g 657.0",
            caloriesCount: "1886",
            caloriesGoalPercent: 80,
            carbsLevel: "g 67.0",
            fatLevel: "g 67.0"),
        SizedBox(
          height: 14.h,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 12.h);
          },
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MealView.routeName);
              },
              child: const MealWidget(
                carbsLevel: "g 67.0",
                fatLevel: "g 67.0",
                imagePath: "assets/images/burger.png",
                isDone: false,
                mealName: "خبز نخاله الشوفان (115 g)",
                mealType: "الافطار",
                proteinLevel: "g 67.0",
                time: "09:00 AM",
              ),
            );
          },
        )),
      ],
    );
  }
}
