import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../widgets/on_hover.dart';

class MoreButton extends StatelessWidget {
  MoreButton({
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
        return Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: animationDuration),
              width: onHover ? 3 : 0,
              height: 5,
            ),
            const Icon(
              Icons.arrow_right_sharp,
              color: Color(0xFF333333),
              size: 27,
            ),
          ],
        );
      }),
    );
  }
}
