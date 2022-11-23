import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';
import 'package:phonepe_design/Utils/Common.dart';
import 'package:phonepe_design/Utils/CustomUi.dart';

class AddNewUpiPage extends StatefulWidget {
  AddNewUpiPage({Key? key}) : super(key: key);

  @override
  State<AddNewUpiPage> createState() => _AddNewUpiPageState();
}

class _AddNewUpiPageState extends State<AddNewUpiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: black,
              )),
          backgroundColor: white,
          elevation: 0.0,
          title: const Text("Account Details"),
        ),
        body: Container(
            height: height(context),
            width: width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heightBox(10),
                      //Heading
                      const Text(
                        "New  @axl UPI ID",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      heightBox(10),
                      //logo
                      Row(
                        children: [
                          const Text(
                            "Powered by ",
                            style: TextStyle(
                                color: black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          widthBox(3),
                          Image.asset(
                            "assets/axisbank.png",
                            height: 13,
                          )
                        ],
                      ),
                      //Type your Upi id
                      heightBox(25),
                      TextField(
                        style: TextStyle(color: black),
                        decoration: InputDecoration(
                            hintText: "Preferred ID",
                            suffix: Text(
                              "@axl",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                            suffixStyle: TextStyle(color: black),
                            focusColor: primaryBlueColor),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [Text("hii")],
                  ),
                )
              ],
            )));
  }
}
