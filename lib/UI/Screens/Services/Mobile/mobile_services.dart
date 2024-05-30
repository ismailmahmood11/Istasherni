import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Services/Mobile/Widgets/mobile_services_widget.dart';
import 'package:istasherni/UI/const.dart';

import '../../Sections/Mobile Sections/mobile_bottom_section.dart';

class MobileServices extends StatelessWidget {
  const MobileServices({super.key});

  final double h1 = 36;
  final double h2 = 20;
  final double p = 17;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Column(
        children: [
          const Gap(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: 'General Legal Services',
                  para:
                      'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: 'Immigration Services',
                  para:
                      'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: 'Business Services',
                  para:
                      'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                ),
              ],
            ),
          ),
          MobileBottomSection(h1: h1, p: p)
        ],
      ),
    );
  }
}
