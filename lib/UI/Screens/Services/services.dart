import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/Screens/Services/widgets/services_widget.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

class Services extends StatelessWidget {
  const Services({super.key});

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
          const Gap(200),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ServicesWidget(
                    h1: h1,
                    p: p,
                    title: 'General Legal Services',
                    para: 'Services Offered:\n\n'
                        'Notary Public Services: Available both in-person and online.\n'
                        'Certified Translation Services: Specializing in Arabic, English, and Spanish.\n'
                        'Legal Representation: Providing assistance as your trusted legal representative.\n'
                        'Power of Attorney: Facilitating the drafting and execution of power of attorney documents.',
                  ),

                  // ServicesWidget(
                  //   h1: h1,
                  //   p: p,
                  //   title: 'General Legal Services',
                  //   para: 'Public Notary Services (In-Person & Online)\n\n'
                  //       'Certified Translation Services:\n\n'
                  //       '- Arabic\n'
                  //       '- English\n'
                  //       '- Spanish\n\n'
                  //       'Legal Representation:\n\n'
                  //       '- Power of Attorney',
                  // ),
                  const Gap(gap),
                  ServicesWidget(
                    h1: h1,
                    p: p,
                    title: 'Immigration Services',
                    para: 'Immigration Document Preparation\n\n'
                        'Adjustment of Status\n\n'
                        'Citizenship',
                  ),
                  const Gap(gap),
                  ServicesWidget(
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
