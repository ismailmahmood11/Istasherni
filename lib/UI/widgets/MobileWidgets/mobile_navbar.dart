import 'package:flutter/material.dart';

class MobileNavbarWidgets extends StatelessWidget {
  MobileNavbarWidgets(
      {required this.style,
      required this.title,
      required this.onTap,
      super.key});

  String title;
  Function() onTap;
  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title, style: style),
    );
  }
}
