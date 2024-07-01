import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/consultation_routing_cubit.dart';

import '../../const.dart';
import 'Widgets/consultation_steps.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double h1 = screenWidth / h1Size;
    double h2 = screenWidth / h2Size;

    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    return FadeIn(
      child: Column(
        children: [
          const Gap(120),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
            child: Column(
              children: [
                Text(
                  'Consultation Form',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(
                    color: textColor,
                    fontSize: h1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(sectionGap),
                BlocBuilder<ConsultationRoutingCubit,
                    ConsultationRoutingInitial>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ConsultationSteps(
                          noColor: primaryThemeColor,
                          color: mainThemeColor,
                          screenWidth: screenWidth,
                          h1: h1,
                          p: p,
                          no: '1',
                          title: 'Filling The Form',
                        ),
                        ConsultationSteps(
                          noColor: state.sectionNo == 2 || state.sectionNo == 3
                              ? primaryThemeColor
                              : const Color(0xff8D9099),
                          color: state.sectionNo == 2 || state.sectionNo == 3
                              ? mainThemeColor
                              : const Color(0xff8D9099),
                          screenWidth: screenWidth,
                          h1: h1,
                          p: p,
                          no: '2',
                          title: 'Booking an\nAppointment',
                        ),
                        ConsultationSteps(
                          color: state.sectionNo == 3
                              ? mainThemeColor
                              : const Color(0xff8D9099),
                          noColor: state.sectionNo == 3
                              ? primaryThemeColor
                              : const Color(0xff8D9099),
                          screenWidth: screenWidth,
                          h1: h1,
                          p: p,
                          no: '3',
                          title: 'Making the Payment',
                        ),
                      ],
                    );
                  },
                ),
                const Gap(sectionGap),
                BlocBuilder<ConsultationRoutingCubit,
                    ConsultationRoutingInitial>(
                  builder: (context, state) {
                    return state.section;
                  },
                ),
                const Gap(sectionGap),
              ],
            ),
          )
        ],
      ),
    );
  }
}
