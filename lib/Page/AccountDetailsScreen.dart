import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:phonepe_design/Page/AddNewUpiPage.dart';
import 'package:phonepe_design/Utils/CustomUi.dart';

import '../Utils/Colors.dart';
import '../Utils/Common.dart';

//

class AccountDetailsScreen extends StatefulWidget {
  AccountDetailsScreen({Key? key}) : super(key: key);
  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          backgroundColor: primaryBlueColor,
          elevation: 0.0,
          title: const Text("Account Details"),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white)),
              child: const Icon(
                Icons.question_mark_outlined,
                size: 15,
              ),
            )
          ],
        ),
        body: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(121, 104, 119, 168)),
            padding: EdgeInsets.only(right: 5, left: 5),
            height: height(context),
            width: width(context),
            child: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
              heightBox(7),
              //Bank Details
              Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                  width: 2)),
                          child: Image.asset(
                            "assets/bob.png",
                            height: 25,
                            fit: BoxFit.cover,
                            width: 40,
                          ),
                        ),
                        widthBox(width(context) / 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Dhivam Prajapat",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            heightBox(5),
                            const Text(
                              "BOB Bank - XX65",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    heightBox(5),
                    Divider(
                      color: grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              " Set as primary",
                              style: TextStyle(fontSize: 13, color: black),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: black,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: grey,
                    ),
                    heightBox(5),
                    const Text(
                      "Type        : SAVINGS",
                      style: TextStyle(fontSize: 12, color: grey),
                    ),
                    heightBox(3),
                    const Text(
                      "Branch    : SECTOR 71 , MOHALI",
                      style: TextStyle(fontSize: 12, color: grey),
                    ),
                    heightBox(2),
                    const Text(
                      "IFSC        : BOB0007894",
                      style: TextStyle(fontSize: 12, color: grey),
                    ),
                  ],
                ),
              ),
              heightBox(7),
              //UPI pin
              Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "UPI PIN",
                          style: TextStyle(
                              color: black, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "RESET",
                            style: TextStyle(
                                color: primaryBlueColor, fontSize: 12),
                          ),
                        ),
                        widthBox(10),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "CHANGE",
                            style: TextStyle(
                                color: primaryBlueColor, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    heightBox(5),
                    const Text(
                      "4 digit UPI PIN exits",
                      style: TextStyle(color: grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              heightBox(7),
              //Check Balance
              Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Text(
                      "Balance: ₹----",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "CHECK BALANCE",
                        style: TextStyle(color: primaryBlueColor, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              heightBox(7),
              //Upi Id's
              Container(
                width: width(context),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "UPI IDs",
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                    ),
                    heightBox(5),
                    Text(
                      "Below UPI IDs can only be used with this account",
                      style: TextStyle(color: grey, fontSize: 12),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        padding: EdgeInsets.zero,
                        itemBuilder: (con, i) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => AddNewUpiPage()));
                            },
                            child: Column(
                              children: [
                                UpiId(),
                                Container(
                                  height: 0.5,
                                  color: grey,
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              heightBox(7),
              //add nick name
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 18,
                      ),
                      widthBox(10),
                      Text(
                        "Edit Nickname",
                        style: TextStyle(color: black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              heightBox(7),
              //Unlink bank account
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.delete,
                        size: 18,
                        color: Colors.red,
                      ),
                      widthBox(10),
                      const Text(
                        "Unlink bank account",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              heightBox(20),
            ]))));
  }
}

class UpiId extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            "@ibl",
            style: TextStyle(
              color: grey,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
