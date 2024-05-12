import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/on_hover.dart';

import 'Widgets/hero_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / 30;
    double p = screenWidth / 90;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / 90;

    return Column(
      children: [
        const Gap(120),
        HeroSection(),
        Container(
          width: double.infinity,
          height: 533,
          decoration: const BoxDecoration(color: secondaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'We Help You With Quality Legal Lawyer',
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: h1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 1062,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: p,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              HoverBuilder(builder: (onHover) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: animationDuration),
                  width: onHover ? 265 : 250,
                  height: onHover ? 53 : 47,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: textColor,
                        fontSize: p,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
        const Gap(300),
      ],
    );
  }
}
