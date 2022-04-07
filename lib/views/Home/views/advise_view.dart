import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';

class AdviseView extends StatefulWidget {
  const AdviseView({Key? key}) : super(key: key);
  static const String routeName = '/adviseView';
  @override
  State<AdviseView> createState() => _AdviseViewState();
}

class _AdviseViewState extends State<AdviseView> {
  bool isIngridiants = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 600.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/advise_meal.png"),
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
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                child: const BackButtonWidget(
                  backGroundColor: Colors.white,
                  iconColor: kblackColor,
                ),
              ),
              SizedBox(
                height: 170.h,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 30.h,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 308.w,
                        child: Text(
                          "لماذا 20 دقيقه هو الرقم السري لجهاز مناعي اكثر صحه",
                          style: GoogleFonts.tajawal(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: kblackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            "الماء هو المغذيات الأساسية، وليس فقط لتشكل ما بين 50٪ - 70٪ من وزن الجسم، ولكن لأنه هو المفتاح لحسن سير عمل الجسم. وهو بمثابة ناقل للمغذيات والأكسجين من خلال نظام الدورة الدموية، هو إفراز السيارة من السموم، وتليين المفاصل ويمارس وظيفة التنظيم الحراري.",
                            style: GoogleFonts.tajawal(
                              //height: 2,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(131, 142, 163, 1),
                            ),
                          ),
                        ),
                      ),
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
