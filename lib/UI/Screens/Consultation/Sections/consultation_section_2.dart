import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/consultation_routing_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';
import 'package:istasherni/Cubit/Consultation/Date%20Picker/date_picker_cubit.dart';
import 'package:istasherni/UI/Screens/Consultation/Sections/consultation_section_1.dart';
import 'package:istasherni/UI/Screens/Consultation/Widgets/consultation_drop_down.dart';
import 'package:istasherni/UI/const.dart';

import '../../Landing_Page/widgets/main_button.dart';
import '../Widgets/consultation_appointment_date.dart';
import '../Widgets/consultation_text_field.dart';

class ConsultationSection2 extends StatelessWidget {
  ConsultationSection2({super.key});

  String? selectedValue;
  final TextEditingController pagesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p = screenWidth / pSize;
    double h2 = screenWidth / h2Size;

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
                    items: const [
                      'Legal Consultation \$120',
                      'Legal Translation (Arabic to English or English to Arabic) \$15 per page',
                      'Legal Translation (Spanish to English or English to Spanish) \$10 per page',
                      'Notarized Documents \$15',
                    ],
                    onChanged: (value) {
                      context
                          .read<ConsultationValuesSection2Cubit>()
                          .service(value.toString());
                    },
                    value: state.service);
              },
            ),
            const Gap(gap),
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
                          const Gap(gap),
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
            const Gap(gap),
            Text(
              'Please Note: Same-day Appointments Are Not Available',
              style: TextStyle(
                  fontSize: p, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            const Gap(10),
            const ConsultationAppointmentDate(),
            const Gap(gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(
                  title: 'Previous',
                  onTap: () {
                    context
                        .read<ConsultationRoutingCubit>()
                        .consultationRouting(ConsultationSection1(), 1);
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
                            // context
                            //     .read<ConsultationRoutingCubit>()
                            //     .consultationRouting(ConsultationSection2(), 2);

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
                                } else {}
                              } else {
                                print(state.time);
                                print(newState.page);
                                print(state.service);
                                print(DateFormat('MMMM dd y')
                                    .format(date.appointmentDateTime)
                                    .toString());
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
