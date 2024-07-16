import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../widgets/on_hover.dart';

//ignore: must_be_immutable
class MainButton extends StatelessWidget {
  MainButton({
    required this.title,
    required this.onTap,
    this.color = mainThemeColor,
    super.key,
  });

  String title;
  Function() onTap;
  Color color;

  @override
  Widget build(BuildContext context) {
    bool isMobile;

    double screenWidth = MediaQuery.of(context).size.width;
    isMobile = screenWidth < mobileSize ? true : false;

    double p = screenWidth / pSize;
    return GestureDetector(
      onTap: onTap,
      child: HoverBuilder(builder: (onHover) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: animationDuration),
          width: isMobile
              ? 110
              : onHover
                  ? 175
                  : 170,
          height: isMobile
              ? 50
              : onHover
                  ? 52
                  : 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: onHover ? Colors.black54 : Colors.transparent,
                blurRadius: 5,
              ),
            ],
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? mp : p,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
      }),
    );
  }
}
