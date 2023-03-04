import 'package:flutter/material.dart';

class DestinitionItem extends StatelessWidget {
  final IconData data;
  final String title;
  const DestinitionItem({
    Key? key,
    required this.data,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(icon: Icon(data), label: title);
  }
}
