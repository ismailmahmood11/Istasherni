import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/Checkout/stripe_checkout_web.dart';
import 'package:istasherni/Cubit/Consultation/ConsultationValues/Section2/consultation_values_section2_cubit.dart';
import 'package:istasherni/Cubit/Total/total_cubit.dart';

import '../../../../Cubit/Consultation/ConsultationRouting/consultation_routing_cubit.dart';
import '../../../const.dart';
import '../../Landing_Page/widgets/main_button.dart';
import 'consultation_section_2.dart';

class ConsultationSection3 extends StatelessWidget {
  const ConsultationSection3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p = screenWidth / pSize;
    double h2 = screenWidth / h2Size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
      child: FadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: GoogleFonts.dmSerifDisplay(
                color: textColor,
                fontSize: p + 4,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,
                  width: 1.5,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: BlocBuilder<TotalCubit, TotalInitial>(
                  builder: (context, state) {
                    return Text(
                      '\$${state.total.toString()}',
                      style: GoogleFonts.dmSans(
                        color: textColor,
                        fontSize: p,
                        fontWeight: FontWeight.w400,
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainButton(
                  title: 'Previous',
                  onTap: () {
                    context
                        .read<ConsultationRoutingCubit>()
                        .consultationRouting(ConsultationSection2(), 2);
                  },
                ),
                BlocBuilder<ConsultationValuesSection2Cubit,
                    ConsultationValuesSection2Initial>(
                  builder: (context, state) {
                    return MainButton(
                        title: 'Continue',
                        onTap: () => redirectToCheckout(
                            state.priceID, state.page == 0 ? 1 : state.page));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
