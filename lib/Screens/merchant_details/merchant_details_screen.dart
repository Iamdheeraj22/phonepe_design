import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';

class MerchantDetailsScreen extends StatefulWidget {
  const MerchantDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MerchantDetailsScreen> createState() => _MerchantDetailsScreenState();
}

class _MerchantDetailsScreenState extends State<MerchantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: primaryBlueColor,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            InkWell(
              borderRadius: BorderRadius.circular(100.h),
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 15.w),
                child: Icon(
                  Icons.favorite_border,
                  size: 25.h,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100.h),
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: 15.w),
                child: Icon(
                  Icons.share,
                  size: 25.h,
                ),
              ),
            )
          ]),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 10.h,
            ),
            //Title bar
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Merchant name
                          Text(
                            'Ram Shyam Naan Chhole',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Others',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.sp,
                            ),
                          ),
                          //address
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: primaryBlueColor),
                                      children: const [
                                    TextSpan(text: 'Sector 30(Chandigarh) S.o'),
                                    TextSpan(text: ', Chandigarh'),
                                    TextSpan(text: '   *   ')
                                  ])),
                              Icon(
                                Icons.car_crash,
                                size: 15.h,
                                color: primaryBlueColor,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '100 km',
                                style: TextStyle(
                                    fontSize: 10.sp, color: primaryBlueColor),
                              ),
                            ],
                          ),
                          //Rating bar
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: 13.h,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 10.h,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '3.0',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '27  ratings',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100.h),
                            ),
                            padding: EdgeInsets.all(15.h),
                            child: const Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(100.h),
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100.h),
                            ),
                            padding: EdgeInsets.all(15.h),
                            child: const Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
