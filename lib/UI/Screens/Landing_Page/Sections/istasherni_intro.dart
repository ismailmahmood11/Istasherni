import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';
import '../../../widgets/on_hover.dart';

class IstasherniIntro extends StatelessWidget {
  const IstasherniIntro({
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
    );
  }
}
