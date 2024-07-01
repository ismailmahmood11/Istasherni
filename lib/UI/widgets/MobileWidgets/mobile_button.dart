import 'package:flutter/material.dart';

class MobileButton extends StatelessWidget {
  MobileButton({
    super.key,
    required this.p,
    required this.title,
    required this.color,
    required this.textColor,
    required this.onTap,
  });

  final double p;
  String title;
  Color color;
  Color textColor;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
