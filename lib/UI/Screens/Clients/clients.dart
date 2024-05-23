import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/const.dart';

import '../../widgets/Footer/footer.dart';
import '../Sections/review_section.dart';
import 'Widgets/clients_widget.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double h1 = screenWidth / h1Size;
    double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    TextStyle pointStyle = GoogleFonts.dmSerifDisplay(
      color: textColor,
      fontSize: p + 5,
      fontWeight: FontWeight.w400,
    );

    return FadeIn(
      child: Column(
        children: [
          const Gap(120),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
            child: Column(
              children: [
                Text(
                  'Our Clients come from everywhere',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(
                    color: textColor,
                    fontSize: h1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(sectionGap - 100),
                ClientsWidget(
                  screenWidth: screenWidth,
                  h1: h1,
                  h2: h2,
                  p: p,
                  isRight: false,
                ),
                ClientsWidget(
                  screenWidth: screenWidth,
                  h1: h1,
                  h2: h2,
                  p: p,
                  isRight: true,
                ),
                ClientsWidget(
                  screenWidth: screenWidth,
                  h1: h1,
                  h2: h2,
                  p: p,
                  isRight: false,
                ),
                const Gap(sectionGap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth / 3,
                      height: screenHeight / 1.5,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 1.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '28 years being\nan attorney',
                            style: GoogleFonts.dmSerifDisplay(
                              color: textColor,
                              fontSize: h1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: screenHeight / 1.3,
                            height: 3,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lead cases to success', style: pointStyle),
                              const Gap(gap),
                              Text('Raised Awareness', style: pointStyle),
                              const Gap(gap),
                              Text('Lead cases to success', style: pointStyle),
                              const Gap(gap),
                              Text('Raised Awareness', style: pointStyle),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Gap(sectionGap),
          IstasherniIntro(h1: h1, p: p),
          const Gap(sectionGap),
          ReviewSection(screenWidth: screenWidth, p: p, h1: h1),
          const Gap(sectionGap),
          const Footer(),
        ],
      ),
    );
  }
}
