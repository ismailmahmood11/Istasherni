import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Clients/Mobile/widget/mobile_clients_widget.dart';
import 'package:istasherni/UI/Screens/Sections/Mobile%20Sections/mobile_bottom_section.dart';
import 'package:istasherni/UI/const.dart';

class MobileClientsPage extends StatelessWidget {
  const MobileClientsPage({super.key});

  final double h1 = 36;
  final double h2 = 20;
  final double p = 17;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(gap),
              Text(
                'Our Clients come from everywhere',
                style: GoogleFonts.dmSerifDisplay(
                  color: textColor,
                  fontSize: h1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(mobileSectionGap),
              MobileClientsWidget(h2: h2, p: p),
              MobileClientsWidget(h2: h2, p: p),
              MobileClientsWidget(h2: h2, p: p),
              const Gap(gap),
              Container(
                width: double.infinity,
                height: 268,
                decoration: ShapeDecoration(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/People/marwa.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(gap),
              Text(
                '4 years being\nan Lawyer',
                style: GoogleFonts.dmSerifDisplay(
                  color: textColor,
                  fontSize: h2 + 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(gap),
              Text(
                'Lead cases to success',
                style: GoogleFonts.dmSans(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(15),
              Text(
                'Raised Awareness',
                style: GoogleFonts.dmSans(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(15),
              Text(
                'Provided Ongoing Legal Support',
                style: GoogleFonts.dmSans(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(15),
              Text(
                'Improved Application Accuracy',
                style: GoogleFonts.dmSans(
                  color: textColor,
                  fontSize: p,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        MobileBottomSection(
          h1: h1,
          p: p,
          h2: h2,
        ),
      ],
    );
  }
}
