import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/Home/views/advise_view.dart';
import 'package:gym/views/Home/views/macroz_calculator.dart';
import 'package:gym/views/Home/widget/inspiring_stories_widget.dart';
import 'package:gym/views/Home/widget/interesting_subjects_widgets.dart';

import '../../../common/header_widget.dart';
import '../widget/home_horizontal_list_widget.dart';
import '../widget/today_advise_widget.dart';
import 'chalange_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _width = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(title: "يومك كله صحه وطاقه يا\nahmed"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: kgradiantColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text(
                            "اشترك الان ف العضويه المميزه",
                            maxLines: 1,
                            style: GoogleFonts.tajawal(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "ابدا التغيير الان",
                          maxLines: 1,
                          style: GoogleFonts.tajawal(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          width: 135.w,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "اشتراك ",
                              style: GoogleFonts.tajawal(
                                height: 2,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: kredColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Text(
                      "تحدي نفسك يوميا",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 240.h,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ChalengeView.routeName);
                          },
                          child: const HomeHorizontalListWidget(
                            duration: "5 اسابيع",
                            name: "تمرين ضغط ( 100 )",
                            rating: "4.7",
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all(color: klightGreyColo2r, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "احتياج المياه",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: kblackColor,
                              ),
                            ),
                            SizedBox(
                              height: 0.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/cup.svg",
                                  height: 16.h,
                                  color: kredColor,
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  "16 / $_width",
                                  style: GoogleFonts.tajawal(
                                    height: 2,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: kredColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 8.h,
                              width: 238.w,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 8.h,
                                    width: 238.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: const Color.fromRGBO(
                                          237, 237, 237, 0.5),
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 400),
                                    height: 8.h,
                                    width: (238.w / 16) * _width,
                                    constraints:
                                        BoxConstraints(maxWidth: 379.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      gradient: kgradiantColot,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (_width < 16) {
                                  setState(() {
                                    _width++;
                                  });
                                } else {}
                              },
                              child: Container(
                                //width: 150.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border:
                                        Border.all(color: kredColor, width: 1)),
                                child: Center(
                                  child: Text(
                                    "شراب كوب ماء",
                                    maxLines: 1,
                                    style: GoogleFonts.tajawal(
                                      //,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kredColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/images/hydro.svg",
                              fit: BoxFit.fill,
                              height: 125.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all(color: klightGreyColo2r, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "هنساعدك على معرفة كمية السعرات الحرارية المطلوبة يومياً لك",
                          maxLines: 2,
                          style: GoogleFonts.tajawal(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: kblackColor,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MacrozCalculator.routeName);
                          },
                          child: Container(
                            width: 160.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(color: kredColor, width: 1)),
                            child: Center(
                              child: Text(
                                "حساب الماكروز",
                                maxLines: 1,
                                style: GoogleFonts.tajawal(
                                  //,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kredColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 116.h,
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all(color: klightGreyColo2r, width: 1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(right: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "قم بدعوه صديقك واحصل.",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: kblackColor,
                                  ),
                                ),
                                Text(
                                  "علي 60 % خصم",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: kblackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SvgPicture.asset(
                              "assets/images/gift.svg",
                              fit: BoxFit.fill,
                              height: 79.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Text(
                      "نصائح صحيه",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 14.h,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AdviseView.routeName);
                        },
                        child: const TodaysAdviseWidget(
                          image: "assets/images/today_advise.png",
                          title:
                              "لماذا 20 دقيقه هو الررقم السحري. لجهاز مناعي اكثر صحه",
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Text(
                      "مواضيع تهمك",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 240.h,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return const IntrestingSubjectsWidget(
                          title: "4 تمارين فقط لعضلات البطن",
                          image: 'assets/images/intresting_subjects.png',
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Text(
                      "قصص ملهمه لابطال جدد",
                      style: GoogleFonts.tajawal(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: kblackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 240.h,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return const InspiringSrotiesWidget(
                          title: "قصه خساره احمد محمود ل 18 كيلو خلال 12 اسبوع",
                          image: 'assets/images/inspiring_stories.png',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
