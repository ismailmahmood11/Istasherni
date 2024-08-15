import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:istasherni/UI/Screens/FAQ/Mobile/mobile_faq.dart';

import '../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../Screens/Privacy Policy/Mobile/mobile_privacy_policy.dart';
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
              GestureDetector(
                onTap: () async {
                  await EasyLauncher.url(
                      url:
                          "https://www.facebook.com/share/HrAUPKMtzH8R1MJM/?mibextid=LQQJ4d");
                },
                child: Icon(
                  Ionicons.logo_facebook,
                  color: Colors.white,
                  size: socialIconSize,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await EasyLauncher.url(
                      url:
                          "https://www.linkedin.com/company/istasherni-with-marwa/");
                },
                child: Icon(
                  Ionicons.logo_linkedin,
                  color: Colors.white,
                  size: socialIconSize,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await EasyLauncher.url(
                      url:
                          "https://x.com/marwaalwadai?s=21&t=SsvtmMNYxC86bN4I_ITTqw");
                },
                child: Image.asset(
                  'assets/images/icons/x.png',
                  width: 15,
                ),
              ),
            ],
          ),
          const Gap(gap),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<PageRoutingCubit>().currentPage(
                      const MobilePrivacyPolicy(), 'PrivacyPolicyMobile');
                },
                child: Text(
                  'Privacy Policy',
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: p,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context
                      .read<PageRoutingCubit>()
                      .currentPage(const MobileFaq(), 'FAQ');
                },
                child: Text(
                  'FAQ',
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: p,
                    fontWeight: FontWeight.w300,
                  ),
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
