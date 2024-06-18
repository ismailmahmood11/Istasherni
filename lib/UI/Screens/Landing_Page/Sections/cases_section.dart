import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
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
                    onTap: () {},
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
