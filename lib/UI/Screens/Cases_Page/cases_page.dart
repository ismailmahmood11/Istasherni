import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

import '../../const.dart';
import '../Landing_Page/widgets/case_widget.dart';
import '../Landing_Page/widgets/more_button.dart';

class CasesPage extends StatelessWidget {
  const CasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

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
                      title:
                          'The Case of William Accused Corruption of Money at Gony Bank',
                      subTitle:
                          'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                      onTap: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MoreButton(
                          title: 'See More',
                          onTap: () {},
                        ),
                        const Gap(70),
                        CaseWidget(
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
                      title:
                          'The Case of William Accused Corruption of Money at Gony Bank',
                      subTitle:
                          'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                      onTap: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MoreButton(
                          title: 'See More',
                          onTap: () {},
                        ),
                        const Gap(70),
                        CaseWidget(
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
