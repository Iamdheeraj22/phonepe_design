import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/size_config.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  TextEditingController _amountController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
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
          title: const Text('Pay'),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: Colors.white)),
              child: InkWell(
                borderRadius: BorderRadius.circular(100.h),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Icon(
                    Icons.question_mark_outlined,
                    size: 10.h,
                  ),
                ),
              ),
            )
          ]),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  //Payee details
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.h),
                            color: Colors.purple),
                        child: Center(
                            child: Text(
                          '₹',
                          style:
                              TextStyle(color: Colors.white, fontSize: 24.sp),
                        )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ram Shyam Naan Chhole',
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Banking Name: ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10.sp)),
                            TextSpan(
                                text: 'Ram Shyam S/O Hari'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.sp))
                          ]))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //amount controller
                  /// A text field that is used to take input from the user.
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    controller: _amountController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF2F2F2),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.h),
                          borderSide:
                              BorderSide(width: 2.w, color: primaryBlueColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.h),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.black),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.w),
                        hintText: 'Enter amount',
                        hintStyle: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    controller: _amountController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF2F2F2),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.h),
                          borderSide:
                              BorderSide(width: 2.w, color: primaryBlueColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.h),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.black),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.w),
                        hintText: 'Add a message (Optional)',
                        hintStyle: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey,
                        )),
                  )
                ]),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                    color: (_amountController.text.isEmpty ||
                            _amountController.text == '0')
                        ? Color.fromARGB(137, 68, 68, 68)
                        : primaryBlueColor),
                child: Center(
                  child: Text(
                    'PROCEED TO PAY',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: (_amountController.text.isEmpty ||
                                _amountController.text == '0')
                            ? Colors.black
                            : Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
