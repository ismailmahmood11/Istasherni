import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const.dart';

class MobileIstasherniIntro extends StatelessWidget {
  const MobileIstasherniIntro({
    super.key,
    required this.h1,
    required this.p,
  });

  final double h1;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(mobilePadding1),
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
            Text(
              'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: p,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
