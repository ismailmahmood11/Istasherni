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
                  para: 'Services Offered:\n\n'
                      'Notary Public Services: Available both in-person and online.\n'
                      'Certified Translation Services: Specializing in Arabic, English, and Spanish.\n'
                      'Legal Representation: Providing assistance as your trusted legal representative.\n'
                      'Power of Attorney: Facilitating the drafting and execution of power of attorney documents.',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: 'Immigration Services',
                  para: 'Immigration Document Preparation\n\n'
                      'Adjustment of Status\n\n'
                      'Citizenship',
                ),
                const Gap(gap),
                MobileServicesWidget(
                  h1: h1,
                  p: p,
                  title: 'Business Services',
                  para: 'Business Structure and Registration:\n\n'
                      'Choosing the right legal structure for an online business.\n'
                      'Assistance with business registration and compliance.\n\n'
                      'Terms of Service and Privacy Policies:\n\n'
                      'Drafting and reviewing terms of service and privacy policies.\n'
                      'Contract Drafting and Review',
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
