import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../const.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    super.key,
    required this.socialIconSize,
    required this.p,
  });

  final double socialIconSize;
  final double p;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: secondaryColor,
      padding: EdgeInsets.symmetric(horizontal: padding1, vertical: 20),
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo/istasherni_logo_white.png',
            width: 250,
          ),
          const Gap(20),
          const Divider(
            height: 2,
            thickness: 1,
            color: Colors.white,
            endIndent: 50,
            indent: 50,
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Ionicons.logo_facebook,
                color: Colors.white,
                size: socialIconSize,
              ),
              Icon(
                Ionicons.logo_linkedin,
                color: Colors.white,
                size: socialIconSize,
              ),
              Icon(
                Ionicons.logo_twitter,
                color: Colors.white,
                size: socialIconSize,
              ),
              Icon(
                Ionicons.logo_instagram,
                color: Colors.white,
                size: socialIconSize,
              ),
            ],
          ),
          const Gap(gap),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Privacy Policy',
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: p,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Terms and Condition',
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: p,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const Gap(20),
          const Divider(
            height: 2,
            thickness: 1,
            color: Colors.white,
          ),
          const Gap(20),
          Text(
            'Copyright @2024 Istasherni All Right Reserved',
            style: GoogleFonts.dmSans(
              color: Colors.white,
              fontSize: p - 3,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
