import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/Mobile/mobile_consultation_routing_cubit.dart';

import '../../../const.dart';
import '../Widgets/consultation_steps.dart';

class MobileConsultation extends StatelessWidget {
  MobileConsultation({super.key});

  final bool showNavBar = false;

  final TextStyle navBarStyle = GoogleFonts.inter(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeIn(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(mobileSectionGap),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/'),
                          child: const SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.chevron_left,
                              size: 40,
                            ),
                          ),
                        ),
                        const Gap(mobileGap),
                        Text(
                          'Consultation Form',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSerifDisplay(
                            color: textColor,
                            fontSize: mh1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Gap(mobileSectionGap),
                    BlocBuilder<MobileConsultationRoutingCubit,
                        MobileConsultationRoutingInitial>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ConsultationSteps(
                              mobile: true,
                              noColor: primaryThemeColor,
                              color: mainThemeColor,
                              screenWidth: 1,
                              h1: mh1,
                              p: mp,
                              no: '1',
                              title: 'Filling\nThe Form',
                            ),
                            ConsultationSteps(
                              mobile: true,
                              noColor:
                                  state.sectionNo == 2 || state.sectionNo == 3
                                      ? primaryThemeColor
                                      : const Color(0xff8D9099),
                              color:
                                  state.sectionNo == 2 || state.sectionNo == 3
                                      ? mainThemeColor
                                      : const Color(0xff8D9099),
                              screenWidth: 1,
                              h1: mh1,
                              p: mp,
                              no: '2',
                              title: 'Booking an\nAppointment',
                            ),
                            ConsultationSteps(
                              mobile: true,
                              color: state.sectionNo == 3
                                  ? mainThemeColor
                                  : const Color(0xff8D9099),
                              noColor: state.sectionNo == 3
                                  ? primaryThemeColor
                                  : const Color(0xff8D9099),
                              screenWidth: 1,
                              h1: mh1,
                              p: mp,
                              no: '3',
                              title: 'Making\nthe Payment',
                            ),
                          ],
                        );
                      },
                    ),
                    const Gap(mobileSectionGap),
                    BlocBuilder<MobileConsultationRoutingCubit,
                        MobileConsultationRoutingInitial>(
                      builder: (context, state) {
                        return state.section;
                      },
                    ),
                    const Gap(mobileSectionGap),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
