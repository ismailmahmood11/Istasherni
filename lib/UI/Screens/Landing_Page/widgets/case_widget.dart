import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/UI/Screens/Case_Details/case_detail.dart';

import '../../../const.dart';
import 'main_button.dart';

//ignore: must_be_immutable
class CaseWidget extends StatelessWidget {
  CaseWidget({
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });

  String title;
  String subTitle;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double h2 = screenWidth / 50;
    double p = screenWidth / 90;

    double casesWidth = screenWidth / 3;
    double casesHeight = screenHeight / 1.7;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: casesWidth,
          height: casesHeight,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
        ),
        const Gap(gap),
        SizedBox(
          width: casesWidth,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: h2,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(gap),
        SizedBox(
          width: casesWidth,
          child: Text(
            subTitle,
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Gap(gap),
        MainButton(
          onTap: () {
            onTap;
            context.read<PageRoutingCubit>().currentPage(const CaseDetail());
          },
          title: 'See detail',
        ),
      ],
    );
  }
}
