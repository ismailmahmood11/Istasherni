import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//ignore: must_be_immutable
class LinksWidget extends StatelessWidget {
  LinksWidget({required this.title, required this.link, super.key});

  String title;
  List<Widget> link;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double pSize = screenWidth / 90;

    TextStyle headingStyle = GoogleFonts.dmSerifDisplay(
      color: Colors.white,
      fontSize: pSize,
      fontWeight: FontWeight.w400,
    );

    // TextStyle linkStyle = GoogleFonts.dmSans(
    //   color: Colors.white,
    //   fontSize: pSize,
    //   fontWeight: FontWeight.w200,
    // );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: headingStyle),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: link,
        )
      ],
    );
  }
}
