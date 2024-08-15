import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Landing_Page/widgets/main_button.dart';

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
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 155,
                height: 155,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10000),
                ),
                child: Image.asset(
                  'assets/images/People/person1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(70),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmed Alshagaa',
                            style: TextStyle(
                              color: textColor,
                              fontSize: p,
                              fontFamily: 'DM Serif Display',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: mainThemeColor,
                              ),
                              Gap(5),
                              // Text(
                              //   '5 5',
                              //   style: TextStyle(
                              //     color: textColor,
                              //     fontSize: p - 2,
                              //     fontFamily: 'DM Serif Display',
                              //     fontWeight: FontWeight.w700,
                              //   ),
                              // ),
                            ],
                          ),
                          const Gap(20),
                          Text(
                            'First of all i really recommend Marwa for all cases. She was very professional plus helpful to give me the right direction on my case.\nSecond she gives the top priority to the client and its case by finding the best and right decision. Also her team is always in contact whenever needed.\nThank you for your support.',
                            softWrap: true,
                            style: GoogleFonts.dmSans(
                              color: textColor,
                              fontSize: p,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(20),
                          MainButton(
                              title: 'See More >',
                              onTap: () {
                                Navigator.pushNamed(context, '/reviews');
                              })
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
