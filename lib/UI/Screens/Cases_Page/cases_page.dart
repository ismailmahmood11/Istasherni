import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

import '../../const.dart';
import '../Landing_Page/widgets/case_widget.dart';

class CasesPage extends StatelessWidget {
  const CasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      image: 'assets/images/cases_Images/cases1.png',
                      title:
                          'The Case of William Accused Corruption of Money at Gony Bank',
                      subTitle:
                          'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                      onTap: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(70),
                        CaseWidget(
                          image: 'assets/images/cases_Images/cases1.png',
                          title:
                              'The Case of William Accused Corruption of Money at Gony Bank',
                          subTitle:
                              'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CaseWidget(
                      image: 'assets/images/cases_Images/cases1.png',
                      title:
                          'The Case of William Accused Corruption of Money at Gony Bank',
                      subTitle:
                          'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                      onTap: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(70),
                        CaseWidget(
                          image: 'assets/images/cases_Images/cases1.png',
                          title:
                              'The Case of William Accused Corruption of Money at Gony Bank',
                          subTitle:
                              'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(sectionGap + gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth / 3,
                      height: screenHeight / 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/People/marwa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 2.1,
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
                          const Gap(10),
                          Container(
                            color: Colors.grey,
                            width: screenHeight / 1.3,
                            height: 3,
                          ),
                          const Gap(10),
                          Text('Lead cases to success', style: pointStyle),
                          Text('Raised Awareness', style: pointStyle),
                          Text('Lead cases to success', style: pointStyle),
                          Text('Raised Awareness', style: pointStyle)
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
