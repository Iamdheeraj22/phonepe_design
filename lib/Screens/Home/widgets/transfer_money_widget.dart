import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:phonepe_design/Screens/Home/widgets/transfer_item_widget.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/strings.dart';

class TransferMoneyWidget extends StatefulWidget {
  const TransferMoneyWidget({Key? key}) : super(key: key);

  @override
  State<TransferMoneyWidget> createState() => _TransferMoneyWidgetState();
}

class _TransferMoneyWidgetState extends State<TransferMoneyWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(2.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Text(
                Strings.transferMoney,
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 13.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TransferItemWidget(
                      iconData: Icons.person,
                      title: Strings.toSelfaccount,
                      onPressed: () {
                        log(Strings.toNumber);
                      },
                    ),
                    TransferItemWidget(
                      iconData: Icons.home,
                      title: Strings.toBankUPI,
                      onPressed: () {
                        log(Strings.toBankUPI);
                      },
                    ),
                    TransferItemWidget(
                      iconData: Icons.download,
                      title: Strings.toSelfaccount,
                      onPressed: () {
                        log(Strings.toSelfaccount);
                      },
                    ),
                    TransferItemWidget(
                      iconData: Icons.home_work,
                      title: Strings.checkBankBalance,
                      onPressed: () {
                        log(Strings.toSelfaccount);
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(62, 103, 57, 183),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5.r),
                        bottomLeft: Radius.circular(5.r))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
                  child: Row(children: [
                    Text(
                      'MY UPI ID: dhivamprajapat@ybl',
                      style: TextStyle(fontSize: 13.sp),
                    ),
                    const Spacer(),
                    const Icon(Icons.keyboard_arrow_right)
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
