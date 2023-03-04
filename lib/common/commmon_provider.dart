import 'package:flutter/material.dart';

class CommonProviderModel extends ChangeNotifier {
  int sDIndex = 0;
  void changeDestinitionIndex(int index) {
    sDIndex = index;
    notifyListeners();
  }

  int get selectedDetinitionIndex => sDIndex;
}
