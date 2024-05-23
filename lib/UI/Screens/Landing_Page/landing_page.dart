import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';

import '../../const.dart';
import '../../widgets/Footer/footer.dart';
import '../Sections/istasherni_intro.dart';
import 'Sections/cases_section.dart';
import 'Sections/hero_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    return FadeIn(
      child: Column(
        children: [
          const Gap(120),
          const HeroSection(),
          IstasherniIntro(h1: h1, p: p, backgroundColor: secondaryColor),
          CasesSection(screenWidth: screenWidth, p: p, h1: h1),
          const Gap(150),
          ReviewSection(screenWidth: screenWidth, p: p, h1: h1),
          const Gap(150),
          const Footer(),
        ],
      ),
    );
  }
}
