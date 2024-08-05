import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:istasherni/UI/widgets/Footer/Widgets/links_widget.dart';

import '../../const.dart';
import 'Lists/links_list.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double pSize = screenWidth / 90;

    TextStyle headingStyle = GoogleFonts.dmSerifDisplay(
      color: Colors.white,
      fontSize: pSize,
      fontWeight: FontWeight.w400,
    );

    TextStyle linkStyle = GoogleFonts.dmSans(
      color: Colors.white,
      fontSize: pSize,
      fontWeight: FontWeight.w200,
    );

    return Container(
      width: screenWidth,
      color: secondaryColor,
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth / padding1, vertical: 40),
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo/istasherni_logo_white.png',
            width: 400,
          ),
          const Gap(gap),
          const Divider(
            height: 2,
            thickness: 1,
            color: Colors.white,
            endIndent: 250,
            indent: 250,
          ),
          const Gap(gap),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Us', style: headingStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'a certified website that provides legal services for a nominal fee, serving international male and female students abroad, with scholarships, of all age groups and their families',
                        style: linkStyle,
                      ),
                    ),
                    const Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          color: Colors.white,
                          Ionicons.logo_facebook,
                        ),
                        Icon(
                          Ionicons.logo_linkedin,
                          color: Colors.white,
                        ),
                        Icon(
                          Ionicons.logo_twitter,
                          color: Colors.white,
                        ),
                        Icon(
                          Ionicons.logo_instagram,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        SizedBox(
                          width: 1,
                        )
                      ],
                    )
                  ],
                ),
              ),
              for (var i in footerLinks)
                LinksWidget(
                  title: i.heading,
                  link: i.link,
                ),
              SizedBox(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Us", style: headingStyle),
                    const Gap(20),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone_outlined,
                          color: Colors.white,
                        ),
                        const Gap(10),
                        Text(
                          '+22 7272 8282',
                          style: linkStyle,
                        ),
                      ],
                    ),
                    const Gap(15),
                    Row(
                      children: [
                        const Icon(
                          Ionicons.location_outline,
                          color: Colors.white,
                        ),
                        const Gap(10),
                        Text(
                          '+7889 Mechanic\nRd.Miami, FL 33125',
                          style: linkStyle,
                        ),
                      ],
                    ),
                    const Gap(15),
                    Row(
                      children: [
                        const Icon(
                          Ionicons.mail_outline,
                          color: Colors.white,
                        ),
                        const Gap(10),
                        Text(
                          'info@istasherni.com',
                          style: linkStyle,
                        ),
                      ],
                    ),
                    const Gap(15),
                  ],
                ),
              )
            ],
          ),
          const Gap(gap),
          const Divider(
            height: 2,
            thickness: 1,
            color: Colors.white,
          ),
          const Gap(gap),
          Text(
            'Copyright @2024 Istasherni All Right Reserved',
            style: GoogleFonts.dmSans(
              color: Colors.white,
              fontSize: pSize - 3,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
