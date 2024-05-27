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
                    para:
                        'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                  ),
                  const Gap(gap),
                  ServicesWidget(
                    h1: h1,
                    p: p,
                    title: 'Immigration Services',
                    para:
                        'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
                  ),
                  const Gap(gap),
                  ServicesWidget(
                    h1: h1,
                    p: p,
                    title: 'Business Services',
                    para:
                        'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.\n\nLorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. ',
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
