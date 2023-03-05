import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';

import 'package:phonepe_design/Utils/size_config.dart';

class TransferItemWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onPressed;
  const TransferItemWidget(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: primaryBlueColor),
            child: Stack(alignment: Alignment.bottomRight, children: [
              Container(
                height: 20.h,
                width: 20.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(144, 163, 163, 163),
                    borderRadius: BorderRadius.circular(10.h)),
              ),
              Center(
                child: Icon(
                  iconData,
                  color: white,
                  size: 25.h,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              color: black,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
