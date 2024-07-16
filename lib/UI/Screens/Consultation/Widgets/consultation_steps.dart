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
    required this.color,
    required this.noColor,
    this.mobile = false,
  });

  final double screenWidth;
  final double h1;
  final double p;
  String no;
  String title;
  Color color;
  Color noColor;
  bool mobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: mobile ? 60 : screenWidth / 23,
          height: mobile ? 60 : screenWidth / 23,
          decoration: BoxDecoration(
            color: const Color(0xFF333333),
            borderRadius: BorderRadius.circular(10000),
          ),
          child: Center(
            child: Text(
              no,
              style: GoogleFonts.dmSerifDisplay(
                color: noColor,
                fontSize: h1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const Gap(gap),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            color: color,
            fontSize: p,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}
