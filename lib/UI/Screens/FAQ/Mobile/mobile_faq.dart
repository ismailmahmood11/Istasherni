import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/widgets/MobileWidgets/mobile_footer.dart';

import '../../../const.dart';

class MobileFaq extends StatelessWidget {
  const MobileFaq({super.key});

  @override
  Widget build(BuildContext context) {
    double h1 = mh1;
    double p = mp;
    double h2 = mh2;

    TextStyle pStyle = TextStyle(
      color: const Color(0xFF464D5E),
      fontSize: p,
      fontWeight: FontWeight.w400,
    );

    TextStyle h2Style = TextStyle(
      color: const Color(0xFF464D5E),
      fontSize: h2,
      fontWeight: FontWeight.bold,
    );
    const double gapAfterQ = 15;

    return FadeIn(
      child: Column(
        children: [
          const Gap(mobileSectionGap),
          Text(
            'FAQ',
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSerifDisplay(
              color: textColor,
              fontSize: h1,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(mobileGap),
                      Text(
                        "1. What services does Istasherni provide?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "We offer legal help with:\nImmigration: Visas, green cards, and citizenship.\nBusiness: Starting a business from A to Z , contracts.n\nGeneral Legal Issues:Public Notary, translation.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "2. Who is Marwa?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "Marwa is our lead legal expert with experience in immigration, business, and general law. She helps guide our clients through their legal needs.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "3. How can I book a consultation?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "Only by using our  online form on the website. Contact us via Whatsapp for any issue +1 800-831-1613",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "4. What happens during the first consultation?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "We’ll discuss your legal issue, review any relevant documents, and explore possible solutions. You’ll also have the chance to ask questions.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "5. What are your fees?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "\$120 ( include taxes)",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "6. Do you serve clients outside Florida?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "We mainly serve Florida clients with remote consultations and immigration issues for clients everywhere.",
                        style: pStyle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(mobileGap),
                      Text(
                        "7. How long will my case take?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "The time varies based on the case. We’ll give you an estimate during your consultation.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "8. What if I have an urgent issue outside business hours?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "The time varies based on the case. We’ll give you an estimate during your consultation.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "9. How do you handle client confidentiality?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "Your privacy is important to us. We adhere to strict confidentiality practices and ensure that all information you provide is kept secure.",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "10. What languages do you speak?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "Our team primarily speaks English, Arabic, Spanish",
                        style: pStyle,
                      ),
                      const Gap(mobileGap),
                      Text(
                        "11. What should I do if I need to cancel or reschedule my appointment?",
                        textAlign: TextAlign.start,
                        style: h2Style,
                      ),
                      const Gap(gapAfterQ),
                      Text(
                        "Please give us at least 24 hours' notice if you need to reschedule. Contact us by phone, Whatsapp , and email to make changes. For cancellation please take a look at our terms and use section.",
                        style: pStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(sectionGap),
          const MobileFooter(socialIconSize: mobileSocialIconSize, p: mp),
        ],
      ),
    );
    ;
  }
}
