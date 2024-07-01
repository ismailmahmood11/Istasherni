import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:istasherni/Cubit/Consultation/Date%20Picker/date_picker_cubit.dart';
import 'package:istasherni/Cubit/Consultation/consultation_values_cubit.dart';
import 'package:istasherni/UI/Screens/Consultation/Widgets/consultation_text_field.dart';
import 'package:istasherni/UI/Screens/Landing_Page/widgets/main_button.dart';

import '../../const.dart';
import 'Widgets/consultation_dob.dart';
import 'Widgets/consultation_steps.dart';
import 'Widgets/preferred_language.dart';

class ConsultationScreen extends StatelessWidget {
  ConsultationScreen({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ConsultationSteps(
                      screenWidth: screenWidth,
                      h1: h1,
                      p: p,
                      no: '1',
                      title: 'Filling The Form',
                    ),
                    ConsultationSteps(
                      screenWidth: screenWidth,
                      h1: h1,
                      p: p,
                      no: '2',
                      title: 'Booking an\nAppointment',
                    ),
                    ConsultationSteps(
                      screenWidth: screenWidth,
                      h1: h1,
                      p: p,
                      no: '3',
                      title: 'Making the Payment',
                    ),
                  ],
                ),
                const Gap(sectionGap),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth / padding1),
                  child: Column(
                    children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainButton(
                            title: 'Previous',
                            onTap: () {},
                          ),
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

                                      final newState = context
                                          .read<ConsultationValuesCubit>()
                                          .state;

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
                                      } else {
                                        // You can show an alert or message to the user indicating that all fields are required
                                        print('All fields are required');
                                      }

                                      print(newState.firstName);
                                      print(newState.middleName);
                                      print(newState.lastName);
                                      print(newState.contactNumber);
                                      print(newState.emailAddress);
                                      print(newState.city);
                                      print(newState.dob);
                                      print(newState.language);
                                      print(newState.state);
                                      print(newState.language);
                                      print(newState.desc);
                                      print(newState.hearAboutUs);
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
                const Gap(sectionGap),
              ],
            ),
          )
        ],
      ),
    );
  }
}
