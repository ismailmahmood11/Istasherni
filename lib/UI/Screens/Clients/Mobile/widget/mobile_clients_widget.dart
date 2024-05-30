import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../const.dart';

class MobileClientsWidget extends StatelessWidget {
  const MobileClientsWidget({
    super.key,
    required this.h2,
    required this.p,
  });

  final double h2;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              color: mainThemeColor,
              child: const Center(
                  child: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Govern Pte Ltd',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(
                    color: textColor,
                    fontSize: h2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    const Gap(10),
                    SizedBox(
                      width: 180,
                      child: Text(
                        '+79 Mechanic Rd.Miami, FL 33125',
                        style: GoogleFonts.dmSans(
                          color: textColor,
                          fontSize: p,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        const Gap(20),
        Text(
          'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. .',
          style: TextStyle(
            color: textColor,
            fontSize: p,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(mobileSectionGap),
      ],
    );
  }
}
