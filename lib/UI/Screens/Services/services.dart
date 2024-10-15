import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/Cubit/Language%20Selector/language_cubit.dart';
import 'package:istasherni/UI/Screens/Sections/istasherni_intro.dart';
import 'package:istasherni/UI/Screens/Sections/review_section.dart';
import 'package:istasherni/UI/Screens/Services/widgets/services_widget.dart';
import 'package:istasherni/UI/const.dart';
import 'package:istasherni/UI/widgets/Footer/footer.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double h1 = screenWidth / h1Size;
    // double h2 = screenWidth / h2Size;
    double p = screenWidth / pSize;
    screenWidth >= 1300 ? p = 20 : p = screenWidth / pSize;

    return FadeIn(
      child: Column(
        children: [
          const Gap(200),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
              child: BlocBuilder<LanguageCubit, LanguageInitial>(
                builder: (context, state) {
                  if (state.language == 'en') {
                    return FadeIn(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-General Legal Services',
                            para: 'Services Offered:\n\n'
                                '1. Notary Public Services: Available both in-person and online.\n\n'
                                '2. Certified Translation Services: Specializing in Arabic, English, and Spanish.\n\n'
                                '3. Legal Representation: Providing assistance as your trusted legal representative.\n\n'
                                '4. Power of Attorney: Facilitating the drafting and execution of power of attorney documents.',
                          ),

                          // ServicesWidget(
                          //   h1: h1,
                          //   p: p,
                          //   title: 'General Legal Services',
                          //   para: 'Public Notary Services (In-Person & Online)\n\n'
                          //       'Certified Translation Services:\n\n'
                          //       '- Arabic\n'
                          //       '- English\n'
                          //       '- Spanish\n\n'
                          //       'Legal Representation:\n\n'
                          //       '- Power of Attorney',
                          // ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Immigration Services',
                            para: '1. Immigration Document Preparation\n\n'
                                '2. Adjustment of Status\n\n'
                                '3. Citizenship',
                          ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Business Services',
                            para: '1. Business Structure and Registration:\n\n'
                                '2. Choosing the right legal structure for an online business.\n\n'
                                '3. Assistance with business registration and compliance.\n\n'
                                '4. Terms of Service and Privacy Policies:\n\n'
                                '5. Drafting and reviewing terms of service and privacy policies.\n\n'
                                '6. Contract Drafting and Review',
                          ),
                          const Gap(gap),

                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Immigrant visa',
                            para: '1. Family-Based Immigrant Visas\n\n'
                                '2. Employment-Based Immigrant Visas\n\n'
                                '3. Diversity Visa (DV) Program\n\n',
                          ),
                          const Gap(gap),

                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Non immigrant visa',
                            para: '1. Business and Tourism\n\n'
                                '2. Work Visas\n\n'
                                '3. Student and Exchange Visitor Visas\n\n',
                          ),
                        ],
                      ),
                    );
                  } else if (state.language == 'ar') {
                    return FadeIn(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            align: TextAlign.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            title: 'الخدمات القانونية العامة',
                            para:
                                'التوثيق القانوني( شخصياً- اون لاين)\nخدمات الترجمة المعتمدة\nاللغة العربية\nاللغة الإنجليزي\nاللغة الإسباني\nالتمثيل القانوني\nالتفويض القانوني والوكالات القانونية',
                          ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            align: TextAlign.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            title: 'خدمات الهجرة',
                            para:
                                'اكمال وتعبئة استمارات ادارة الهجرة\nالتقديم للبطاقة الخضراء( القرين كارد)\nالتقديم للجنسية الأمريكية',
                          ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            align: TextAlign.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            title: 'خدمات الأعمال',
                            para:
                                '\nتسجيل  الشركات/ المؤسسات والعمل على الهيكل التجاري'
                                '\nاختيار الهيكل القانوني المناسب للأعمال التجارية'
                                '\nالمساعدة في تسجيل الأعمال التجارية وتمثيلها قانونياً\nفيما يتعلق بشروط الخدمة وسياسات الخصوصية\nصياغة ومراجعة شروط الخدمة وسياسات الخصوصية\nصياغة العقود ومراجعتها',
                          ),
                          const Gap(gap),
                        ],
                      ),
                    );
                  } else if (state.language == 'es') {
                    return FadeIn(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Servicios Legales en General',
                            para:
                                'Notario Público ( en Persona - en Línea)\nServicios de Traducciones Juradas :\nÁrabe\nInglés\nEspañol\nRepresentante Legal\nPoder Legal',
                          ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Servicios Inmigratorios',
                            para:
                                'Preparación de Documentos Inmigratorios\nAjuste de Estado\nCiudadanía',
                          ),
                          const Gap(gap),
                          ServicesWidget(
                            h1: h1,
                            p: p,
                            title: '-Servicios Comerciales',
                            para:
                                'Estructura Empresarial y Registro:\n1. elegir la estructura legal adecuada para un negocio en línea.\n2. Asistencia con el registro y cumplimiento de empresas.\n\nTérminos de Servicio y Políticas de Privacidad:\n1. Redacción y revisión de términos de servicio y políticas de privacidad.\n\nRedacción y revisión de contratos',
                          ),
                          const Gap(gap),
                        ],
                      ),
                    );
                  }
                  return FadeIn(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ServicesWidget(
                          h1: h1,
                          p: p,
                          title: '-General Legal Services',
                          para: 'Services Offered:\n\n'
                              '1. Notary Public Services: Available both in-person and online.\n\n'
                              '2. Certified Translation Services: Specializing in Arabic, English, and Spanish.\n\n'
                              '3. Legal Representation: Providing assistance as your trusted legal representative.\n\n'
                              '4. Power of Attorney: Facilitating the drafting and execution of power of attorney documents.',
                        ),

                        // ServicesWidget(
                        //   h1: h1,
                        //   p: p,
                        //   title: 'General Legal Services',
                        //   para: 'Public Notary Services (In-Person & Online)\n\n'
                        //       'Certified Translation Services:\n\n'
                        //       '- Arabic\n'
                        //       '- English\n'
                        //       '- Spanish\n\n'
                        //       'Legal Representation:\n\n'
                        //       '- Power of Attorney',
                        // ),
                        const Gap(gap),
                        ServicesWidget(
                          h1: h1,
                          p: p,
                          title: '-Immigration Services',
                          para: '1. Immigration Document Preparation\n\n'
                              '2. Adjustment of Status\n\n'
                              '3. Citizenship',
                        ),
                        const Gap(gap),
                        ServicesWidget(
                          h1: h1,
                          p: p,
                          title: '-Business Services',
                          para: '1. Business Structure and Registration:\n\n'
                              '2. Choosing the right legal structure for an online business.\n\n'
                              '3. Assistance with business registration and compliance.\n\n'
                              '4. Terms of Service and Privacy Policies:\n\n'
                              '5. Drafting and reviewing terms of service and privacy policies.\n\n'
                              '6. Contract Drafting and Review',
                        ),
                        const Gap(gap),

                        ServicesWidget(
                          h1: h1,
                          p: p,
                          title: '-Immigrant visa',
                          para: '1. Family-Based Immigrant Visas\n\n'
                              '2. Employment-Based Immigrant Visas\n\n'
                              '3. Diversity Visa (DV) Program\n\n',
                        ),
                        const Gap(gap),

                        ServicesWidget(
                          h1: h1,
                          p: p,
                          title: '-Non immigrant visa',
                          para: '1. Business and Tourism\n\n'
                              '2. Work Visas\n\n'
                              '3. Student and Exchange Visitor Visas\n\n',
                        ),
                      ],
                    ),
                  );
                },
              ),
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
