import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/common/back_button.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/auth/views/signup_view.dart';
import 'signin_view.dart';

class LandinfAuthView extends StatefulWidget {
  const LandinfAuthView({Key? key}) : super(key: key);
  static const String routeName = '/landing_auth';

  @override
  State<LandinfAuthView> createState() => _LandinfAuthViewState();
}

class _LandinfAuthViewState extends State<LandinfAuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 820.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/ilustration3.png"),
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(43.r),
                bottomRight: Radius.circular(43.r),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: kblackgradiant,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(43.r),
                      bottomRight: Radius.circular(43.r),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(43.r),
                      bottomRight: Radius.circular(43.r),
                    ),
                    gradient: kcoloregradiant,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 65.h,
                    bottom: 30.h,
                    right: 30.w,
                    left: 30.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 52.h),
                          const BackButtonWidget(),
                          SizedBox(height: 45.h),
                          Text(
                            "حلمك علي بعد خطوات استمر يابطل",
                            style: GoogleFonts.tajawal(
                              fontSize: 34.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const SignInView()),
                              );
                            },
                            child: Container(
                              height: 51.h,
                              width: 320.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: kgradiantColot,
                              ),
                              child: Center(
                                child: Text(
                                  "تسجيل دخول",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 17.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SignUpView.routeName);
                            },
                            child: Container(
                              height: 51.h,
                              width: 320.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "انشاء حساب",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.normal,
                                    color: kredColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "استكشف الكوتش اولا",
                    style: GoogleFonts.tajawal(
                      height: 2,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: kgradiantColot,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/double_chevron.svg',
                        height: 12.h,
                        color: Colors.white,
                      ),
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
