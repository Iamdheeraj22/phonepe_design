import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Common.dart';

import '../Utils/Colors.dart';

class CheckBalanceScreen extends StatefulWidget {
  @override
  State<CheckBalanceScreen> createState() => _CheckBalanceScreenState();
}

class _CheckBalanceScreenState extends State<CheckBalanceScreen> {
  /// A list of images that are being used in the app.
  final List<String> _imagesList = [
    "assets/ad2.jpg",
    "assets/ad3.png",
    "assets/ad4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: primaryBlueColor,
        elevation: 0.0,
        title: const Text("Check Balance"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: height(context) / 4.5,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _imagesList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: width(context) / 1.05,
                      decoration: const BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _imagesList[index].toString(),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            //bank accounts
            Container(
              width: width(context),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "UPI Bank Account",
                    style: TextStyle(
                        color: black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset(
                        "assets/bob.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    title: Text(
                      "Bank Of Baroda - 1234",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset(
                        "assets/icici.jpg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    title: const Text(
                      "ICICI Bank - 1234",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: Image.asset(
                          "assets/bob.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      title: Text(
                        "Bank Of Baroda - 1234",
                        style: TextStyle(fontSize: 13),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            Container(
              width: width(context),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Wallet",
                    style: TextStyle(
                        color: black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        "assets/phonepe.png",
                        height: 45,
                        width: 50,
                      ),
                      title: const Text(
                        "Phonepe Wallet",
                        style: TextStyle(fontSize: 13),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
