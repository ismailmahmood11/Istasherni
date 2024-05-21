import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_bar.dart';

class FooterLinks {
  String heading;
  List<LinkText> link;

  FooterLinks({required this.heading, required this.link});
}

List<FooterLinks> footerLinks = [
  FooterLinks(
    heading: 'Services',
    link: [
      LinkText(
        page: const AppBarMain(),
        link: 'Business Law',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Education Law',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Legal Consultant',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'General Lawyer',
      ),
    ],
  ),
  FooterLinks(
    heading: 'Page',
    link: [
      LinkText(
        page: const AppBarMain(),
        link: 'Lawyer',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Appointment',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Documentation',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Cases',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'News',
      ),
    ],
  ),
  FooterLinks(
    heading: 'Links',
    link: [
      LinkText(
        page: const AppBarMain(),
        link: 'Term of use',
      ),
      LinkText(
        page: const AppBarMain(),
        link: 'Privacy Policy',
      ),
    ],
  ),
];

//

//
class LinkText extends StatelessWidget {
  LinkText({required this.page, required this.link, super.key});

  var page;
  String link;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double pSize = screenWidth / 90;
    TextStyle linkStyle = GoogleFonts.dmSans(
      color: Colors.white,
      fontSize: pSize,
      fontWeight: FontWeight.w200,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push((context), MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
        child: Text(
          link,
          style: linkStyle,
        ),
      ),
    );
  }
}
