import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/tab_view.dart';
import 'package:gym/views/Home/views/advise_view.dart';
import 'package:gym/views/Home/views/chalange_view.dart';
import 'package:gym/views/Home/views/chalenge_video_view.dart';
import 'package:gym/views/Home/views/home_view.dart';
import 'package:gym/views/Home/views/macroz_calculator.dart';
import 'package:gym/views/OnBoarding/views/introduction_view.dart';
import 'package:gym/views/UserData/views/main_user_data_view.dart';
import 'package:gym/views/achivements/views/achivements_view.dart';
import 'package:gym/views/auth/views/landing_auth_view.dart';
import 'package:gym/splash_screen.dart';
import 'package:gym/views/exercice/views/exercice_video_view.dart';
import 'package:gym/views/exercice/views/exercice_view.dart';
import 'package:gym/views/nutrition/views/meal_view.dart';
import 'package:gym/views/nutrition/views/nutrition_view.dart';
import 'package:gym/views/products/views/products_view.dart';
import 'package:gym/views/profile/views/profile_view.dart';
import 'package:gym/views/profile/views/membership_view.dart';

import 'translations/codegen_loader.g.dart';
import 'views/auth/views/signin_view.dart';
import 'views/auth/views/signup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    EasyLocalization(
      path: 'assets/translations/',
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      startLocale: const Locale('ar'),
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('ar'),
      // child: DevicePreview(
      //   enabled: true,
      //   builder: (context) => const MyApp(), // Wrap your app
      // ),
      child: const MyApp(),
    ), // Wrap your app
    //),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: () => MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Gym',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const SplashScreen(),
        routes: {
          LandinfAuthView.routeName: ((context) => const LandinfAuthView()),
          SignInView.routeName: (context) => const SignInView(),
          SignUpView.routeName: (context) => const SignUpView(),
          UserMainData.routeName: (context) => const UserMainData(),
          IntroductionView.routeName: ((context) => const IntroductionView()),
          TabView.routeName: (context) => const TabView(),
          AchivementsView.routeName: (context) => const AchivementsView(),
          ProductsView.routeName: (context) => const ProductsView(),
          ProfileView.routeName: (context) => const ProfileView(),
          MemberShipView.routeName: (context) => const MemberShipView(),
          NutritionView.routeName: (context) => const NutritionView(),
          MealView.routeName: (context) => const MealView(),
          ExerciceView.routeName: (context) => const ExerciceView(),
          ExerciceVideoView.routeName: (context) => const ExerciceVideoView(),
          HomeView.routeName: (context) => const HomeView(),
          MacrozCalculator.routeName: ((context) => const MacrozCalculator()),
          ChalengeView.routeName: ((context) => const ChalengeView()),
          ChalengeVideoView.routeName: ((context) => const ChalengeVideoView()),
          AdviseView.routeName: ((context) => const AdviseView()),
        },
      ),
    );
  }
}
