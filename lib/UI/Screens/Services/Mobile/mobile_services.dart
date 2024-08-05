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
                  title: '-General Legal Services',
                  para: 'Services Offered:\n\n'
                      '1. Notary Public Services: Available both in-person and online.\n\n'
                      '2. Certified Translation Services: Specializing in Arabic, English, and Spanish.\n\n'
                      '3. Legal Representation: Providing assistance as your trusted legal representative.\n\n'
                      '4. Power of Attorney: Facilitating the drafting and execution of power of attorney documents.',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: '-Immigration Services',
                  para: '1. Immigration Document Preparation\n\n'
                      '2. Adjustment of Status\n\n'
                      '3. Citizenship',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: '-Business Services',
                  para: '1. Business Structure and Registration:\n\n'
                      '2. Choosing the right legal structure for an online business.\n\n'
                      '3. Assistance with business registration and compliance.\n\n'
                      '4. Terms of Service and Privacy Policies:\n\n'
                      '5. Drafting and reviewing terms of service and privacy policies.\n\n'
                      '6. Contract Drafting and Review',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: '-Immigrant visa',
                  para: '1. Family-Based Immigrant Visas\n\n'
                      '2. Employment-Based Immigrant Visas\n\n'
                      '3. Diversity Visa (DV) Program\n\n',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: '-Non immigrant visa',
                  para: '1. Business and Tourism\n\n'
                      '2. Work Visas\n\n'
                      '3. Student and Exchange Visitor Visas\n\n',
                ),
              ],
            ),
          ),
          MobileBottomSection(
            h1: h1,
            p: p,
            h2: h2,
          )
        ],
      ),
    );
  }
}
