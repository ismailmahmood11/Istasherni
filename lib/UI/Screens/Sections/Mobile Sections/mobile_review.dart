import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import '../../Landing_Page/widgets/more_button.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
      child: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Johnatan G -',
                style: TextStyle(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w900,
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
          ),
          const Gap(gap - 15),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Dui ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Dui',
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(10),
          MoreButton(
            title: 'See More',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
