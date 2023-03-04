import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/navigator_service.dart';
import 'package:phonepe_design/Utils/size_config.dart';

showSnackBar(String data, {BuildContext? context, Duration? duration}) {
  ScaffoldMessenger.of(
          context ?? NavigationService.navigatorKey.currentContext!)
      .hideCurrentSnackBar();
  ScaffoldMessenger.of(
          context ?? NavigationService.navigatorKey.currentContext!)
      .showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
      elevation: 5,
      content: Text(
        data,
        style: TextStyle(
            color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.bold),
      ),
      duration: duration ?? const Duration(seconds: 2),
    ),
  );
}

showSuccessSnackBar(String data, {BuildContext? context, Duration? duration}) {}
