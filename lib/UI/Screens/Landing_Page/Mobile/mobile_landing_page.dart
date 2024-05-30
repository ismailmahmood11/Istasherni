import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import '../../../widgets/MobileWidgets/mobile_footer.dart';
import '../../Sections/Mobile Sections/mobile_istasherni_intro.dart';
import '../../Sections/Mobile Sections/mobile_review.dart';
import 'Sections/mobile_cases_section.dart';
import 'Sections/mobile_hero_section.dart';

class MobileLandingPage extends StatelessWidget {
  const MobileLandingPage({super.key});

  final double h1 = 36;
  final double h2 = 20;
  final double p = 17;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return FadeIn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MobileHeroSection(screenHeight: screenHeight, h1: h1, p: p),
          MobileIstasherniIntro(h1: h1, p: p, color: secondaryColor),
          CaseSection(h1: h1, screenHeight: screenHeight, h2: h2, p: p),
          MobileReview(h1: h1, p: p),
          const Gap(mobileSectionGap),
          MobileFooter(socialIconSize: mobileSocialIconSize, p: p),
        ],
      ),
    );
  }
}
