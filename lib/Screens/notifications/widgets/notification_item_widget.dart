import 'package:flutter/material.dart';

import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';

class NotificationItemWidget extends StatelessWidget {
  final VoidCallback onOptionPressed;
  final IconData iconData;
  final String title;
  final VoidCallback onItemPressed;
  final String subTitle;
  final String time;
  const NotificationItemWidget(
      {Key? key,
      required this.onOptionPressed,
      required this.iconData,
      required this.title,
      required this.subTitle,
      required this.time,
      required this.onItemPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onItemPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    color: primaryBlueColor,
                    borderRadius: BorderRadius.circular(10.h)),
                child: Icon(
                  iconData,
                  color: white,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: onOptionPressed,
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 11.sp, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
