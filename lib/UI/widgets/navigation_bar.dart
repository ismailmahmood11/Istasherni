import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/UI/Screens/Cases_Page/cases_page.dart';
import 'package:istasherni/UI/Screens/Clients/clients.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/on_hover.dart';

import '../Screens/Services/services.dart';

//ignore: must_be_immutable
class AppBarNavigationBar extends StatelessWidget {
  AppBarNavigationBar({super.key});

  double gapBetweenText = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBarNavigationBarTexts(
          title: 'Home',
          onTap: () {
            context.read<PageRoutingCubit>().currentPage(const LandingPage());
          },
        ),
        // Gap(gapBetweenText),
        // AppBarNavigationBarTexts(
        //   title: 'About us',
        //   onTap: () {},
        // ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Services',
          onTap: () {
            context.read<PageRoutingCubit>().currentPage(const Services());
          },
        ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Cases',
          onTap: () {
            context.read<PageRoutingCubit>().currentPage(const CasesPage());
          },
        ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Clients',
          onTap: () {
            context.read<PageRoutingCubit>().currentPage(const ClientsPage());
          },
        ),
      ],
    );
  }
}

//ignore: must_be_immutable
class AppBarNavigationBarTexts extends StatelessWidget {
  AppBarNavigationBarTexts(
      {required this.title, required this.onTap, super.key});

  String title;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(builder: (onHover) {
      return GestureDetector(
        onTap: onTap,
        child: AnimatedDefaultTextStyle(
          style: GoogleFonts.inter(
            color: onHover ? mainThemeColor : textColor,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          duration: const Duration(milliseconds: animationDuration),
          child: Text(title),
        ),
      );
    });
  }
}
