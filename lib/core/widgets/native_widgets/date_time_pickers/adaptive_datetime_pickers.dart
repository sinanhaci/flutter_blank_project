import 'dart:io';
import 'cupertino_datetime_pickers/cupertino_datetime_pickers.dart';
import 'material_datetime_pickers/material_datetime_pickers.dart';

class AdaptiveDateTimePickers {
  final MaterialDateTimePickers _androidDateTimePickers =
      MaterialDateTimePickers();
  final CupertinoDateTimePickers _iosDateTimePickers = CupertinoDateTimePickers();

  Future<DateTime> adaptiveTimePicker() {
    return Platform.isAndroid
        ? _androidDateTimePickers.materialTimePicker()
        : _iosDateTimePickers.cupertinoTimePicker();
  }

  Future<DateTime> adaptiveDatePicker() {
    return Platform.isAndroid
        ? _androidDateTimePickers.materialDatePicker()
        : _iosDateTimePickers.cupertinoDatePicker();
  }

  Future<DateTime> adaptiveDateTimePicker() {
    return Platform.isAndroid
        ? _androidDateTimePickers.materialDateTimePicker()
        : _iosDateTimePickers.cupertinoDateTimePicker();
  }

  
}
