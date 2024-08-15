import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/widgets/MobileWidgets/mobile_footer.dart';

import '../../../const.dart';

class MobilePrivacyPolicy extends StatelessWidget {
  const MobilePrivacyPolicy({super.key});

  final double h1 = mh1;
  final double h2 = mh2;
  final double p = mp;

  @override
  Widget build(BuildContext context) {
    final TextStyle pStyle = TextStyle(
      color: const Color(0xFF464D5E),
      fontSize: p,
      fontWeight: FontWeight.w400,
    );

    final TextStyle h2Style = TextStyle(
      color: const Color(0xFF464D5E),
      fontSize: h2,
      fontWeight: FontWeight.bold,
    );
    return FadeIn(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(gap),
                SelectionArea(
                  child: Column(
                    children: [
                      Text(
                        'Privacy Policy And Disclaimer',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSerifDisplay(
                          color: textColor,
                          fontSize: h1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Gap(gap),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Istasherni with Marwa, we operate  www.istasherni.com. This page informs you of our policies regarding the collection, use, and disclosure of Personal Information we receive from users of the Site.Unsubscribe\nWe may send you direct marketing messages including by way of email alerts and postal mail. If you no longer wish to receive our email alerts, to be part of a mailing list, or to receive any marketing communications, you can opt-out of such communications at any time by clicking on the unsubscribe link in the relevant communication or contacting us at info@istasherni.com",
                            style: pStyle,
                          ),
                          const Gap(gap),
                          Text(
                            "Terms of Use",
                            textAlign: TextAlign.start,
                            style: h2Style,
                          ),
                          const Gap(gap),
                          Text(
                            "Cost of service provision: Any sum of money becomes due before the service of the case is conducted. The service  will be made using, primarily, the data and contacts provided by the applicant.  \n\nEstimated length of investigation: With appropriate levels of cooperation from the applicant is envisaged that the  service should take about 4 weeks. If more time is needed, due to the complexity  of the case, the applicant will be alerted to this and the reason will be given as to why this is the case.  \n\nConsent to access of sensitive information: Payment of the sum invoiced to the LEGAL CONSULTATION FOR  SCHOLARS, LLC (istasherni.com) bank account implies consent on part of the applicant that  istasherni.com may carry out such investigations as it sees fit to avail itself of the opportunity to grant  professional legal service in accordance to the case of the applicant. This implies consent to the use of any data  protected as confidential under the laws of the United States of America.  \n\nWhereas we are legal professionals and our colleagues value our work, we do not claim to represent nor substitute  legal counsel on behalf of any of our clients in the court of law. By submitting payment for our services, the client  understands this risk from the outset. ",
                            style: pStyle,
                          ),
                          const Gap(gap),
                          Text(
                            "Disclaimer",
                            textAlign: TextAlign.start,
                            style: h2Style,
                          ),
                          const Gap(gap),
                          Text(
                            "Distribution, republication, and/or retransmission of material contained within the website is prohibited unless the prior written permission of the Istasherni team has been obtained.\n\nThe information you obtain at this site is not, nor is it intended to be, legal advice. You should consult an attorney for advice regarding your individual situation. We invite you to contact us and welcome your calls, text messages , WhatsApp letters and electronic emails. Contacting us does not create an attorney-client relationship. Please do not send any confidential information to us until such time as a lawyer and-client relationship has been established.",
                            style: pStyle,
                          ),
                          const Gap(gap),
                          Text(
                            "Contact Us",
                            textAlign: TextAlign.start,
                            style: h2Style,
                          ),
                          const Gap(gap),
                          Text(
                            "If you have any questions about this Privacy Policy, please contact us:\n\nBy email: info@istasherni.com\nBy visiting this page on our website: www.istasherni.com",
                            style: pStyle,
                          ),
                          const Gap(sectionGap),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MobileFooter(socialIconSize: mobileSocialIconSize, p: p)
        ],
      ),
    );
  }
}
