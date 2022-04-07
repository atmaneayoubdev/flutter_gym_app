import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';

import '../widgets/meal_component.dart';

class MealView extends StatefulWidget {
  const MealView({Key? key}) : super(key: key);
  static const String routeName = '/mealview';
  @override
  State<MealView> createState() => _MealViewState();
}

class _MealViewState extends State<MealView> {
  bool isIngridiants = false;
  String ingrediants =
      "قطع دجاج من الصدور، ملح وفلفل أسود وبهارات وفصين ثوم وبقدونس وفلفل أحمر وملعقة زيت زيتون. الطريقة: نقوم بخلط جميع المكونات السابقة الثوم والبقدونس والملح والفلفل الأسود والأحمر والبهارات وكل ما سبق يتم خلطهم مع بعض حتى تمام التجانس.";
  String howToCook =
      "قطع دجاج من الصدور، ملح وفلفل أسود وبهارات وفصت السابقة الثوم والبقدونس والملح والفلفل الأسود والأحمر والبهارات وكل ما سبق يتم خلطهم مع بعض حتى تمام التجانس.";
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
                    image: AssetImage("assets/images/meal.png"),
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
                  backGroundColor: Colors.white,
                  iconColor: kblackColor,
                ),
              ),
              SizedBox(
                height: 170.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MealComponent(
                    name: "البروتين",
                    level: "18g",
                  ),
                  SizedBox(
                    width: 44.w,
                  ),
                  const MealComponent(
                    name: "الكارب",
                    level: "13g",
                  ),
                  SizedBox(
                    width: 44.w,
                  ),
                  const MealComponent(
                    name: "الدهون",
                    level: "70g",
                  ),
                ],
              ),
              SizedBox(
                height: 17.h,
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "صدور دجاج",
                            style: GoogleFonts.tajawal(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: kblackColor,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              gradient: kgradiantColor,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.access_time,
                                    color: Colors.white,
                                    size: 15.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Center(
                                  child: Text(
                                    "60 دقيقه",
                                    style: GoogleFonts.tajawal(
                                      height: 2,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Center(
                        child: Text(
                          "تلعب فوائد صدور الدجاج المشوي دور هام في تحفيز وظائف المخ وتنشيط عملية التمثيل الغذائي بصفة خاصة أثناء تخسيس الوزن. … تحوي صدور الدجاج المشوي مادة السيلينيوم المفيدة الضرورية لتقوية مناعة الجسم أثناء إنقاص الوزن. الشعور بالشبع وتخفيف الرغبة من تناول الأطعمة الكربوهيدراتية من فوائد الدجاج المشوي للرجيم.",
                          style: GoogleFonts.tajawal(
                            //height: 2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: kgreyColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 54.h,
                        //width: 376.w,
                        //margin: EdgeInsets.symmetric(horizontal: 30.w),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: klightGreyColor,
                            borderRadius: BorderRadius.circular(9.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isIngridiants = !isIngridiants;
                                  });
                                },
                                child: Container(
                                  //width: 150.w,
                                  decoration: BoxDecoration(
                                    color: isIngridiants
                                        ? Colors.transparent
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "المكونات",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 16.sp,
                                        color: isIngridiants
                                            ? const Color.fromRGBO(
                                                154, 161, 171, 1)
                                            : kredColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isIngridiants = !isIngridiants;
                                  });
                                },
                                child: Container(
                                  //width: 150.w,
                                  decoration: BoxDecoration(
                                    color: !isIngridiants
                                        ? Colors.transparent
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "كيفيه التحضير",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 16.sp,
                                        color: !isIngridiants
                                            ? const Color.fromRGBO(
                                                154, 161, 171, 1)
                                            : kredColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Expanded(
                        child: Text(
                          isIngridiants ? ingrediants : howToCook,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.tajawal(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: kblackColor,
                          ),
                        ),
                      )
                    ],
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
