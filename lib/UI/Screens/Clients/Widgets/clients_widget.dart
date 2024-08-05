import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';

//ignore: must_be_immutable
class ClientsWidget extends StatelessWidget {
  ClientsWidget({
    super.key,
    required this.screenWidth,
    required this.h1,
    required this.h2,
    required this.p,
    this.isRight = false,
    required this.title,
    required this.icon,
    required this.para,
    required this.location,
  });

  final double screenWidth;
  final double h1;
  final double h2;
  final double p;
  String title;
  String location;
  String para;
  IconData icon;
  bool isRight = false;
  double dividerHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: isRight
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: textColor,
                          weight: 10,
                        ),
                        Text(
                          location,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: textColor,
                            fontSize: p,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Gap(gap),
                    SizedBox(
                      width: 796,
                      child: Text(
                        para,
                        style: GoogleFonts.dmSans(
                          color: textColor,
                          fontSize: p,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 3.5,
                  height: dividerHeight,
                  color: Colors.grey,
                ),
                Container(
                  width: screenWidth / 10,
                  height: screenWidth / 10,
                  color: mainThemeColor,
                  child: Icon(
                    Icons.local_airport,
                    size: h1,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 10,
                  height: screenWidth / 10,
                  color: mainThemeColor,
                  child: Icon(
                    Icons.local_airport,
                    size: h1,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 3.5,
                  height: dividerHeight,
                  color: Colors.grey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: textColor,
                          weight: 10,
                        ),
                        Text(
                          location,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: textColor,
                            fontSize: p,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Gap(gap),
                    SizedBox(
                      width: 796,
                      child: Text(
                        para,
                        style: GoogleFonts.dmSans(
                          color: textColor,
                          fontSize: p,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
    );
  }
}
