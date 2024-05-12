import 'package:flutter/material.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Istasherni',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainThemeColor),
        useMaterial3: true,
      ),
      home: const AppBarMain(),
    );
  }
}