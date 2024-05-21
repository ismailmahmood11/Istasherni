import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Landing_Page/Sections/review_section.dart';

import '../../widgets/Footer/footer.dart';
import 'Sections/cases_section.dart';
import 'Sections/hero_section.dart';
import 'Sections/istasherni_intro.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / 30;
    double h2 = screenWidth / 50;
    double p = screenWidth / 90;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / 90;

    return Column(
      children: [
        const Gap(120),
        HeroSection(),
        IstasherniIntro(h1: h1, p: p),
        CasesSection(screenWidth: screenWidth, p: p, h1: h1),
        const Gap(150),
        ReviewSection(screenWidth: screenWidth, p: p, h1: h1),
        const Gap(150),
        Footer(),
      ],
    );
  }
}
