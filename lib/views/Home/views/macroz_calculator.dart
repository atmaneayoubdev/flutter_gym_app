import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/Home/widget/macroz_vertical_widget.dart';

class MacrozCalculator extends StatefulWidget {
  const MacrozCalculator({Key? key}) : super(key: key);
  static const String routeName = '/macroz';

  @override
  State<MacrozCalculator> createState() => _MacrozCalculatorState();
}

class _MacrozCalculatorState extends State<MacrozCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          SizedBox(
            height: 54.h,
          ),
          Center(
            child: Text(
              "حساب الماكروز",
              maxLines: 1,
              style: GoogleFonts.tajawal(
                //,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: kblackColor,
              ),
            ),
          ),
          SizedBox(
            height: 54.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 254, 254, 254),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37.r),
                    topRight: Radius.circular(37.r)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "من فضلك ادخل البيانات الاتيه",
                      maxLines: 1,
                      style: GoogleFonts.tajawal(
                        //,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "الطول",
                                maxLines: 1,
                                style: GoogleFonts.tajawal(
                                  //,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kblackColor,
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                height: 59.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "الوزن",
                              maxLines: 1,
                              style: GoogleFonts.tajawal(
                                //,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kblackColor,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              height: 59.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "العمر",
                          maxLines: 1,
                          style: GoogleFonts.tajawal(
                            //,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: kblackColor,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 59.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "النشاط البدني",
                          maxLines: 1,
                          style: GoogleFonts.tajawal(
                            //,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: kblackColor,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 59.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              30.r,
                            ),
                            gradient: kgradiantColot,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            //splashColor: Colors.blue[50],
                            child: Text(
                              "احسب",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        const MacrozVerticaleWidget(
                            fatLevel: "250",
                            carbsLevel: "15",
                            proteinLevel: "320",
                            caloriesCount: "1566"),
                        SizedBox(
                          height: 10.h,
                        ),
                        const MacrozVerticaleWidget(
                            fatLevel: "250",
                            carbsLevel: "15",
                            proteinLevel: "320",
                            caloriesCount: "1566"),
                        SizedBox(
                          height: 10.h,
                        ),
                        const MacrozVerticaleWidget(
                            fatLevel: "250",
                            carbsLevel: "15",
                            proteinLevel: "320",
                            caloriesCount: "1566"),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
