import '/core/constants/base_item_colors.dart';
import '/main.dart';
import 'package:flutter/cupertino.dart';

class CupertinoDateTimePickers extends BaseItemColors{
  Future<DateTime> cupertinoTimePicker() async {
    DateTime time = DateTime.now();
    await showCupertinoModalPopup<void>(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return Container(
          color: baseWhiteColor,
          height: 250,
          child: CupertinoDatePicker(
            backgroundColor: baseWhiteColor,
            initialDateTime: time,
            mode: CupertinoDatePickerMode.time,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newDate) {
              time = newDate;
            },
          ),
        );
      },
    );
    return time;
  }

  Future<DateTime> cupertinoDatePicker() async {
    DateTime time = DateTime.now();
    await showCupertinoModalPopup<void>(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return Container(
          color: baseWhiteColor,
          height: 250,
          child: CupertinoDatePicker(
            backgroundColor: baseWhiteColor,
            initialDateTime: time,
            mode: CupertinoDatePickerMode.date,
            dateOrder: DatePickerDateOrder.dmy,
            onDateTimeChanged: (DateTime newDate) {
              time = newDate;
            },
          ),
        );
      },
    );
    return time;
  }

  Future<DateTime> cupertinoDateTimePicker() async {
    DateTime time = DateTime.now();
    await showCupertinoModalPopup<void>(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return Container(
          color: baseWhiteColor,
          height: 250,
          child: CupertinoDatePicker(
            backgroundColor: baseWhiteColor,
            initialDateTime: time,
            mode: CupertinoDatePickerMode.dateAndTime,
            dateOrder: DatePickerDateOrder.dmy,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newDate) {
              time = newDate;
            },
          ),
        );
      },
    );
    return time;
  }
}

