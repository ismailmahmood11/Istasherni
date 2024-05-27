import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../const.dart';
import '../../../../widgets/MobileWidgets/mobile_button.dart';
import '../../../../widgets/MobileWidgets/mobile_cases_widget.dart';

class CaseSection extends StatelessWidget {
  const CaseSection({
    super.key,
    required this.h1,
    required this.screenHeight,
    required this.h2,
    required this.p,
  });

  final double h1;
  final double screenHeight;
  final double h2;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
      child: Column(
        children: [
          const Gap(gap),
          Text(
            'Cases we’ve handled in the past',
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: h1,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(gap),
          MobileCasesWidget(screenHeight: screenHeight, h1: h1, h2: h2, p: p),
          const Gap(gap),
          MobileCasesWidget(screenHeight: screenHeight, h1: h1, h2: h2, p: p),
          const Gap(gap),
          MobileButton(
            p: p,
            title: 'More',
            color: const Color(0xFFD9D9D9),
            textColor: textColor,
          ),
        ],
      ),
    );
  }
}
