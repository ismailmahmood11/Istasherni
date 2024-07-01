import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Cubit/Consultation/ConsultationValues/Section1/consultation_values_section1_cubit.dart';
import '../../../const.dart';

class PreferredLanguage extends StatefulWidget {
  const PreferredLanguage({super.key});

  @override
  State<PreferredLanguage> createState() => _PreferredLanguageState();
}

class _PreferredLanguageState extends State<PreferredLanguage> {
  bool isEnglish = true;
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double h2 = screenWidth / pSize;
    double p;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Preferred Language For Communication*',
          style: GoogleFonts.dmSerifDisplay(
            color: textColor,
            fontSize: h2,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(20),
        BlocBuilder<ConsultationValuesCubit, ConsultationValuesInitial>(
          builder: (context, state) {
            return Row(
              children: [
                Text(
                  'English',
                  style: GoogleFonts.dmSans(
                    color: textColor,
                    fontSize: p,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(10),
                Checkbox(
                    value: isEnglish,
                    onChanged: (value) {
                      setState(() {
                        isEnglish = !isEnglish;
                        isEnglish == true ? isArabic = false : isArabic = true;
                        context
                            .read<ConsultationValuesCubit>()
                            .consultationValues(
                              state.firstName,
                              state.middleName,
                              state.lastName,
                              state.contactNumber,
                              state.emailAddress,
                              'English',
                              state.city,
                              state.state,
                              state.language,
                              state.desc,
                              state.hearAboutUs,
                            );
                      });
                    }),
                const Gap(gap),
                Text(
                  'Arabic',
                  style: GoogleFonts.dmSans(
                    color: textColor,
                    fontSize: p,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(10),
                Checkbox(
                    value: isArabic,
                    onChanged: (value) {
                      setState(() {
                        isArabic = !isArabic;
                        isArabic == true ? isEnglish = false : isEnglish = true;
                        context
                            .read<ConsultationValuesCubit>()
                            .consultationValues(
                              state.firstName,
                              state.middleName,
                              state.lastName,
                              state.contactNumber,
                              state.emailAddress,
                              'Arabic',
                              state.city,
                              state.state,
                              state.language,
                              state.desc,
                              state.hearAboutUs,
                            );
                      });
                    }),
              ],
            );
          },
        )
      ],
    );
  }
}
