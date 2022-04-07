import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:gym/views/auth/views/signin_view.dart';

class SignUpView extends StatefulWidget {
  static const String routeName = '/signup';
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_image.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 340.h,
              width: double.infinity,
              child: Center(
                child: SizedBox(
                    height: 57.h,
                    width: 96.w,
                    child: Image.asset("assets/icons/Logo.png")),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kBackGroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.w, vertical: 25.h),
                        height: 570.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            bottomRight: Radius.circular(50.r),
                            bottomLeft: Radius.circular(50.r),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              spreadRadius: 0.5,
                              offset: Offset(3, 10), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "انشاء حساب",
                                style: GoogleFonts.tajawal(
                                  fontSize: 24.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/contact_placeholder.svg",
                                  height: 19.h,
                                  color: kredColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "اسم المستخدم",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 59.h,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: const Color.fromARGB(255, 247, 247, 247),
                              ),
                              child: const TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 15.sp,
                                  color: kredColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "البريد الالكتروني",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 59.h,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: const Color.fromARGB(255, 247, 247, 247),
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 15.sp,
                                  color: kredColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "كلمة المرور",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 59.h,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: const Color.fromARGB(255, 247, 247, 247),
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "نسيت كلمه المرور ؟",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.sp,
                                color: kredColor,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.pushReplacementNamed(
                                //   context,
                                //   TabView.routeName,
                                // );
                              },
                              child: Container(
                                height: 53.h,
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: kgradiantColot,
                                ),
                                child: FittedBox(
                                  child: Text(
                                    "دخول",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25.h),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, SignInView.routeName);
                            },
                            child: Container(
                              width: 350.w,
                              height: 51.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: kredColor),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('ليس لديك حساب ؟   ',
                                      style: GoogleFonts.tajawal(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                      )),
                                  Text(
                                    "انشاء حساب",
                                    style: GoogleFonts.tajawal(
                                        color: Colors.black, fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
