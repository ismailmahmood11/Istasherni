import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const.dart';

class ConsultationDropDown extends StatelessWidget {
  ConsultationDropDown(
      {required this.items,
      required this.onChanged,
      required this.value,
      super.key});

  List<String> items;

  String value;
  Function(String? string) onChanged;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p = screenWidth / pSize;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black45,
          width: 1.5,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: false,
          hint: Text(
            'Choose Your Services*',
            style: GoogleFonts.dmSerifDisplay(
              color: textColor,
              fontSize: p,
              fontWeight: FontWeight.w400,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: GoogleFonts.dmSans(
                        color: textColor,
                        fontSize: p,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ))
              .toList(),
          value: value,
          onChanged: onChanged,
          buttonStyleData: const ButtonStyleData(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
          menuItemStyleData: const MenuItemStyleData(),
        ),
      ),
    );
  }
}
