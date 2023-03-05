import 'package:flutter/material.dart';
import 'package:phonepe_design/common/strings.dart';

class NotificationModel {
  IconData iconData;
  String title;
  String subTitle;
  String time;
  NotificationModel({
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.time,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
      iconData: Icons.home,
      title: Strings.title,
      subTitle: Strings.subTitle,
      time: '2d'),
  NotificationModel(
      iconData: Icons.home,
      title: Strings.title,
      subTitle: Strings.subTitle,
      time: '2d'),
  NotificationModel(
      iconData: Icons.home,
      title: Strings.title,
      subTitle: Strings.subTitle,
      time: '2d'),
  NotificationModel(
      iconData: Icons.home,
      title: Strings.title,
      subTitle: Strings.subTitle,
      time: '2d')
];
