import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../widgets/on_hover.dart';

class MainButton extends StatelessWidget {
  MainButton({
    required this.title,
    this.onTap,
    super.key,
  });

  String title;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: HoverBuilder(builder: (onHover) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: animationDuration),
          width: onHover ? 175 : 170,
          height: onHover ? 52 : 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: onHover ? Colors.black54 : Colors.transparent,
                blurRadius: 5,
              ),
            ],
            color: mainThemeColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }),
    );
  }
}
