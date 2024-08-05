import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';

//ignore: must_be_immutable
class AttorneyWidget extends StatelessWidget {
  AttorneyWidget({required this.title, super.key});

  String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    return Column(
      children: [
        Container(
          height: screenWidth / 4,
          width: screenWidth / 3 - screenWidth / padding1,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Image.asset(
            'assets/images/People/marwa.png',
            fit: BoxFit.cover,
          ),
        ),
        const Gap(gap),
        Text(
          title,
          style: GoogleFonts.dmSerifDisplay(
            color: textColor,
            fontSize: h2,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'Lawyer',
          style: GoogleFonts.dmSans(
            color: textColor,
            fontSize: p,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
