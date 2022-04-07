import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:day_night_time_picker/lib/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/constants.dart';

class DaysWidget extends StatefulWidget {
  const DaysWidget({Key? key}) : super(key: key);

  @override
  State<DaysWidget> createState() => _DaysWidgetState();
}

class _DaysWidgetState extends State<DaysWidget> {
  bool _isSat = false;
  bool _isSun = false;
  bool _isMon = false;
  bool _isTue = false;
  bool _isWed = false;
  bool _isThu = false;
  bool _isFri = false;

  TimeOfDay _time = TimeOfDay.now().replacing(hour: 11, minute: 30);
  bool iosStyle = true;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isSat = !_isSat;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isSat ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "السبت",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isSun = !_isSun;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isSun ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الاحد",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isMon = !_isMon;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isMon ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الاثنين",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isTue = !_isTue;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isTue ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الثلاثاء",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isWed = !_isWed;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isWed ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الاربعاء ",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isThu = !_isThu;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isThu ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الخميس",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                splashColor: kblackColor,
                onTap: () {
                  setState(() {
                    _isFri = !_isFri;
                  });
                },
                child: Container(
                  height: 48.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: klightGreyColor,
                      border: Border.all(
                        color: _isFri ? kredColor : Colors.transparent,
                      )),
                  child: Center(
                    child: Text(
                      "الجمعه",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
            ],
          ),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                showPicker(
                  accentColor: kredColor,
                  focusMinutePicker: false,
                  context: context,
                  value: _time,
                  onChange: onTimeChanged,
                  blurredBackground: true,
                  cancelText: "",
                  okText: "اختيار",
                  is24HrFormat: true,
                  ltrMode: true,

                  minuteInterval: MinuteInterval.FIVE,
                  // Optional onChange to receive value as DateTime
                  onChangeDateTime: (DateTime dateTime) {
                    if (kDebugMode) {
                      print(dateTime);
                    }
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 60.h,
              width: 367.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: klightGreyColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                    child: const FittedBox(
                      child: Icon(
                        Icons.access_time,
                        color: kredColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Center(
                    child: Text(
                      "حدد الوقت",
                      style: GoogleFonts.tajawal(
                        color: kblackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
