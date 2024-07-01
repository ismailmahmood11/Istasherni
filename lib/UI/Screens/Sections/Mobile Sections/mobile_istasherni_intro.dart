import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';

class MobileIstasherniIntro extends StatelessWidget {
  MobileIstasherniIntro({
    super.key,
    required this.h1,
    required this.h2,
    required this.p,
    this.color = primaryThemeColor,
  });

  final double h1;
  final double h2;
  final double p;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: mobilePadding1, vertical: 40),
        child: Column(
          children: [
            Text(
              'We Help You With Quality Legal Lawyer',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: h1,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(gap),
            SizedBox(
              width: 1062,
              child: Text(
                'a certified website that provides legal services for a nominal fee, serving international male and female students abroad, with scholarships, of all age groups and their families',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: p,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Gap(60),
            SizedBox(
              width: 1062,
              child: Text(
                'Our Mission',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: h2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Gap(10),
            SizedBox(
              width: 1062,
              child: Text(
                'To provide legal  services for various legal matters at a nominal cost, in accordance with the standards of living for international students in the United States of America',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: p,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Gap(gap),
            SizedBox(
              width: 1062,
              child: Text(
                'Our Vision',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: h2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Gap(10),
            SizedBox(
              width: 1062,
              child: Text(
                'To offer legal services in the Arabic language, being based on awareness and legal education\nTo defend the rights of international male students and female students in the United States of America, which are legally established therein',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: p,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
