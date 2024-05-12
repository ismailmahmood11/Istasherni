import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/on_hover.dart';

class HeroSection extends StatelessWidget {
  HeroSection({super.key});

  ExpandableThemeData expandableThemeData = const ExpandableThemeData(
    useInkWell: false,
    headerAlignment: ExpandablePanelHeaderAlignment.center,
    tapBodyToCollapse: true,
    tapBodyToExpand: true,
    iconSize: 25,
    expandIcon: Icons.arrow_forward,
    collapseIcon: Icons.arrow_forward,
    iconRotationAngle: -1,
    iconPlacement: ExpandablePanelIconPlacement.left,
    iconPadding: EdgeInsets.only(right: 10),
    iconColor: textColor,
  );

  TextStyle expandableTextStyle = const TextStyle(
    color: Color(0xFF333333),
    fontSize: p - 4,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double h1 = screenWidth / 30;

    double p = screenWidth / 90;

    double gap = 40;

    return SizedBox(
      width: double.infinity,
      height: screenHeight - 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: h1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Istasherni\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: h1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'with Marwa',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: h1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(gap),
                  Text(
                    'At Istasherni, we transform legal complexities into strategic opportunities. Our team delivers exceptional, personalized legal services to protect and empower you.',
                    style: TextStyle(
                      color: const Color(0xFF464D5E),
                      fontSize: p,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(gap),
                  Row(
                    children: [
                      HoverBuilder(builder: (onHover) {
                        return AnimatedContainer(
                          duration:
                              const Duration(milliseconds: animationDuration),
                          width: onHover ? 175 : 170,
                          height: onHover ? 52 : 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: onHover
                                    ? Colors.black54
                                    : Colors.transparent,
                                blurRadius: 5,
                              ),
                            ],
                            color: mainThemeColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'Consult Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                      Gap(gap),
                      HoverBuilder(builder: (onHover) {
                        return Row(
                          children: [
                            const Text(
                              'Explore',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(
                                  milliseconds: animationDuration),
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
                      })
                    ],
                  ),
                  Gap(gap),
                  Text(
                    'Office Hours\nMonday - Friday\n(9AM - 6PM)\n\nEastern Standard Time (Florida, United States)',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF464D5E),
                      fontSize: p - 2,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Image.asset(
                'assets/images/hero_image.png',
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Column(
                      children: [
                        ExpandablePanel(
                          theme: expandableThemeData,
                          header: Text(
                            'General Legal Services',
                            style: expandableTextStyle.copyWith(fontSize: p),
                          ),
                          collapsed: Container(),
                          expanded: Text(
                            'Guiding people through legal complexities with unparalleled expertise.',
                            softWrap: true,
                            style: expandableTextStyle,
                          ),
                        ),
                        ExpandablePanel(
                          theme: expandableThemeData,
                          header: Text(
                            'Immigration Services',
                            style: expandableTextStyle.copyWith(fontSize: p),
                          ),
                          collapsed: Container(),
                          expanded: Text(
                            'Guiding people through legal complexities with unparalleled expertise.',
                            softWrap: true,
                            style: expandableTextStyle,
                          ),
                        ),
                        ExpandablePanel(
                          theme: expandableThemeData,
                          header: Text(
                            'Business Services',
                            style: expandableTextStyle.copyWith(fontSize: p),
                          ),
                          collapsed: Container(),
                          expanded: Text(
                            'Guiding people through legal complexities with unparalleled expertise.',
                            softWrap: true,
                            style: expandableTextStyle,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'cases\nhandled',
                                  style: GoogleFonts.inter(
                                    color: textColor,
                                    fontSize: p - 3,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(20),
                                Text(
                                  '10K+',
                                  style: GoogleFonts.inter(
                                    color: textColor,
                                    fontSize: h1 - 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'satisfaction\nrate',
                                  style: GoogleFonts.inter(
                                    color: textColor,
                                    fontSize: p - 3,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(20),
                                Text(
                                  '98%',
                                  style: GoogleFonts.inter(
                                    color: textColor,
                                    fontSize: h1 - 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const Gap(50),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
