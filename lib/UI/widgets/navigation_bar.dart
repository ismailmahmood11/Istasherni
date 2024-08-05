import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/UI/Screens/Cases_Page/cases_page.dart';
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
    return BlocBuilder<PageRoutingCubit, PageRoutingInitial>(
      builder: (context, state) {
        return Row(
          children: [
            AppBarNavigationBarTexts(
              color:
                  state.pageName == 'LandingPage' ? mainThemeColor : textColor,
              title: 'Home',
              onTap: () {
                context
                    .read<PageRoutingCubit>()
                    .currentPage(const LandingPage(), 'LandingPage');
              },
            ),
            // Gap(gapBetweenText),
            // AppBarNavigationBarTexts(
            //   title: 'About us',
            //   onTap: () {},
            // ),
            Gap(gapBetweenText),
            AppBarNavigationBarTexts(
              color: state.pageName == 'Services' ? mainThemeColor : textColor,
              title: 'Services',
              onTap: () {
                context
                    .read<PageRoutingCubit>()
                    .currentPage(const Services(), 'Services');
              },
            ),
            Gap(gapBetweenText),
            AppBarNavigationBarTexts(
              color: state.pageName == 'CasesPage' ? mainThemeColor : textColor,
              title: 'Cases',
              onTap: () {
                context
                    .read<PageRoutingCubit>()
                    .currentPage(const CasesPage(), 'CasesPage');
              },
            ),
            Gap(gapBetweenText),
            AppBarNavigationBarTexts(
              color:
                  state.pageName == 'ClientsPage' ? mainThemeColor : textColor,
              title: 'Clients',
              onTap: () {
                // context
                //     .read<PageRoutingCubit>()
                //     .currentPage(const ClientsPage(), 'ClientsPage');
              },
            ),
          ],
        );
      },
    );
  }
}

//ignore: must_be_immutable
class AppBarNavigationBarTexts extends StatelessWidget {
  AppBarNavigationBarTexts(
      {required this.title,
      required this.onTap,
      required this.color,
      super.key});

  String title;
  Function() onTap;
  Color color;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(builder: (onHover) {
      return GestureDetector(
        onTap: onTap,
        child: AnimatedDefaultTextStyle(
          style: GoogleFonts.inter(
            color: onHover ? mainThemeColor : color,
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
