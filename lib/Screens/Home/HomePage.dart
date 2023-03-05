import 'package:flutter/material.dart';
import 'package:phonepe_design/Screens/Home/model/bottom_model.dart';
import 'package:phonepe_design/Screens/Home/widgets/navigation_destinition_item.dart';
import 'package:phonepe_design/Screens/Home/widgets/update_app_widget.dart';
import 'package:phonepe_design/Screens/ProfileScreen.dart';

import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';
import 'package:phonepe_design/common/commmon_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CommonProviderModel providerModel;
  @override
  Widget build(BuildContext context) {
    providerModel = Provider.of<CommonProviderModel>(context, listen: true);
    return Consumer(builder: (_, v, c) {
      return Scaffold(
          appBar: AppBar(
            leading: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15.w),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()));
                },
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
          body: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    UpdateWidget()
                  ],
                ),
              )),
          bottomNavigationBar: NavigationBar(
              backgroundColor: white,
              elevation: 1.0,
              height: 60.h,
              selectedIndex: providerModel.selectedDetinitionIndex,
              onDestinationSelected: (v) {
                providerModel.changeDestinitionIndex(v);
              },
              destinations: bottomDestinationList
                  .map((e) => DestinitionItem(
                        title: e.title,
                        data: e.iconData,
                      ))
                  .toList()));
    });
  }
}
