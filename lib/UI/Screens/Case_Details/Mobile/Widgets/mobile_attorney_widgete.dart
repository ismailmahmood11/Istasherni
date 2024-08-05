import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';

class MobileAttorneyWidget extends StatelessWidget {
  MobileAttorneyWidget({
    super.key,
    required this.h2,
    required this.p,
    required this.job,
    required this.name,
  });

  final double h2;
  final double p;
  String name;
  String job;
  final double size = 170;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: Stack(
            children: [
              Container(
                width: 170,
                height: 170,
                decoration: ShapeDecoration(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/People/marwa.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 170,
                height: 170,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(0.00, -1.00),
                    end: const Alignment(0, 1),
                    colors: [
                      const Color(0x00D9D9D9),
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      name,
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: h2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Gap(10),
        SizedBox(
          width: size,
          child: Text(
            job,
            style: TextStyle(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
