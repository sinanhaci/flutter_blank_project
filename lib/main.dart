import 'package:core_project/core/widgets/colors/colors.dart';
import 'package:core_project/core/widgets/font/font.dart';
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
        home:  Text('',style: Get.theme.textTheme.bodyLarge,),
      );
    });
  }
}


class Themes{
  ThemeData light([Color? targetColor]) {

  return ThemeData.light().copyWith(
    textTheme: TextTheme(
      bodyLarge: TextStyleBase.boldFont10(ProjectColor.colorGrey),
      
    )
  );
}

ThemeData dark([Color? targetColor]) {
  
  return ThemeData.dark().copyWith(
   textTheme: TextTheme(
     headline1: TextStyleBase.boldFont10(ProjectColor.colorGrey)
   )
  );
}

}

