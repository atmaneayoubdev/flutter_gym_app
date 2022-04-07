import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'week_day_widget.dart';

class WeekCalandarWidget extends StatelessWidget {
  const WeekCalandarWidget({
    Key? key,
    required String currentDay,
    required String currentDayNumbr,
  })  : _currentDay = currentDay,
        _currentDayNumbr = currentDayNumbr,
        super(key: key);

  final String _currentDay;
  final String _currentDayNumbr;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeekDayWidget(
            isSelected: _currentDay == "Sat" ? true : false,
            name: "السبت",
            number: _currentDay == "Sat"
                ? _currentDayNumbr
                : _currentDay == "Sun"
                    ? DateFormat('d').format(
                        DateTime.now().subtract(const Duration(days: 1)))
                    : _currentDay == "Mon"
                        ? DateFormat('d').format(
                            DateTime.now().subtract(const Duration(days: 2)))
                        : _currentDay == "Tue"
                            ? DateFormat('d').format(DateTime.now()
                                .subtract(const Duration(days: 3)))
                            : _currentDay == "Wed"
                                ? DateFormat('d').format(DateTime.now()
                                    .subtract(const Duration(days: 4)))
                                : _currentDay == "Thu"
                                    ? DateFormat('d').format(DateTime.now()
                                        .subtract(const Duration(days: 5)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 6)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Sun" ? true : false,
            name: "الاحد",
            number: _currentDay == "Sun"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 1)))
                    : _currentDay == "Mon"
                        ? DateFormat('d').format(
                            DateTime.now().subtract(const Duration(days: 1)))
                        : _currentDay == "Tue"
                            ? DateFormat('d').format(DateTime.now()
                                .subtract(const Duration(days: 2)))
                            : _currentDay == "Wed"
                                ? DateFormat('d').format(DateTime.now()
                                    .subtract(const Duration(days: 3)))
                                : _currentDay == "Thu"
                                    ? DateFormat('d').format(DateTime.now()
                                        .subtract(const Duration(days: 4)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 5)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Mon" ? true : false,
            name: "الاثنين ",
            number: _currentDay == "Mon"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 2)))
                    : _currentDay == "Sun"
                        ? DateFormat('d')
                            .format(DateTime.now().add(const Duration(days: 1)))
                        : _currentDay == "Tue"
                            ? DateFormat('d').format(DateTime.now()
                                .subtract(const Duration(days: 1)))
                            : _currentDay == "Wed"
                                ? DateFormat('d').format(DateTime.now()
                                    .subtract(const Duration(days: 2)))
                                : _currentDay == "Thu"
                                    ? DateFormat('d').format(DateTime.now()
                                        .subtract(const Duration(days: 3)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 4)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Tue" ? true : false,
            name: "الثلاثاء",
            number: _currentDay == "Tue"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 3)))
                    : _currentDay == "Sun"
                        ? DateFormat('d')
                            .format(DateTime.now().add(const Duration(days: 2)))
                        : _currentDay == "Mon"
                            ? DateFormat('d').format(
                                DateTime.now().add(const Duration(days: 1)))
                            : _currentDay == "Wed"
                                ? DateFormat('d').format(DateTime.now()
                                    .subtract(const Duration(days: 1)))
                                : _currentDay == "Thu"
                                    ? DateFormat('d').format(DateTime.now()
                                        .subtract(const Duration(days: 2)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 3)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Wed" ? true : false,
            name: "الاربعاء ",
            number: _currentDay == "Wed"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 4)))
                    : _currentDay == "Sun"
                        ? DateFormat('d')
                            .format(DateTime.now().add(const Duration(days: 3)))
                        : _currentDay == "Mon"
                            ? DateFormat('d').format(
                                DateTime.now().add(const Duration(days: 2)))
                            : _currentDay == "Tue"
                                ? DateFormat('d').format(
                                    DateTime.now().add(const Duration(days: 1)))
                                : _currentDay == "Thu"
                                    ? DateFormat('d').format(DateTime.now()
                                        .subtract(const Duration(days: 1)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 2)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Thu" ? true : false,
            name: "الخميس ",
            number: _currentDay == "Thu"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 5)))
                    : _currentDay == "Sun"
                        ? DateFormat('d')
                            .format(DateTime.now().add(const Duration(days: 4)))
                        : _currentDay == "Mon"
                            ? DateFormat('d').format(
                                DateTime.now().add(const Duration(days: 3)))
                            : _currentDay == "Tue"
                                ? DateFormat('d').format(
                                    DateTime.now().add(const Duration(days: 2)))
                                : _currentDay == "Wed"
                                    ? DateFormat('d').format(DateTime.now()
                                        .add(const Duration(days: 1)))
                                    : _currentDay == "Fri"
                                        ? DateFormat('d').format(DateTime.now()
                                            .subtract(const Duration(days: 1)))
                                        : "",
          ),
          WeekDayWidget(
            isSelected: _currentDay == "Fri" ? true : false,
            name: "الجمعه",
            number: _currentDay == "Fri"
                ? _currentDayNumbr
                : _currentDay == "Sat"
                    ? DateFormat('d')
                        .format(DateTime.now().add(const Duration(days: 6)))
                    : _currentDay == "Sun"
                        ? DateFormat('d')
                            .format(DateTime.now().add(const Duration(days: 5)))
                        : _currentDay == "Mon"
                            ? DateFormat('d').format(
                                DateTime.now().add(const Duration(days: 4)))
                            : _currentDay == "Tue"
                                ? DateFormat('d').format(
                                    DateTime.now().add(const Duration(days: 3)))
                                : _currentDay == "Wed"
                                    ? DateFormat('d').format(DateTime.now()
                                        .add(const Duration(days: 2)))
                                    : _currentDay == "Thu"
                                        ? DateFormat('d').format(DateTime.now()
                                            .add(const Duration(days: 1)))
                                        : "",
          ),
        ],
      ),
    );
  }
}
