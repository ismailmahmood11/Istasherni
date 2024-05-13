import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Landing_Page/widgets/case_widget.dart';
import 'package:istasherni/UI/Screens/Landing_Page/widgets/more_button.dart';
import 'package:istasherni/UI/const.dart';

import 'Sections/hero_section.dart';
import 'Sections/istasherni_intro.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double h1 = screenWidth / 30;
    double h2 = screenWidth / 50;
    double p = screenWidth / 90;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / 90;

    return Column(
      children: [
        const Gap(120),
        HeroSection(),
        IstasherniIntro(h1: h1, p: p),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(gap),
              Text(
                'Cases',
                style: TextStyle(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(gap),
              Text(
                'Cases we’ve\nhandled in the past',
                style: TextStyle(
                  color: textColor,
                  fontSize: h1,
                  fontFamily: 'Helvetica Neue LT Arabic',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CaseWidget(
                    title:
                        'The Case of William Accused Corruption of Money at Gony Bank',
                    subTitle:
                        'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MoreButton(title: 'See More'),
                      const Gap(70),
                      CaseWidget(
                        title:
                            'The Case of William Accused Corruption of Money at Gony Bank',
                        subTitle:
                            'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(gap),
            ],
          ),
        ),
      ],
    );
  }
}
