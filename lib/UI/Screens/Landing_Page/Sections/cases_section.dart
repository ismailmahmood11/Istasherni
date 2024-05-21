import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import '../widgets/case_widget.dart';
import '../widgets/more_button.dart';

class CasesSection extends StatelessWidget {
  const CasesSection({
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
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(gap),
          Text(
            'Cases',
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(gap),
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MoreButton(title: 'See More'),
                  const Gap(70),
                  CaseWidget(
                    title:
                        'The Case of William Accused Corruption of Money at Gony Bank',
                    subTitle:
                        'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. ',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
