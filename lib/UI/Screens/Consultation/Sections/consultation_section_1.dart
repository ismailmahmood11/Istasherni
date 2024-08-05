import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/consultation_routing_cubit.dart';

import '../../../../Cubit/Consultation/ConsultationValues/Section1/consultation_values_section1_cubit.dart';
import '../../../../Cubit/Consultation/Date Picker/date_picker_cubit.dart';
import '../../../const.dart';
import '../../Landing_Page/widgets/main_button.dart';
import '../Widgets/consultation_dob.dart';
import '../Widgets/consultation_text_field.dart';
import '../Widgets/preferred_language.dart';
import 'consultation_section_2.dart';

class ConsultationSection1 extends StatelessWidget {
  ConsultationSection1({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController hearAboutUsController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double screenPadding = screenWidth / padding1;
    double doubleScreenPadding = screenPadding + screenPadding;
    double sectionSize = doubleScreenPadding * 2;

    double p = screenWidth / pSize;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      child: FadeIn(
        child: Column(
          children: [
            const Gap(20),
            Row(
              children: [
                Flexible(
                  child: ConsultationTextField(
                      controller: firstNameController,
                      label: 'First Name*',
                      hint: 'John'),
                ),
                const Gap(25),
                Flexible(
                    child: ConsultationTextField(
                        controller: middleNameController,
                        label: 'Middle Name',
                        hint: '')),
                const Gap(25),
                Flexible(
                    child: ConsultationTextField(
                        controller: lastNameController,
                        label: 'Last Name',
                        hint: '')),
              ],
            ),
            const Gap(gap),
            ConsultationTextField(
                controller: contactNumberController,
                label: 'Contact Number*',
                hint: '(555) 555-1234'),
            const Gap(gap),
            ConsultationTextField(
                controller: emailAddressController,
                label: 'Email Address*',
                hint: 'Example@gmail.com'),
            const Gap(gap),
            const ConsultationDob(),
            const Gap(gap),
            Row(
              children: [
                Flexible(
                    child: ConsultationTextField(
                        controller: cityController,
                        label: 'City*',
                        hint: 'Sydney')),
                const Gap(gap),
                Flexible(
                  child: ConsultationTextField(
                      controller: stateController,
                      label: 'State/Provinces*',
                      hint: 'New South Wales'),
                ),
              ],
            ),
            const Gap(gap),
            const PreferredLanguage(),
            const Gap(gap),
            ConsultationTextField(
              controller: descriptionController,
              label: 'The Description*',
              hint: 'Lease Renewal',
              multiLines: true,
            ),
            const Gap(gap),
            ConsultationTextField(
              controller: hearAboutUsController,
              label: 'How Did you hear about us*',
              hint: 'Friends',
              multiLines: true,
            ),
            const Gap(gap),
            BlocBuilder<ConsultationRoutingCubit, ConsultationRoutingInitial>(
              builder: (context, state) {
                return Row(
                  children: [
                    Container(
                      width: screenWidth - sectionSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: state.sectionNotComplete
                            ? Colors.redAccent.withOpacity(.1)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Please verify that all fields are correctly filled and complete.',
                          style: TextStyle(
                            color: state.sectionNotComplete
                                ? Colors.redAccent
                                : Colors.transparent,
                            fontWeight: FontWeight.bold,
                            fontSize: p,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const Gap(gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocBuilder<DatePickerCubit, DatePickerInitial>(
                  builder: (context, date) {
                    return BlocBuilder<ConsultationValuesCubit,
                        ConsultationValuesInitial>(
                      builder: (context, state) {
                        return MainButton(
                          title: 'Next',
                          onTap: () {
                            context
                                .read<ConsultationValuesCubit>()
                                .consultationValues(
                                  firstNameController.text,
                                  middleNameController.text,
                                  lastNameController.text,
                                  contactNumberController.text,
                                  emailAddressController.text,
                                  DateFormat('MMMM dd y')
                                      .format(date.dateTime)
                                      .toString(),
                                  cityController.text,
                                  stateController.text,
                                  state.language,
                                  descriptionController.text,
                                  hearAboutUsController.text,
                                );

                            final newState =
                                context.read<ConsultationValuesCubit>().state;

                            if (newState.firstName.isNotEmpty &&
                                newState.lastName.isNotEmpty &&
                                newState.contactNumber.isNotEmpty &&
                                newState.emailAddress.isNotEmpty &&
                                newState.city.isNotEmpty &&
                                newState.state.isNotEmpty &&
                                newState.language.isNotEmpty &&
                                newState.desc.isNotEmpty &&
                                newState.hearAboutUs.isNotEmpty &&
                                newState.language.isNotEmpty &&
                                newState.dob.isNotEmpty) {
                              context
                                  .read<ConsultationRoutingCubit>()
                                  .consultationRouting(
                                      ConsultationSection2(), 2);
                              context
                                  .read<ConsultationRoutingCubit>()
                                  .sectionNotComplete(false);
                            } else {
                              context
                                  .read<ConsultationRoutingCubit>()
                                  .sectionNotComplete(true);
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
