import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/case_details_cubit.dart';
import 'package:istasherni/UI/Screens/Sections/Mobile%20Sections/mobile_bottom_section.dart';
import 'package:istasherni/UI/const.dart';

import 'Widgets/mobile_attorney_widgete.dart';

class MobileCaseDetails extends StatelessWidget {
  const MobileCaseDetails({super.key});

  static const double h1 = 36;
  static const double h2 = 20;
  static const double p = 17;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: BlocBuilder<CaseDetailsCubit, CaseDetailsInitial>(
        builder: (context, state) {
          return Column(
            children: [
              const Gap(gap),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 327,
                      decoration: ShapeDecoration(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(state.img, fit: BoxFit.cover)),
                    ),
                    const Gap(20),
                    Text(
                      state.title,
                      style: const TextStyle(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.calendar_month_sharp),
                        const Gap(10),
                        Text(
                          state.date,
                          style: GoogleFonts.dmSerifDisplay(
                            color: textColor,
                            fontSize: p,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Text(
                      state.desc,
                      style: const TextStyle(
                        color: textColor,
                        fontSize: p,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Text(
                      'Lawyer in this case',
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MobileAttorneyWidget(
                          h2: h2,
                          p: p,
                          job: 'Lawyer',
                          name: 'Marwa',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const MobileBottomSection(
                h1: h1,
                p: p,
                h2: h2,
              ),
            ],
          );
        },
      ),
    );
  }
}
