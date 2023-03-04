import 'package:flutter/material.dart';

import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 15.w),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/my1.jpg",
                    height: 35.h,
                    fit: BoxFit.cover,
                    width: 35.h,
                  )),
              Container(
                height: 13.h,
                width: 13.h,
                padding: EdgeInsets.all(0.3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    "assets/flg.png",
                    height: 10.h,
                    fit: BoxFit.cover,
                    width: 10.h,
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: primaryBlueColor,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Add Address",
                  style: TextStyle(color: white, fontSize: 15.sp),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 15.h,
                )
              ],
            ),
            Text(
              "Sujangarh",
              style: TextStyle(color: grey, fontSize: 12.sp),
            ),
          ],
        ),
        actions: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 15.w),
              child: Image.asset(
                "assets/icons/qr_code.png",
                color: white,
                height: 20.h,
                width: 20.h,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 5.w),
              child: Icon(
                Icons.notifications,
                size: 25.h,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(color: Colors.white)),
            child: Icon(
              Icons.question_mark_outlined,
              size: 10.h,
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
