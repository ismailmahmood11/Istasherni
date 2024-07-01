import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../const.dart';
import '../../widgets/on_hover.dart';
import '../Consultation/consultation_screen.dart';

//ignore: must_be_immutable
class IstasherniIntro extends StatelessWidget {
  IstasherniIntro({
    super.key,
    required this.h1,
    required this.p,
    this.backgroundColor = primaryThemeColor,
  });

  final double h1;
  final double p;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h2 = screenWidth / h2Size;
    return Container(
      width: double.infinity,
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Gap(60),
          Text(
            'We Help You With Quality Legal Lawyer',
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontSize: h1,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(20),
          SizedBox(
            width: 1062,
            child: Text(
              'a certified website that provides legal services for a nominal fee, serving international male and female students abroad, with scholarships, of all age groups and their families',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: p,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const Gap(60),
          SizedBox(
            width: 1062,
            child: Text(
              'Our Mission',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: h2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Gap(10),
          Text(
            'To provide legal  services for various legal matters at a nominal cost, in accordance with the standards of living for international students in the United States of America',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: p,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Gap(gap),
          Text(
            'Our Vision',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: h2,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(10),
          Text(
            'To offer legal services in the Arabic language, being based on awareness and legal education\nTo defend the rights of international male students and female students in the United States of America, which are legally established therein',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: p,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Gap(50),
          GestureDetector(
            onTap: () {
              context
                  .read<PageRoutingCubit>()
                  .currentPage(ConsultationScreen(), 'ConsultationScreen');
            },
            child: HoverBuilder(builder: (onHover) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: animationDuration),
                width: onHover ? 265 : 250,
                height: onHover ? 53 : 47,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: textColor,
                      fontSize: p,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }),
          ),
          const Gap(60),
        ],
      ),
    );
  }
}
