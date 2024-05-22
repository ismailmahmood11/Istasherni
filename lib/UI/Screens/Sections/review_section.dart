import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
    required this.screenWidth,
    required this.p,
    required this.h1,
  });

  final double screenWidth;
  final double p;
  final double h1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Testimonials',
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'What our clients\nsay about us',
            style: TextStyle(
              color: textColor,
              fontSize: h1,
              fontFamily: 'Helvetica Neue LT Arabic',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(150),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10000),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      'assets/images/icons/quote.png',
                      width: h1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. Proin ac a cursus praesent. Malesuada risus amet nunc posuere rhoncus accumsan congue id dolor. Convallis maecenas sed in pellentesque. Diam tristique semper mauris dolor amet. Dolor elit nunc et purus quam amet laoreet eu risus.',
                            softWrap: true,
                            style: GoogleFonts.dmSans(
                              color: textColor,
                              fontSize: p,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Johnatan G ',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: p,
                                  fontFamily: 'DM Serif Display',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Gap(20),
                              const Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              const Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              const Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              const Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              const Gap(5),
                              Text(
                                '4/5',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: p - 2,
                                  fontFamily: 'DM Serif Display',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
