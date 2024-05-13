import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import 'main_button.dart';

class CaseWidget extends StatelessWidget {
  CaseWidget({
    required this.title,
    required this.subTitle,
    this.onTap,
    super.key,
  });

  String title;
  String subTitle;
  var onTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double h2 = screenWidth / 50;
    double p = screenWidth / 90;

    double casesWidth = screenWidth / 2.7;
    double casesHeight = screenHeight / 1.5;
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
          onTap: onTap,
          title: 'See detail',
        ),
      ],
    );
  }
}
