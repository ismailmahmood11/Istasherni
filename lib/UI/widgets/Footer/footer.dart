import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:istasherni/UI/widgets/Footer/Widgets/links_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../const.dart';
import 'Lists/links_list.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  launchURL(String link) async {
    final Uri url = Uri.parse(link);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication, // Ensures URL opens externally
    )) {
      throw Exception('Could not launch $link');
    }
  }

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await EasyLauncher.url(
                                url:
                                    "https://www.facebook.com/share/HrAUPKMtzH8R1MJM/?mibextid=LQQJ4d");
                          },
                          child: const Icon(
                            color: Colors.white,
                            Ionicons.logo_facebook,
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await EasyLauncher.url(
                                url:
                                    "https://www.linkedin.com/company/istasherni-with-marwa/");
                          },
                          child: const Icon(
                            Ionicons.logo_linkedin,
                            color: Colors.white,
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
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        const SizedBox(
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
                          '+1 800-831-1613',
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
                          'Online',
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
