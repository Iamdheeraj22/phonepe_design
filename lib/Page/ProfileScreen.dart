import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepe_design/Page/AccountDetailsScreen.dart';
import 'package:phonepe_design/Utils/Common.dart';
import 'package:phonepe_design/Utils/CustomUi.dart';

import '../Utils/Colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: primaryBlueColor,
        elevation: 0.0,
        title: const Text("Profile"),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              heightBox(5),
              //Name & number
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/my1.jpg",
                        height: 100,
                        fit: BoxFit.cover,
                        width: 60,
                      )),
                  title: const Text(
                    "Dheeraj Prajapat",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  subtitle: const Text(
                    "1234567890",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              //Payment Instruments
              Container(
                padding: EdgeInsets.only(top: 10),
                width: width(context),
                //  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Payment Instructions",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                      heightBox(15),
                      const Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Bank Accounts",
                          style: TextStyle(
                              color: grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                      heightBox(10),
                      Container(
                        height: height(context) / 5,
                        padding: const EdgeInsets.only(bottom: 10, left: 13),
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            itemBuilder: (itemBuilder, index) {
                              return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                AccountDetailsScreen()));
                                  },
                                  child: UpiCard());
                            }),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13),
                        margin: EdgeInsets.only(right: 10, left: 13),
                        color: Color.fromARGB(255, 209, 209, 209),
                        height: 1.5,
                      ),
                      heightBox(15),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "PhonePe Wallet",
                                  style: TextStyle(
                                      color: grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                                Text(
                                  "\$0",
                                  style: TextStyle(
                                      color: grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: primaryBlueColor),
                              child: const Text(
                                "Top-UP",
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ),
                      heightBox(15),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(121, 174, 184, 219)),
                          width: width(context),
                          child: const Text(
                            "View All Payment Methods  >",
                            style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ),
                      )
                    ]),
              ),
              //Payment Settings
              Container(
                width: width(context),
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Payment Settings",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    heightBox(5),
                    //@
                    PaymentItem(
                      title: "Upi Settings",
                      subTitle: "Set default to send & receive money",
                      imgUrl: "assets/icons/arroba.png",
                    ),
                    PaymentItem(
                      title: "QR codes",
                      subTitle: "View your QR codes",
                      imgUrl: "assets/icons/qr_code.png",
                    ),
                    PaymentItem(
                      title: "Autopay Settings",
                      subTitle: "Manage your Autopay settings",
                      imgUrl: "assets/icons/rotatel.png",
                    ),
                    PaymentItem(
                      title: "Reminders",
                      subTitle: "Never miss another bill payment",
                      imgUrl: "assets/icons/notification_bell.png",
                    ),
                  ],
                ),
              ),

              //Settings & Prefenrences
              Container(
                width: width(context),
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings & Prefenrences",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    heightBox(5),
                    //@choose language
                    PaymentItem(
                      title: "Languages",
                      subTitle: "Chosen Languages: English",
                      imgUrl: "assets/icons/translation.png",
                    ),
                    PaymentItem(
                      title: "Bill Notifications",
                      subTitle: "Receive alerts when bill is generated",
                      imgUrl: "assets/icons/invoice.png",
                    ),
                    PaymentItem(
                      title: "Permissions",
                      subTitle: "Manage data sharing settings",
                      imgUrl: "assets/icons/setting.png",
                    ),
                    PaymentItem(
                      title: "Theme",
                      subTitle: "Choose between light and dark mode",
                      imgUrl: "assets/icons/moon.png",
                    ),
                  ],
                ),
              ),

              //Security
              Container(
                width: width(context),
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings & Prefenrences",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    heightBox(5),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/biometrics.png",
                                height: 25,
                                width: 25,
                              ),
                              widthBox(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Screen Lock",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  heightBox(5),
                                  const Text("Biometric & Screen Lock",
                                      style:
                                          TextStyle(fontSize: 12, color: grey))
                                ],
                              ),
                            ],
                          ),
                          Switch(
                            activeColor: primaryBlueColor,
                            value: true,
                            onChanged: (v) {},
                          )
                        ],
                      ),
                    ),

                    //@Change Password
                    PaymentItem(
                      title: "Change Password",
                      subTitle: "Reset your app password",
                      imgUrl: "assets/icons/key.png",
                    ),

                    //@Permissions
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/block-user.png",
                                height: 25,
                                width: 25,
                              ),
                              widthBox(15),
                              const Text(
                                "Blocked Contacts",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //about
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: width(context),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: PaymentItem(
                  title: "About PhonePe",
                  subTitle: "Privacy policy, Terms & About PhonePe",
                  imgUrl: "assets/icons/information.png",
                ),
              ),

              //Logout
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: width(context),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset("assets/icons/log-out.png",
                      height: 25, width: 25, color: Colors.red),
                  title: const Text(
                    "LOGOUT",
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ),
              ),
              heightBox(10)
            ],
          ),
        ),
      ),
    );
  }
}

class UpiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: width(context) / 1.7,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 151, 151, 151),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 230, 230, 230),
                          width: 2)),
                  child: Image.asset(
                    "assets/bob.png",
                    height: 25,
                    fit: BoxFit.cover,
                    width: 40,
                  ),
                ),
                heightBox(12),
                const Text(
                  "Bank of Ba.. - 1234",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.w600, fontSize: 13),
                ),
                heightBox(5),
                const Text(
                  "XXXX 1234",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: width(context) / 7,
            height: height(context) / 28,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Color.fromARGB(255, 197, 240, 198)),
            child: const Text(
              "Primary",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class PaymentItem extends StatelessWidget {
  String title = "", subTitle = "", imgUrl = "";
  PaymentItem(
      {required this.title, required this.subTitle, required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imgUrl,
                height: 25,
                width: 25,
              ),
              widthBox(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 13),
                  ),
                  heightBox(5),
                  Text(subTitle,
                      style: const TextStyle(fontSize: 12, color: grey))
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
