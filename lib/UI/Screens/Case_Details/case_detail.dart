import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Cubit/case_details_cubit.dart';
import 'package:istasherni/UI/Screens/Case_Details/widgets/attorney.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

class CaseDetail extends StatelessWidget {
  const CaseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    return FadeIn(
      child: BlocBuilder<CaseDetailsCubit, CaseDetailsInitial>(
        builder: (context, state) {
          return Column(
            children: [
              const Gap(120),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenWidth / padding1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            height: screenWidth / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey,
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  state.img,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        const Gap(50),
                        SizedBox(
                          width: 573,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.title,
                                style: GoogleFonts.dmSerifDisplay(
                                  color: textColor,
                                  fontSize: h1,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Gap(gap),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.calendar_month),
                                      Text(
                                        state.date,
                                        style: GoogleFonts.dmSerifDisplay(
                                          color: textColor,
                                          fontSize: p + 3,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(20),
                                  Text(
                                    state.desc,
                                    style: GoogleFonts.dmSans(
                                      color: textColor,
                                      fontSize: p,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Gap(sectionGap),
                    Text(
                      'Lawyer in this case',
                      style: GoogleFonts.dmSerifDisplay(
                        color: textColor,
                        fontSize: h1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Gap(gap),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AttorneyWidget(
                          title: 'Marwa',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(sectionGap),
              IstasherniIntro(h1: h1, p: p),
              const Gap(sectionGap),
              ReviewSection(screenWidth: screenWidth, p: p, h1: h1),
              const Gap(sectionGap),
              const Footer(),
            ],
          );
        },
      ),
    );
  }
}
