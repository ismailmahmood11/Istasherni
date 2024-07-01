import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../Cubit/Consultation/Date Picker/date_picker_cubit.dart';
import '../../../const.dart';

class ConsultationAppointmentDate extends StatelessWidget {
  const ConsultationAppointmentDate({super.key});

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;
    return BlocBuilder<DatePickerCubit, DatePickerInitial>(
      builder: (context, state) {
        return AnimatedContainer(
          width: double.infinity,
          duration: const Duration(milliseconds: animationDuration),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black45,
              width: 1.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          child: state.appointmentOpen
              ? FadeIn(
                  child: BlocBuilder<ConsultationValuesSection2Cubit,
                      ConsultationValuesSection2Initial>(
                    builder: (context, state) {
                      return SfDateRangePicker(
                        onSelectionChanged: _onSelectionChanged,
                        selectionMode: DateRangePickerSelectionMode.single,
                        backgroundColor: Colors.white,
                        showNavigationArrow: true,
                        showActionButtons: true,
                        view: DateRangePickerView.month,
                        onSubmit: (value) {
                          context
                              .read<DatePickerCubit>()
                              .appointmentOpen(false);
                          context
                              .read<DatePickerCubit>()
                              .appointment(value as DateTime);

                          context
                              .read<DatePickerCubit>()
                              .appointmentCancel(false);
                        },
                        onCancel: () {
                          context
                              .read<DatePickerCubit>()
                              .appointmentOpen(false);
                          context
                              .read<DatePickerCubit>()
                              .appointmentCancel(true);
                        },
                        minDate: DateTime.now().add(const Duration(days: 1)),
                        headerStyle: const DateRangePickerHeaderStyle(
                          backgroundColor: Colors.white,
                        ),
                      );
                    },
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    context.read<DatePickerCubit>().appointmentOpen(true);
                  },
                  child: FadeIn(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: state.appointmentCancel
                          ? Text(
                              'Choose Appointment Date',
                              style: GoogleFonts.dmSerifDisplay(
                                color: textColor,
                                fontSize: p,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          : Text(
                              "Appointment Date: ${DateFormat('MMMM dd y').format(state.appointmentDateTime).toString()}",
                              style: GoogleFonts.dmSans(
                                color: textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
