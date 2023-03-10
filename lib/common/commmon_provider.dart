import 'dart:core';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CommonProviderModel extends ChangeNotifier {
  int sDIndex = 0;
  List<CameraDescription> cList = [];
  void changeDestinitionIndex(int index) {
    sDIndex = index;
    notifyListeners();
  }

  int get selectedDetinitionIndex => sDIndex;
  Future<void> cameraDescription() async {
    cList = await availableCameras();
    notifyListeners();
  }
}
