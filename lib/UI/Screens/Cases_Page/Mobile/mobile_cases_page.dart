import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/UI/Screens/Case_Details/Mobile/mobile_case_details.dart';
import 'package:istasherni/UI/Screens/Cases_Page/List/cases_list.dart';
import 'package:istasherni/UI/Screens/Sections/Mobile%20Sections/mobile_bottom_section.dart';
import 'package:istasherni/UI/const.dart';

import '../../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../widgets/MobileWidgets/mobile_cases_widget.dart';

class MobileCasesPage extends StatelessWidget {
  const MobileCasesPage({super.key});

  final double h1 = 36;
  final double h2 = 20;
  final double p = 17;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return FadeIn(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: caseList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MobileCasesWidget(
                      screenHeight: screenHeight,
                      h1: h1,
                      h2: h2,
                      p: p,
                      onTap: () {
                        context.read<PageRoutingCubit>().currentPage(
                            const MobileCaseDetails(), 'MobileCasesPage');
                      },
                      title: caseList[index].title,
                    );
                  },
                ),
              ],
            ),
          ),
          MobileBottomSection(h1: h1, p: p),
        ],
      ),
    );
  }
}
