import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const.dart';

class MobileCasesWidget extends StatelessWidget {
  MobileCasesWidget({
    super.key,
    required this.screenHeight,
    required this.h1,
    required this.h2,
    required this.p,
    required this.onTap,
    required this.title,
    this.img = 'assets/images/cases_Images/cases1.png',
  });

  final double screenHeight;
  final double h1;
  final double h2;
  final double p;
  String title;
  String img;

  // String img;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 15,
                offset: Offset(0, 4),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(mobilePadding1),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 327,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      )),
                ),
                const Gap(20),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontSize: h2,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
