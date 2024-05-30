import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import '../../../widgets/MobileWidgets/mobile_footer.dart';
import 'mobile_istasherni_intro.dart';
import 'mobile_review.dart';

class MobileBottomSection extends StatelessWidget {
  const MobileBottomSection({
    super.key,
    required this.h1,
    required this.p,
  });

  final double h1;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(mobileSectionGap),
        MobileIstasherniIntro(h1: h1, p: p),
        MobileReview(h1: h1, p: p),
        const Gap(mobileSectionGap),
        MobileFooter(socialIconSize: mobileSocialIconSize, p: p),
      ],
    );
  }
}
