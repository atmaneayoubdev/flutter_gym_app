import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/Home/views/home_view.dart';
import 'package:gym/views/achivements/views/achivements_view.dart';
import 'package:gym/views/exercice/views/exercice_view.dart';
import 'package:gym/views/nutrition/views/nutrition_view.dart';
import 'package:gym/views/products/views/products_view.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);
  static const String routeName = '/tab';

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNavBarItem("assets/icons/home_nav.svg", 0),
          buildNavBarItem("assets/icons/exercice_nav.svg", 1),
          buildNavBarItem("assets/icons/nutrition_nav.svg", 2),
          buildNavBarItem("assets/icons/accolades_nav.svg", 3),
          buildNavBarItem("assets/icons/products_nav.svg", 4),
        ],
      ),
      body: _selectedIndex == 0
          ? const SafeArea(child: HomeView())
          : _selectedIndex == 1
              ? const SafeArea(child: ExerciceView())
              : _selectedIndex == 2
                  ? const SafeArea(child: NutritionView())
                  : _selectedIndex == 3
                      ? const SafeArea(child: AchivementsView())
                      : const SafeArea(child: ProductsView()),
    );
  }

  buildNavBarItem(String icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 81.h,
        width: MediaQuery.of(context).size.width / 5,
        //padding: EdgeInsets.symmetric(horizontal: 33.w),
        decoration: _selectedIndex == index
            ? BoxDecoration(
                color: Colors.white,
                border: const Border(
                  top: BorderSide(
                    color: kredColor,
                    width: 2,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.red.withOpacity(0.015),
                    Colors.red.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              )
            : const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                )),
              ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _selectedIndex == index
                  ? ShaderMask(
                      shaderCallback: (bounds) {
                        return kgradiantColor.createShader(bounds);
                      },
                      child: SvgPicture.asset(
                        icon,
                        color: Colors.white,
                      ),
                    )
                  : SvgPicture.asset(
                      icon,
                      color: kgreyColor,
                    ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                index == 0
                    ? "الرئيسيه"
                    : index == 1
                        ? "التمارين"
                        : index == 2
                            ? "التغذيه"
                            : index == 3
                                ? "الانجازات"
                                : "المنتجات",
                style: GoogleFonts.tajawal(
                  fontSize: 13.sp,
                  color: _selectedIndex == index
                      ? kredColor
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
