import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/app_bar.dart';

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
      ],
      child: MaterialApp(
        title: 'Istasherni',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: mainThemeColor),
          useMaterial3: true,
        ),
        home: const AppBarMain(),
      ),
    );
  }
}
