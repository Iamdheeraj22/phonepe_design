import 'package:flutter/material.dart';
import 'package:phonepe_design/Screens/notifications/model/notification_model.dart';
import 'package:phonepe_design/Screens/notifications/widgets/notification_item_widget.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';

class NotificationsScreen extends StatefulWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryBlueColor,
        leading: BackButton(
          onPressed: () {},
        ),
        title: Text('Notifications'),
        actions: [
          Container(
            height: 30.h,
            width: 30.h,
            margin: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.h),
                border: Border.all(color: white)),
            child: InkWell(
              borderRadius: BorderRadius.circular(50.h),
              onTap: () {},
              child: Icon(
                Icons.question_mark,
                size: 15.h,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5.h),
          physics: const BouncingScrollPhysics(),
          itemCount: notificationList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return NotificationItemWidget(
              onOptionPressed: () {},
              onItemPressed: () {},
              iconData: notificationList[index].iconData,
              title: notificationList[index].title,
              subTitle: notificationList[index].subTitle,
              time: notificationList[index].time,
            );
          }),
    );
  }
}
