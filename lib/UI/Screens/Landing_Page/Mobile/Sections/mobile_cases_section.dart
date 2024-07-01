import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Cases_Page/Mobile/mobile_cases_page.dart';

import '../../../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../../../Cubit/case_details_cubit.dart';
import '../../../../const.dart';
import '../../../../widgets/MobileWidgets/mobile_button.dart';
import '../../../../widgets/MobileWidgets/mobile_cases_widget.dart';
import '../../../Case_Details/Mobile/mobile_case_details.dart';

class CaseSection extends StatelessWidget {
  const CaseSection({
    super.key,
    required this.h1,
    required this.screenHeight,
    required this.h2,
    required this.p,
  });

  final double h1;
  final double screenHeight;
  final double h2;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
      child: Column(
        children: [
          const Gap(mobileSectionGap),
          Text(
            'Cases we’ve handled in the past',
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: h1,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(gap),
          MobileCasesWidget(
            img: 'assets/images/cases_Images/cases1.png',
            screenHeight: screenHeight,
            h1: h1,
            h2: h2,
            p: p,
            onTap: () {
              context
                  .read<PageRoutingCubit>()
                  .currentPage(const MobileCaseDetails(), 'MobileCasesPage');
              context.read<CaseDetailsCubit>().caseDetails(
                    'Naturalization in the US',
                    "At our firm, we excel in assisting clients through every step of the naturalization process, ensuring they navigate it smoothly. From initial application submission to interview preparation, we offer comprehensive support tailored to their needs. Our dedicated team stands by their side, providing expert guidance and peace of mind. We accompany clients to their interviews, ensuring they feel confident and well-prepared. With our skilled Arabic interpreters, language barriers are effectively bridged, ensuring clear communication throughout. Count on us to make your naturalization journey as seamless and successful as possible.",
                    'assets/images/cases_Images/cases1.png',
                    'December, 11 2022 - January, 9 2023',
                  );
            },
            title: 'Naturalization in the US',
          ),
          const Gap(gap),
          MobileCasesWidget(
            img: 'assets/images/cases_Images/cases2.png',
            screenHeight: screenHeight,
            h1: h1,
            h2: h2,
            p: p,
            onTap: () {
              context
                  .read<PageRoutingCubit>()
                  .currentPage(const MobileCaseDetails(), 'MobileCasesPage');
              context.read<CaseDetailsCubit>().caseDetails(
                    'Establishing a New Company in the US',
                    "We provided comprehensive guidance to our musician client, assisting her throughout the entire process of establishing her business. Our support included detailed consultations tailored to her new venture's specific needs. We helped her with initial planning, ensuring she had a solid foundation. Our team guided her through legal requirements and business registration. We offered advice on marketing strategies and audience engagement. Throughout the setup phase, we provided continuous support and feedback. Our assistance ensured she confidently navigated every step of her business journey.",
                    'assets/images/cases_Images/cases2.png',
                    'December, 11 2022 - January, 9 2023',
                  );
            },
            title: 'Establishing a New Company in the US',
          ),
          const Gap(gap),
          MobileButton(
            p: p,
            title: 'More',
            color: const Color(0xFFD9D9D9),
            textColor: textColor,
            onTap: () {
              context
                  .read<PageRoutingCubit>()
                  .currentPage(const MobileCasesPage(), 'MobileCasesPage');
            },
          ),
        ],
      ),
    );
  }
}
