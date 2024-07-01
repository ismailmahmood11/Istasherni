import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/Cubit/case_details_cubit.dart';
import 'package:istasherni/UI/Screens/Case_Details/case_detail.dart';
import 'package:istasherni/UI/Screens/Cases_Page/cases_page.dart';

import '../../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../const.dart';
import '../widgets/case_widget.dart';
import '../widgets/more_button.dart';

class CasesSection extends StatelessWidget {
  CasesSection({
    super.key,
    required this.screenWidth,
    required this.p,
    required this.h1,
    this.showMoreButton = false,
  });

  final double screenWidth;
  final double p;
  final double h1;
  bool showMoreButton = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(gap),
          Text(
            'Cases',
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(gap),
          Text(
            'Cases we’ve\nhandled in the past',
            style: TextStyle(
              color: textColor,
              fontSize: h1,
              fontFamily: 'Helvetica Neue LT Arabic',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CaseWidget(
                image: 'assets/images/cases_Images/cases1.png',
                title: 'Naturalization in the US',
                subTitle:
                    'We specialize in guiding clients through the naturalization process, offering dedicated support from application to interview. Our services include accompanying clients to their interviews and ensuring clarity with our proficient Arabic interpreters.',
                onTap: () {
                  context
                      .read<PageRoutingCubit>()
                      .currentPage(const CaseDetail(), 'CaseDetail');
                  context.read<CaseDetailsCubit>().caseDetails(
                        'Naturalization in the US',
                        "At our firm, we excel in assisting clients through every step of the naturalization process, ensuring they navigate it smoothly. From initial application submission to interview preparation, we offer comprehensive support tailored to their needs. Our dedicated team stands by their side, providing expert guidance and peace of mind. We accompany clients to their interviews, ensuring they feel confident and well-prepared. With our skilled Arabic interpreters, language barriers are effectively bridged, ensuring clear communication throughout. Count on us to make your naturalization journey as seamless and successful as possible.",
                        'assets/images/cases_Images/cases1.png',
                        'December, 11 2022 - January, 9 2023',
                      );
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Visibility(
                    visible: showMoreButton,
                    child: MoreButton(
                      title: 'See More',
                      onTap: () {
                        context
                            .read<PageRoutingCubit>()
                            .currentPage(const CasesPage(), "CasesPage");
                      },
                    ),
                  ),
                  const Gap(70),
                  CaseWidget(
                    image: 'assets/images/cases_Images/cases2.png',
                    title: 'Establishing a New Company in the US',
                    subTitle:
                        "We provided our musician client with comprehensive guidance throughout the process of establishing her business, offering detailed consultations tailored to her new venture's needs. Our support ensured she navigated each step confidently, from initial planning to operational setup and beyond.",
                    onTap: () {
                      context
                          .read<PageRoutingCubit>()
                          .currentPage(const CaseDetail(), 'CaseDetail');
                      context.read<CaseDetailsCubit>().caseDetails(
                            'Establishing a New Company in the US',
                            "We provided comprehensive guidance to our musician client, assisting her throughout the entire process of establishing her business. Our support included detailed consultations tailored to her new venture's specific needs. We helped her with initial planning, ensuring she had a solid foundation. Our team guided her through legal requirements and business registration. We offered advice on marketing strategies and audience engagement. Throughout the setup phase, we provided continuous support and feedback. Our assistance ensured she confidently navigated every step of her business journey.",
                            'assets/images/cases_Images/cases2.png',
                            'December, 11 2022 - January, 9 2023',
                          );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
