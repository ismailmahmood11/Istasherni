import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';

class MobileReview extends StatelessWidget {
  const MobileReview({
    super.key,
    required this.h1,
    required this.p,
  });

  final double h1;
  final double p;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(mobileSectionGap),
          Text(
            'Our Happy Client Say About Us',
            style: TextStyle(
              color: textColor,
              fontSize: h1,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(gap),

          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10000),
                ),
                child: Image.asset(
                  'assets/images/People/person1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmed Alshagaa',
                    style: TextStyle(
                      color: textColor,
                      fontSize: p,
                      fontWeight: FontWeight.w900,
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
                    ],
                  )
                ],
              )
            ],
          ),
          const Gap(15),
          SizedBox(
            width: screenWidth - mobilePadding1,
            child: Text(
              'First of all i really recommend Marwa for all cases. She was very professional plus helpful to give me the right direction on my case.\nSecond she gives the top priority to the client and its case by finding the best and right decision. Also her team is always in contact whenever needed.\nThank you for your support.',
              softWrap: true,
              style: TextStyle(
                color: textColor,
                fontSize: p,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Gap(10),
          // MoreButton(
          //   title: 'See More',
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
