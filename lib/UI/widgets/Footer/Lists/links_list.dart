import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Cases_Page/cases_page.dart';
import 'package:istasherni/UI/Screens/Services/services.dart';

import '../../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../Screens/Consultation/consultation_screen.dart';
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
        page: const Services(),
        pageName: 'Services',
        link: 'Business Law',
      ),
      LinkText(
        page: const Services(),
        pageName: 'Services',
        link: 'Education Law',
      ),
      LinkText(
        page: const Services(),
        pageName: 'Services',
        link: 'Legal Consultant',
      ),
      LinkText(
        page: const Services(),
        pageName: 'Services',
        link: 'General Lawyer',
      ),
    ],
  ),
  FooterLinks(
    heading: 'Page',
    link: [
      LinkText(
        page: const Services(),
        pageName: 'Services',
        link: 'Services',
      ),
      LinkText(
        page: const ConsultationScreen(),
        pageName: "Consultation",
        link: 'Consultation',
      ),
      LinkText(
        page: const CasesPage(),
        pageName: 'CasesPage',
        link: 'Cases',
      ),
    ],
  ),
  FooterLinks(
    heading: 'Links',
    link: [
      LinkText(
        page: const AppBarMain(),
        pageName: "Term of use",
        link: 'Term of use',
      ),
      LinkText(
        page: const AppBarMain(),
        pageName: 'Privacy Policy',
        link: 'Privacy Policy',
      ),
    ],
  ),
];

//

//ignore: must_be_immutable
class LinkText extends StatelessWidget {
  LinkText(
      {required this.page,
      required this.link,
      required this.pageName,
      super.key});

  dynamic page;
  String pageName;
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
          context.read<PageRoutingCubit>().currentPage(page, pageName);
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            link,
            style: linkStyle,
          ),
        ),
      ),
    );
  }
}
