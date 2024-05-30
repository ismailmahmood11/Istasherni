import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Sections/Mobile%20Sections/mobile_bottom_section.dart';
import 'package:istasherni/UI/const.dart';

import 'Widgets/mobile_attorney_widgete.dart';

class MobileCaseDetails extends StatelessWidget {
  const MobileCaseDetails({super.key});

  static const double h1 = 36;
  static const double h2 = 20;
  static const double p = 17;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Column(
        children: [
          const Gap(gap),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mobilePadding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 327,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const Gap(20),
                const Text(
                  'The case of William Accused Corruption of Money at Gony Bank.',
                  style: TextStyle(
                    color: textColor,
                    fontSize: h2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.calendar_month_sharp),
                    const Gap(10),
                    Text(
                      'December,11 2022 - January,8 2023',
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: p,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Commodo pulvinar molestie pellentesque urna libero velit porta. Velit pellentesque hac gravida pellentesque est semper. Duis lectus gravida ultricies eleifend in pharetra faucibus orci sem. Proin ac a cursus praesent. Malesuada risus amet nunc posuere rhoncus accumsan congue id dolor. Convallis maecenas sed in pellentesque. Diam tristique semper mauris dolor amet. Dolor elit nunc et purus quam amet laoreet eu risus.\n\nCum mattis mollis odio gravida adipiscing. Facilisis scelerisque non lacinia tincidunt faucibus tortor vel. Erat risus etiam quam pretium ornare. Semper orci arcu pulvinar adipiscing pretium. Erat facilisis dis arcu senectus sit mi fermentum eu aliquam. Felis neque posuere pharetra porttitor lacinia proin pretium. Et et pharetra tincidunt vel egestas risus sed mollis adipiscing. Lobortis risus mauris vitae pellentesque lobortis sapien. Mi convallis leo nisl pharetra quam arcu blandit. Metus nisl volutpat ut sed sit sit est. ',
                  style: TextStyle(
                    color: textColor,
                    fontSize: p,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(gap),
                Text(
                  'Attorney in This Case',
                  style: GoogleFonts.dmSerifDisplay(
                    color: textColor,
                    fontSize: h2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MobileAttorneyWidget(
                      h2: h2,
                      p: p,
                      job: 'Senior Business Lawyer',
                      name: 'Nada Geomorgant',
                    ),
                    MobileAttorneyWidget(
                      h2: h2,
                      p: p,
                      job: 'Senior Business Lawyer',
                      name: 'Nada Geomorgant',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const MobileBottomSection(h1: h1, p: p),
        ],
      ),
    );
  }
}
