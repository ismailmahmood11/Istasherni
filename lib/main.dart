import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/Mobile/mobile_consultation_routing_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationRouting/consultation_routing_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section1/consultation_values_section1_cubit.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';
import 'package:istasherni/Cubit/Consultation/Date%20Picker/date_picker_cubit.dart';
import 'package:istasherni/Cubit/Language%20Selector/language_cubit.dart';
import 'package:istasherni/Cubit/MobileScreen/screen_type_cubit.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/Cubit/Total/total_cubit.dart';
import 'package:istasherni/Cubit/case_details_cubit.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/screen_type.dart';

import 'UI/Screens/Consultation/Mobile/mobile_consultation.dart';
import 'UI/Screens/SuccessPage/success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScrollPositionCubit()),
        BlocProvider(create: (context) => LanguageCubit()),
        BlocProvider(create: (context) => PageRoutingCubit()),
        BlocProvider(create: (context) => ScreenTypeCubit()),
        BlocProvider(create: (context) => CaseDetailsCubit()),
        BlocProvider(create: (context) => DatePickerCubit()),
        BlocProvider(create: (context) => ConsultationValuesCubit()),
        BlocProvider(create: (context) => ConsultationRoutingCubit()),
        BlocProvider(create: (context) => ConsultationValuesSection2Cubit()),
        BlocProvider(create: (context) => TotalCubit()),
        BlocProvider(create: (context) => MobileConsultationRoutingCubit()),
      ],
      child: MaterialApp(
        title: 'Istasherni',
        initialRoute: '/',
        routes: {
          '/': (context) => const ScreenType(),
          '/success': (context) => SuccessPage(),
          '/mobileConsultation': (context) => MobileConsultation(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainThemeColor),
          useMaterial3: true,
        ),
      ),
    );
  }
}
