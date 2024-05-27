import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';

class ServicesWidget extends StatelessWidget {
  ServicesWidget({
    super.key,
    required this.h1,
    required this.p,
    required this.title,
    required this.para,
  });

  final double h1;
  final double p;
  String title;
  String para;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: h1,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(gap),
        SizedBox(
          width: 878,
          child: Text(
            para,
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
