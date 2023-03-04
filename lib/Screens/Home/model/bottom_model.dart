import 'package:flutter/material.dart';

class BottomModel {
  final String title;

  /// A variable that is used to store the icon data.
  final IconData iconData;
  BottomModel({
    required this.title,
    required this.iconData,
  });
}

List<BottomModel> bottomDestinationList = [
  BottomModel(title: 'Home', iconData: Icons.home),
  BottomModel(title: 'Stores', iconData: Icons.shopping_bag),
  BottomModel(title: 'Insurance', iconData: Icons.home),
  BottomModel(title: 'Wealth', iconData: Icons.money),
  BottomModel(title: 'History', iconData: Icons.history)
];
