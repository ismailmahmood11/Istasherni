import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Case_Details/widgets/attorney.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

class CaseDetail extends StatelessWidget {
  const CaseDetail({super.key});

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        height: screenWidth / 3,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Gap(50),
                    SizedBox(
                      width: 573,
                      child: Column(
                        children: [
                          Text(
                            'The Case of William Accused Corruption of Money at Gony Bank',
                            style: GoogleFonts.dmSerifDisplay(
                              color: textColor,
                              fontSize: h1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(gap),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.calendar_month),
                                  Text(
                                    'December,11 2022 - January,8 2023',
                                    style: GoogleFonts.dmSerifDisplay(
                                      color: textColor,
                                      fontSize: p + 3,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(20),
                              Text(
                                'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. Proin ac a cursus praesent. Malesuada risus amet nunc posuere rhoncus accumsan congue id dolor. Convallis maecenas sed in pellentesque. Diam tristique semper mauris dolor amet. Dolor elit nunc et purus quam amet laoreet eu risus.',
                                style: GoogleFonts.dmSans(
                                  color: textColor,
                                  fontSize: p,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(sectionGap),
                Text(
                  'attorney in this case',
                  style: GoogleFonts.dmSerifDisplay(
                    color: textColor,
                    fontSize: h1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AttorneyWidget(
                      title: 'Nada Geomorgant',
                    ),
                    AttorneyWidget(
                      title: 'Lydia Dary',
                    ),
                    AttorneyWidget(
                      title: 'Laitman Harry',
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
