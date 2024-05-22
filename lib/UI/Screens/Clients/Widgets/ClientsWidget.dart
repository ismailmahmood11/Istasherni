import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';

class ClientsWidget extends StatelessWidget {
  ClientsWidget({
    super.key,
    required this.screenWidth,
    required this.h1,
    required this.h2,
    required this.p,
    required this.isRight,
  });

  final double screenWidth;
  final double h1;
  final double h2;
  final double p;

  bool isRight = false;
  double dividerHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: isRight
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Governan Pte Ltd',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: textColor,
                          weight: 10,
                        ),
                        Text(
                          '+79 Mechanic Rd.Miami, FL 33125',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: textColor,
                            fontSize: p,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Gap(gap),
                    SizedBox(
                      width: 796,
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. .\n\nCum mattis mollis odio gravida adipiscing. Facilisis scelerisque non lacinia tincidunt faucibus tortor vel. Erat risus etiam quam pretium ornare. Semper orci arcu pulvinar adipiscing pretium. Erat facilisis dis arcu senectus sit mi fermentum eu aliquam. Felis neque posuere pharetra porttitor lacinia proin pretium.',
                        style: GoogleFonts.dmSans(
                          color: textColor,
                          fontSize: p,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 3.5,
                  height: dividerHeight,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth / 10,
                  height: screenWidth / 10,
                  color: mainThemeColor,
                  child: Icon(
                    Icons.local_airport,
                    size: h1,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 10,
                  height: screenWidth / 10,
                  color: mainThemeColor,
                  child: Icon(
                    Icons.local_airport,
                    size: h1,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 3.5,
                  height: dividerHeight,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Governan Pte Ltd',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: textColor,
                          weight: 10,
                        ),
                        Text(
                          '+79 Mechanic Rd.Miami, FL 33125',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: textColor,
                            fontSize: p,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Gap(gap),
                    SizedBox(
                      width: 796,
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. .\n\nCum mattis mollis odio gravida adipiscing. Facilisis scelerisque non lacinia tincidunt faucibus tortor vel. Erat risus etiam quam pretium ornare. Semper orci arcu pulvinar adipiscing pretium. Erat facilisis dis arcu senectus sit mi fermentum eu aliquam. Felis neque posuere pharetra porttitor lacinia proin pretium.',
                        style: GoogleFonts.dmSans(
                          color: textColor,
                          fontSize: p,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
    );
  }
}
