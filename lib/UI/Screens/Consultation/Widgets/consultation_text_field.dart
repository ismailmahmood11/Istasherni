import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';

class ConsultationTextField extends StatelessWidget {
  ConsultationTextField(
      {required this.label,
      required this.hint,
      this.multiLines = false,
      required this.controller,
      super.key});

  String label;
  String hint;
  bool multiLines = false;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
            fontSize: p,
            fontWeight: FontWeight.w400,
            textStyle: GoogleFonts.dmSans(
              color: textColor,
              fontSize: p,
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
