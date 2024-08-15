import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../const.dart';
import '../../../../widgets/MobileWidgets/mobile_button.dart';

class MobileHeroSection extends StatelessWidget {
  const MobileHeroSection({
    super.key,
    required this.screenHeight,
    required this.h1,
    required this.p,
  });

  final double screenHeight;
  final double h1;
  final double p;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight,
      child: Stack(
        children: [
          SizedBox(
            height: screenHeight,
            width: double.infinity,
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                'assets/images/hero_image.png',
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Gap(50),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: h1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Istasherni\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: h1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'with Marwa',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: h1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: p,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Office Hours\nMonday - Friday\n(9AM - 6PM)\n\nEastern Standard Time (Florida, United States)',
                  style: GoogleFonts.inter(
                    color: textColor,
                    fontSize: p,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                MobileButton(
                  p: p,
                  title: 'Consult Now',
                  color: mainThemeColor,
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(context, '/mobileConsultation');
                  },
                ),
                const Gap(10),
                const Gap(10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
