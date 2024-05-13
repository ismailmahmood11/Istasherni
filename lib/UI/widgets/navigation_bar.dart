import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/on_hover.dart';

class AppBarNavigationBar extends StatelessWidget {
  AppBarNavigationBar({super.key});

  double gapBetweenText = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBarNavigationBarTexts(
          title: 'About us',
          onTap: () {},
        ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Services',
          onTap: () {},
        ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Cases',
          onTap: () {},
        ),
        Gap(gapBetweenText),
        AppBarNavigationBarTexts(
          title: 'Clients',
          onTap: () {},
        ),
      ],
    );
  }
}

class AppBarNavigationBarTexts extends StatelessWidget {
  AppBarNavigationBarTexts(
      {required this.title, required this.onTap, super.key});

  String title;
  var onTap;

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
