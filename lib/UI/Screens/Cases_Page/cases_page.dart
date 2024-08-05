import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

import '../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../Cubit/case_details_cubit.dart';
import '../../const.dart';
import '../Case_Details/case_detail.dart';
import '../Landing_Page/widgets/case_widget.dart';

class CasesPage extends StatelessWidget {
  const CasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;

    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    TextStyle pointStyle = GoogleFonts.dmSerifDisplay(
      color: textColor,
      fontSize: p + 5,
      fontWeight: FontWeight.w400,
    );

    return FadeIn(
      child: Column(
        children: [
          const Gap(120),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cases we’ve\nhandled in the past',
                  style: TextStyle(
                    color: textColor,
                    fontSize: h1,
                    fontFamily: 'Helvetica Neue LT Arabic',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(60),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CaseWidget(
                      image: 'assets/images/cases_Images/cases1.png',
                      title: 'Naturalization in the US',
                      subTitle:
                          'We specialize in guiding clients through the naturalization process, offering dedicated support from application to interview. Our services include accompanying clients to their interviews and ensuring clarity with our proficient Arabic interpreters.',
                      onTap: () {
                        context
                            .read<PageRoutingCubit>()
                            .currentPage(const CaseDetail(), 'CaseDetail');
                        context.read<CaseDetailsCubit>().caseDetails(
                              'Naturalization in the US',
                              "At our firm, we excel in assisting clients through every step of the naturalization process, ensuring they navigate it smoothly. From initial application submission to interview preparation, we offer comprehensive support tailored to their needs. Our dedicated team stands by their side, providing expert guidance and peace of mind. We accompany clients to their interviews, ensuring they feel confident and well-prepared. With our skilled Arabic interpreters, language barriers are effectively bridged, ensuring clear communication throughout. Count on us to make your naturalization journey as seamless and successful as possible.",
                              'assets/images/cases_Images/cases1.png',
                              'December, 11 2022 - January, 9 2023',
                            );
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(70),
                        CaseWidget(
                          image: 'assets/images/cases_Images/cases2.png',
                          title: 'Establishing a New Company in the US',
                          subTitle:
                              "We provided our musician client with comprehensive guidance throughout the process of establishing her business, offering detailed consultations tailored to her new venture's needs. Our support ensured she navigated each step confidently, from initial planning to operational setup and beyond.",
                          onTap: () {
                            context
                                .read<PageRoutingCubit>()
                                .currentPage(const CaseDetail(), 'CaseDetail');
                            context.read<CaseDetailsCubit>().caseDetails(
                                  'Establishing a New Company in the US',
                                  "We provided comprehensive guidance to our musician client, assisting her throughout the entire process of establishing her business. Our support included detailed consultations tailored to her new venture's specific needs. We helped her with initial planning, ensuring she had a solid foundation. Our team guided her through legal requirements and business registration. We offered advice on marketing strategies and audience engagement. Throughout the setup phase, we provided continuous support and feedback. Our assistance ensured she confidently navigated every step of her business journey.",
                                  'assets/images/cases_Images/cases2.png',
                                  'December, 11 2022 - January, 9 2023',
                                );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CaseWidget(
                      image: 'assets/images/cases_Images/cases3.png',
                      title: 'Green Card',
                      subTitle:
                          "We submitted an application for our client to obtain her green card and facilitated the establishment of her marriage in the US.",
                      onTap: () {
                        context
                            .read<PageRoutingCubit>()
                            .currentPage(const CaseDetail(), 'CaseDetail');
                        context.read<CaseDetailsCubit>().caseDetails(
                              'Green Card',
                              "We submitted a green card application for our client and facilitated the establishment of her marriage in the US. Our comprehensive support ensured all legal requirements were met, providing peace of mind throughout the process. We guided her through documentation and interview preparation, ensuring she was well-prepared. Our dedicated team assisted in gathering and organizing all necessary paperwork. We provided continuous updates and clear communication. Our client felt supported and confident at every stage. We ensured a seamless and successful experience from start to finish.",
                              'assets/images/cases_Images/cases3.png',
                              'December, 11 2022 - January, 9 2023',
                            );
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(70),
                        CaseWidget(
                          image: 'assets/images/cases_Images/cases4.png',
                          title: 'Temporary Protection Status (TPS )',
                          subTitle:
                              'Comprehensive Support for Temporary Protected Status (TPS) Applications',
                          onTap: () {
                            context
                                .read<PageRoutingCubit>()
                                .currentPage(const CaseDetail(), 'CaseDetail');
                            context.read<CaseDetailsCubit>().caseDetails(
                                  'Temporary Protection Status (TPS )',
                                  "At Istasherni, we provided comprehensive support for individuals applying for Temporary Protected Status (TPS). Our services included personalized consultations to assess eligibility, assistance with completing and submitting necessary documentation, and guidance throughout the application process. We ensured that applicants understood their rights and obligations under TPS, offering legal advice and representation when needed. By streamlining the application process and offering continuous support, Istasherni helped numerous individuals secure TPS, providing them with temporary relief and protection.",
                                  'assets/images/cases_Images/cases4.png',
                                  'December, 11 2022 - January, 9 2023',
                                );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CaseWidget(
                      image: 'assets/images/cases_Images/cases5.png',
                      title: 'Immigrant visa',
                      subTitle:
                          "Expert Assistance for Immigrant Visa Applications",
                      onTap: () {
                        context
                            .read<PageRoutingCubit>()
                            .currentPage(const CaseDetail(), 'CaseDetail');
                        context.read<CaseDetailsCubit>().caseDetails(
                              'Immigrant visa',
                              "At Istasherni, we provided expert assistance to individuals seeking immigrant visas. Our services included thorough consultations to determine eligibility, help with gathering and preparing necessary documentation, and step-by-step guidance throughout the visa application process. We offered legal advice to navigate complex immigration laws and represented clients in interactions with immigration authorities. By ensuring accurate and timely submissions, Istasherni helped many individuals successfully obtain their immigrant visas, facilitating their journey towards a new life.",
                              'assets/images/cases_Images/cases5.png',
                              'December, 11 2022 - January, 9 2023',
                            );
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(70),
                        CaseWidget(
                          image: 'assets/images/cases_Images/cases6.png',
                          title: 'Non immigrant visa',
                          subTitle:
                              'Specialized Support for Non-Immigrant Visa Applications',
                          onTap: () {
                            context
                                .read<PageRoutingCubit>()
                                .currentPage(const CaseDetail(), 'CaseDetail');
                            context.read<CaseDetailsCubit>().caseDetails(
                                  'Non immigrant visa',
                                  "At Istasherni, we provided specialized support for individuals applying for non-immigrant visas. Our services included personalized consultations to assess visa eligibility, meticulous assistance with completing and submitting required documentation, and comprehensive guidance through each stage of the application process. We offered expert legal advice to navigate the complexities of visa regulations and represented clients in their interactions with immigration authorities. By ensuring accurate applications and timely submissions, Istasherni helped numerous individuals successfully obtain their non-immigrant visas, enabling them to achieve their short-term goals abroad.",
                                  'assets/images/cases_Images/cases6.png',
                                  'December, 11 2022 - January, 9 2023',
                                );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(sectionGap + gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth / 3,
                      height: screenHeight / 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/People/marwa.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 2.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4 years being\nan Lawyer',
                            style: GoogleFonts.dmSerifDisplay(
                              color: textColor,
                              fontSize: h1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(10),
                          Container(
                            color: Colors.grey,
                            width: screenWidth / 2.3,
                            height: 3,
                          ),
                          const Gap(10),
                          Text('Lead cases to success', style: pointStyle),
                          Text('Raised Awareness', style: pointStyle),
                          Text('Provided Ongoing Legal Support',
                              style: pointStyle),
                          Text('Improved Application Accuracy',
                              style: pointStyle)
                        ],
                      ),
                    )
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
      ),
    );
  }
}
