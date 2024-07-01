import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';

class ConsultationSteps extends StatelessWidget {
  ConsultationSteps({
    super.key,
    required this.screenWidth,
    required this.h1,
    required this.p,
    required this.title,
    required this.no,
  });

  final double screenWidth;
  final double h1;
  final double p;
  String no;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenWidth / 23,
          height: screenWidth / 23,
          decoration: BoxDecoration(
            color: const Color(0xFF333333),
            borderRadius: BorderRadius.circular(10000),
          ),
          child: Center(
            child: Text(
              no,
              style: GoogleFonts.dmSerifDisplay(
                color: primaryThemeColor,
                fontSize: h1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const Gap(gap),
        Text(
          title,
          style: GoogleFonts.inter(
            color: mainThemeColor,
            fontSize: p,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}
