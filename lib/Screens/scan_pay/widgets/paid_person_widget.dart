import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:vibration/vibration.dart';

class PaidPersonWidget extends StatelessWidget {
  final String fullName;
  final VoidCallback onTap;
  const PaidPersonWidget({super.key, required this.fullName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: SizedBox(
        height: 80.h,
        width: 60.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60.h,
              width: 60.h,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(100.h)),
              child: Center(
                  child: Text(
                fullName.substring(0, 2).toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              )),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              fullName,
              style: TextStyle(fontSize: 15.sp, color: Colors.white),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

List<String> tempNames = [
  'Dheeraj Prajapat',
  'Yogesh',
  'Sitaram',
  'Mukesh',
  'Pradeep',
  'Rakesh',
  'Ronak'
];
