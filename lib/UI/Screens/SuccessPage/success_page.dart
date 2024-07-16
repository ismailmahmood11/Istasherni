import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section1/consultation_values_section1_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';

import '../../const.dart';

class SuccessPage extends StatefulWidget {
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  void _sendEmail(
    String firstName,
    String middleName,
    String lastName,
    String emailAddress,
    String contactNumber,
    String dob,
    String service,
    int page,
    String date,
    String state,
    String city,
    String desc,
    String lang,
    String hearAboutUs,
  ) async {
    try {
      await emailjs.send(
        'istasherni',
        'template_sgoebic',
        {
          'firstName': firstName,
          'middleName': middleName,
          'lastName': lastName,
          'emailAddress': emailAddress,
          'contactNumber': contactNumber,
          'dob': dob,
          'service': service,
          'pages': page,
          'date': date,
          'state': state,
          'city': city,
          'desc': desc,
          'language': lang,
          'hearAboutUs': hearAboutUs,
        },
        const emailjs.Options(
          publicKey: '5AmGyEsT1hFri1b7W',
          privateKey: 'sm0RJX3nlySjUkC-2x9Ek',
        ),
      );
      print('SUCCESS!');
    } catch (error) {
      if (error is emailjs.EmailJSResponseStatus) {
        print('ERROR... $error');
      }
      print(error.toString());
    }
  }

  @override
  void initState() {
    final section1 = context.read<ConsultationValuesCubit>();
    final section2 = context.read<ConsultationValuesSection2Cubit>();

    _sendEmail(
      section1.state.firstName,
      section1.state.middleName,
      section1.state.lastName,
      section1.state.emailAddress,
      section1.state.contactNumber,
      section1.state.dob,
      section2.state.service,
      section2.state.page,
      section2.state.date,
      section1.state.state,
      section1.state.city,
      section1.state.desc,
      section1.state.language,
      section1.state.hearAboutUs,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / h1Size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        "Thank you!",
        style: GoogleFonts.dmSerifDisplay(
          fontSize: screenWidth < mobileSize ? mh1 : h1,
        ),
      )),
    );
  }
}
