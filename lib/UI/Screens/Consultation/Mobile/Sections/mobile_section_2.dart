import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/Mobile/mobile_consultation_routing_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';
import 'package:istasherni/Cubit/Consultation/Date%20Picker/date_picker_cubit.dart';
import 'package:istasherni/Cubit/Total/total_cubit.dart';
import 'package:istasherni/UI/Screens/Consultation/Mobile/Sections/mobile_section_3.dart';
import 'package:istasherni/UI/Screens/Consultation/Widgets/consultation_drop_down.dart';
import 'package:istasherni/UI/const.dart';

import '../../../Landing_Page/widgets/main_button.dart';
import '../../Widgets/consultation_appointment_date.dart';
import '../../Widgets/consultation_text_field.dart';
import 'mobile_section_1.dart';

class MobileConsultationSection2 extends StatelessWidget {
  MobileConsultationSection2({super.key});

  String? selectedValue;
  final TextEditingController pagesController = TextEditingController();

  List<String> services = const [
    'Legal Consultation \$120',
    'Legal Translation (Arabic to English or English to Arabic) \$15 per page',
    'Legal Translation (Spanish to English or English to Spanish) \$10 per page',
    'Notarized Documents \$15',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p = mp;
    double h2 = mh2;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      child: FadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Your Services*',
              style: GoogleFonts.dmSerifDisplay(
                color: textColor,
                fontSize: p + 4,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            BlocBuilder<ConsultationValuesSection2Cubit,
                ConsultationValuesSection2Initial>(
              builder: (context, state) {
                return ConsultationDropDown(
                    items: services,
                    onChanged: (value) {
                      context
                          .read<ConsultationValuesSection2Cubit>()
                          .service(value.toString());
                    },
                    value: state.service);
              },
            ),
            const Gap(mobileGap),
            BlocBuilder<ConsultationValuesSection2Cubit,
                ConsultationValuesSection2Initial>(
              builder: (context, state) {
                return state.service ==
                            'Legal Translation (Arabic to English or English to Arabic) \$15 per page' ||
                        state.service ==
                            'Legal Translation (Spanish to English or English to Spanish) \$10 per page'
                    ? Column(
                        children: [
                          ConsultationTextField(
                            controller: pagesController,
                            label: 'Pages*',
                            hint: '10',
                          ),
                          const Gap(mobileGap),
                        ],
                      )
                    : Container();
              },
            ),
            Text(
              'Appointment Time (Eastern Time)*',
              style: GoogleFonts.dmSerifDisplay(
                color: textColor,
                fontSize: p + 4,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            BlocBuilder<ConsultationValuesSection2Cubit,
                ConsultationValuesSection2Initial>(
              builder: (context, state) {
                return ConsultationDropDown(
                    items: const [
                      '9:00',
                      '10:00',
                      '11:00',
                      '12:00',
                      '13:00',
                      '14:00',
                      '15:00',
                      '16:00',
                      '17:00',
                    ],
                    onChanged: (value) {
                      context
                          .read<ConsultationValuesSection2Cubit>()
                          .time(value.toString());
                    },
                    value: state.time);
              },
            ),
            const Gap(mobileGap),
            const Text(
              'Please Note: Same-day Appointments Are Not Available',
              style: TextStyle(
                  fontSize: mp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const Gap(10),
            const ConsultationAppointmentDate(),
            const Gap(mobileGap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(
                  title: 'Previous',
                  onTap: () {
                    context
                        .read<MobileConsultationRoutingCubit>()
                        .consultationRouting(MobileConsultationSection1(), 1);
                  },
                ),
                BlocBuilder<DatePickerCubit, DatePickerInitial>(
                  builder: (context, date) {
                    return BlocBuilder<ConsultationValuesSection2Cubit,
                        ConsultationValuesSection2Initial>(
                      builder: (context, state) {
                        return MainButton(
                          title: 'Next',
                          onTap: () {
                            context
                                .read<ConsultationValuesSection2Cubit>()
                                .consultationValue(
                                    state.time,
                                    pagesController.text.isEmpty
                                        ? 0
                                        : int.parse(pagesController.text),
                                    state.service,
                                    DateFormat('MMMM dd y')
                                        .format(date.appointmentDateTime)
                                        .toString());

                            final newState = context
                                .read<ConsultationValuesSection2Cubit>()
                                .state;

                            if (newState.time.isNotEmpty &&
                                newState.service.isNotEmpty &&
                                newState.date.isNotEmpty &&
                                date.appointmentCancel == false) {
                              if (state.service == 'Legal Consultation \$120') {
                                context
                                    .read<ConsultationValuesSection2Cubit>()
                                    .priceID('price_1PaK5BCTbXBN9LA1cSUIhdNY');
                              } else if (state.service ==
                                  'Legal Translation (Arabic to English or English to Arabic) \$15 per page') {
                                context
                                    .read<ConsultationValuesSection2Cubit>()
                                    .priceID("price_1Pco2ZCTbXBN9LA1i6FSBCVb");
                              } else if (state.service ==
                                  'Legal Translation (Spanish to English or English to Spanish) \$10 per page') {
                                context
                                    .read<ConsultationValuesSection2Cubit>()
                                    .priceID("price_1Pco32CTbXBN9LA1vFRudGmn");
                              } else if (state.service ==
                                  'Notarized Documents \$15') {
                                context
                                    .read<ConsultationValuesSection2Cubit>()
                                    .priceID("price_1Pco3tCTbXBN9LA1dutMOrus");
                              }
                              if (state.service ==
                                      'Legal Translation (Arabic to English or English to Arabic) \$15 per page' ||
                                  state.service ==
                                      'Legal Translation (Spanish to English or English to Spanish) \$10 per page') {
                                if (newState.page.toString().isNotEmpty &&
                                    newState.page != 0) {
                                  print(state.time);
                                  print(newState.page);
                                  print(state.service);
                                  print(DateFormat('MMMM dd y')
                                      .format(date.appointmentDateTime)
                                      .toString());
                                  if (state.service == services[0]) {
                                    context.read<TotalCubit>().total(120);
                                  } else if (state.service == services[1]) {
                                    context
                                        .read<TotalCubit>()
                                        .total(15 * newState.page);
                                  } else if (state.service == services[2]) {
                                    context
                                        .read<TotalCubit>()
                                        .total(10 * newState.page);
                                  } else if (state.service == services[3]) {
                                    context.read<TotalCubit>().total(15);
                                  }

                                  context
                                      .read<MobileConsultationRoutingCubit>()
                                      .consultationRouting(
                                          const MobileConsultationSection3(),
                                          3);
                                } else {}
                              } else {
                                print(state.time);
                                print(newState.page);
                                print(state.service);
                                print(DateFormat('MMMM dd y')
                                    .format(date.appointmentDateTime)
                                    .toString());
                                if (state.service == services[0]) {
                                  context.read<TotalCubit>().total(120);
                                } else if (state.service == services[1]) {
                                  context
                                      .read<TotalCubit>()
                                      .total(15 * newState.page);
                                } else if (state.service == services[2]) {
                                  context
                                      .read<TotalCubit>()
                                      .total(10 * newState.page);
                                } else if (state.service == services[3]) {
                                  context.read<TotalCubit>().total(15);
                                }

                                context
                                    .read<MobileConsultationRoutingCubit>()
                                    .consultationRouting(
                                        const MobileConsultationSection3(), 3);
                              }
                            } else {
                              // You can show an alert or message to the user indicating that all fields are required
                            }
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
