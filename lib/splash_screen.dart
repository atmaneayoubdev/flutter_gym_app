import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/views/OnBoarding/views/introduction_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      if (kDebugMode) {
        print("Yeah, this line is printed after 3 seconds");
      }
      Navigator.pushReplacementNamed(context, IntroductionView.routeName);
    });
    super.initState();
  }

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
        child: Center(
          child: SizedBox(
            height: 96.h,
            child: Image.asset("assets/icons/Logo.png"),
          ),
        ),
      ),
    );
  }
}
