import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/Mobile/mobile_consultation_routing_cubit.dart';
import 'package:istasherni/UI/const.dart';

import '../../../../../Cubit/Consultation/ConsultationValues/Section1/consultation_values_section1_cubit.dart';
import '../../../../../Cubit/Consultation/Date Picker/date_picker_cubit.dart';
import '../../../Landing_Page/widgets/main_button.dart';
import '../../Widgets/consultation_dob.dart';
import '../../Widgets/consultation_text_field.dart';
import '../../Widgets/preferred_language.dart';
import 'mobile_section_2.dart';

class MobileConsultationSection1 extends StatelessWidget {
  MobileConsultationSection1({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController hearAboutUsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / mobilePadding1),
      child: FadeIn(
        child: Column(
          children: [
            ConsultationTextField(
                controller: firstNameController,
                label: 'First Name*',
                hint: 'John'),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: middleNameController,
                label: 'Middle Name',
                hint: ''),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: lastNameController, label: 'Last Name', hint: ''),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: contactNumberController,
                label: 'Contact Number*',
                hint: '(555) 555-1234'),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: emailAddressController,
                label: 'Email Address*',
                hint: 'Example@gmail.com'),
            const Gap(mobileGap),
            const ConsultationDob(),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: cityController, label: 'City*', hint: 'Sydney'),
            const Gap(mobileGap),
            ConsultationTextField(
                controller: stateController,
                label: 'State/Provinces*',
                hint: 'New South Wales'),
            const Gap(mobileGap),
            const PreferredLanguage(),
            const Gap(mobileGap),
            ConsultationTextField(
              controller: descriptionController,
              label: 'The Description*',
              hint: 'Lease Renewal',
              multiLines: true,
            ),
            const Gap(mobileGap),
            ConsultationTextField(
              controller: hearAboutUsController,
              label: 'How Did you hear about us*',
              hint: 'Friends',
              multiLines: true,
            ),
            const Gap(mobileGap),
            BlocBuilder<MobileConsultationRoutingCubit,
                MobileConsultationRoutingInitial>(
              builder: (context, state) {
                return Row(
                  children: [
                    Container(
                      width: screenWidth - 60 - 30,
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
                            fontSize: mp,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const Gap(mobileGap),
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
                                  .read<MobileConsultationRoutingCubit>()
                                  .consultationRouting(
                                      MobileConsultationSection2(), 2);
                              context
                                  .read<MobileConsultationRoutingCubit>()
                                  .sectionNotComplete(false);
                            } else {
                              context
                                  .read<MobileConsultationRoutingCubit>()
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
