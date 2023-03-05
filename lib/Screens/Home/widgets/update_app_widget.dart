import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/strings.dart';

class UpdateWidget extends StatelessWidget {
  const UpdateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(15.r),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/phonepe.png",
                  height: 40.h,
                  width: 40.h,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.updateTitle,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Strings.updateSubTitle,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(5.r),
                        child: Text(
                          Strings.later,
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: primaryBlueColor,
                              fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50.r),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: primaryBlueColor,
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Text(
                      Strings.download,
                      style: TextStyle(
                        color: white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
