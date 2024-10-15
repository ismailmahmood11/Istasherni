import 'package:flutter/cupertino.dart';
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
    this.align = TextAlign.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final double h1;
  final double p;
  String title;
  String para;
  TextAlign align;
  CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          textAlign: align,
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
            textAlign: align,
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
