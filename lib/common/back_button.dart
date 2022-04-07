import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
    this.iconColor,
    this.backGroundColor,
  }) : super(key: key);
  final Color? iconColor;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pop(context);
      }),
      child: Container(
        height: 27.h,
        width: 27.w,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(3),
          color: backGroundColor ?? Colors.white24,
        ),
        child: Center(
          child: Icon(
            Icons.chevron_left_rounded,
            color: iconColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
