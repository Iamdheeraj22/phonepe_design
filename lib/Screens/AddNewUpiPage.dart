import 'dart:math';

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
        resizeToAvoidBottomInset: false,
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
                      const TextField(
                        style: TextStyle(color: black),
                        decoration: InputDecoration(
                            hintText: "Preferred ID",
                            suffix: Text(
                              "@axl",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                            suffixStyle: TextStyle(
                              color: black,
                            ),
                            focusColor: primaryBlueColor),
                      )
                    ],
                  ),
                ),
                heightBox(30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Suggested ",
                    style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  height: height(context) / 3,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {},
                          title: Text(
                            "dhivamprajapat${customNuber()}",
                            style: TextStyle(
                                color: black, fontWeight: FontWeight.normal),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: black)),
                          ),
                        );
                      }),
                ),
                const Spacer(),

                //Bottom button & footer header
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "To create UPI ID, we have to send an SMS you mobile to validate and verify your device, standard SMS Changes ma apply.",
                          style: TextStyle(
                              color: grey,
                              fontSize: 9,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: const BoxDecoration(color: grey),
                          alignment: Alignment.center,
                          child: const Text(
                            "CREATE",
                            style: TextStyle(
                                color: white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  int customNuber() {
    Random random = Random();
    int result = random.nextInt(100) + 899;
    return result;
  }
}
