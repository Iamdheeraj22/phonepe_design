import 'package:flutter/material.dart';
import 'package:phonepe_design/Utils/Colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 15),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/my1.jpg",
                    height: 35,
                    fit: BoxFit.cover,
                    width: 35,
                  )),
              Container(
                height: 13,
                width: 13,
                padding: EdgeInsets.all(0.3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/flg.png",
                    height: 10,
                    fit: BoxFit.cover,
                    width: 10,
                  ),
                ),
              )
            ],
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
                  style: TextStyle(color: white, fontSize: 15),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 15,
                )
              ],
            ),
            Text(
              "Sujangarh",
              style: TextStyle(color: grey, fontSize: 12),
            ),
          ],
        ),
        actions: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Image.asset(
                "assets/icons/qr_code.png",
                color: white,
                height: 20,
                width: 20,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.notifications,
                size: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white)),
            child: const Icon(
              Icons.question_mark_outlined,
              size: 10,
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
