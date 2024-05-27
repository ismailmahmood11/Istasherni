import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/MobileScreen/screen_type_cubit.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/screen_type.dart';

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
        BlocProvider(create: (context) => PageRoutingCubit()),
        BlocProvider(create: (context) => ScreenTypeCubit()),
      ],
      child: MaterialApp(
        title: 'Istasherni',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainThemeColor),
          useMaterial3: true,
        ),
        home: const ScreenType(),
      ),
    );
  }
}
