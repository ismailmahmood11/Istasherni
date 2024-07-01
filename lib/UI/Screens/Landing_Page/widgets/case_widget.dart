import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../const.dart';
import 'main_button.dart';

//ignore: must_be_immutable
class CaseWidget extends StatelessWidget {
  CaseWidget({
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.image,
    super.key,
  });

  String title;
  String subTitle;
  String image;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double h2 = screenWidth / 50;
    double p = screenWidth / 90;

    double casesWidth = screenWidth / 3;
    double casesHeight = screenHeight / 2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: casesWidth,
          height: casesHeight,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Gap(gap),
        SizedBox(
          width: casesWidth,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: h2 - 5,
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
              fontWeight: FontWeight.w400,
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
