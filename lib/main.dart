import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const BlankProject());
}

class BlankProject extends StatelessWidget {
  const BlankProject({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        navigatorKey: navigatorKey,
        title: 'Blank Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Center(),
      );
    });
  }
}

