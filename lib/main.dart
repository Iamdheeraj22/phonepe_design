import 'package:flutter/material.dart';

import 'Page/CheckBalanceScreen.dart';
import 'Page/ProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 0, 26, 112)),
      home: ProfileScreen(),
    );
  }
}
