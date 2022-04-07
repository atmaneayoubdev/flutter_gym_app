import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';
import 'package:numberpicker/numberpicker.dart';

class BirthDateWidget extends StatefulWidget {
  const BirthDateWidget({Key? key}) : super(key: key);

  @override
  State<BirthDateWidget> createState() => _BirthDateWidgetState();
}

class _BirthDateWidgetState extends State<BirthDateWidget> {
  int _currentAge = 25;
  int _currentYear = 2000;
  int _currentMonth = 2;

  final List<String> _arMonthList = [
    "يناير ",
    "فبراير ",
    "مارس ",
    "أبريل ",
    "مايو ",
    "يونيو ",
    "يوليو ",
    "أغسطس ",
    "سبتمبر ",
    "أكتوبر ",
    "نوفمبر ",
    "ديسمبر  ",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 0.w),
        child: SizedBox(
          height: 250.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberPicker(
                value: _currentAge,
                minValue: 0,
                maxValue: 100,
                selectedTextStyle: GoogleFonts.tajawal(
                  fontSize: 29.sp,
                  color: kblackColor,
                  fontWeight: FontWeight.bold,
                ),
                itemCount: 7,
                itemHeight: 36.h,
                textStyle: GoogleFonts.tajawal(
                  fontSize: 22.sp,
                  color: kblackColor,
                ),
                onChanged: (age) => setState(() => _currentAge = age),
              ),
              SizedBox(
                height: 250.h,
                width: 130.w,
                child: CupertinoPicker(
                    itemExtent: 50.h,
                    looping: true,
                    diameterRatio: 100,
                    squeeze: 1,
                    magnification: 1.35,
                    selectionOverlay: const SizedBox(),
                    onSelectedItemChanged: (index) {
                      setState(() {
                        _currentMonth = index;
                        if (kDebugMode) {
                          print(_currentMonth);
                        }
                      });
                    },
                    children: [
                      NewWidget(arMonthList: _arMonthList, index: 0),
                      NewWidget(arMonthList: _arMonthList, index: 1),
                      NewWidget(arMonthList: _arMonthList, index: 2),
                      NewWidget(arMonthList: _arMonthList, index: 3),
                      NewWidget(arMonthList: _arMonthList, index: 4),
                      NewWidget(arMonthList: _arMonthList, index: 5),
                      NewWidget(arMonthList: _arMonthList, index: 6),
                      NewWidget(arMonthList: _arMonthList, index: 7),
                      NewWidget(arMonthList: _arMonthList, index: 8),
                      NewWidget(arMonthList: _arMonthList, index: 9),
                      NewWidget(arMonthList: _arMonthList, index: 10),
                      NewWidget(arMonthList: _arMonthList, index: 11),
                    ]),
              ),
              NumberPicker(
                value: _currentYear,
                minValue: 1990,
                maxValue: 2010,
                selectedTextStyle: GoogleFonts.tajawal(
                  fontSize: 29.sp,
                  color: kblackColor,
                  fontWeight: FontWeight.bold,
                ),
                itemCount: 7,
                itemHeight: 36.h,
                textStyle: GoogleFonts.tajawal(
                  fontSize: 22.sp,
                  color: kblackColor,
                ),
                onChanged: (year) => setState(() => _currentYear = year),
              ),
            ],
          ),
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required List<String> arMonthList,
    required this.index,
  })  : _arMonthList = arMonthList,
        super(key: key);

  final List<String> _arMonthList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Center(
        child: Text(
          _arMonthList.elementAt(index),
          style: GoogleFonts.tajawal(
            fontSize: 22.sp,
            color: kblackColor,
          ),
        ),
      ),
    );
  }
}
