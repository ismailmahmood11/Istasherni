import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';

class ConsultationTextField extends StatelessWidget {
  ConsultationTextField(
      {required this.label,
      required this.hint,
      this.multiLines = false,
      required this.controller,
      this.isMobile = false,
      super.key});

  String label;
  String hint;
  bool multiLines = false;
  TextEditingController controller;
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    isMobile = screenWidth < mobileSize ? true : false;
    double p = screenWidth / pSize;
    return TextField(
      controller: controller,
      maxLines: multiLines ? 6 : null,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          label: Text(label),
          labelStyle: GoogleFonts.dmSerifDisplay(
            color: textColor,
            fontSize: isMobile ? mp : p,
            fontWeight: FontWeight.w400,
            textStyle: GoogleFonts.dmSans(
              color: textColor,
              fontSize: isMobile ? mp : p,
              fontWeight: FontWeight.w400,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 5,
            ),
          )),
    );
  }
}
