import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/MobileScreen/screen_type_cubit.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/UI/Screens/Landing_Page/Mobile/mobile_landing_page.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';
import 'package:istasherni/UI/widgets/MobileWidgets/mobile_app_bar.dart';
import 'package:istasherni/UI/widgets/app_bar.dart';

class ScreenType extends StatefulWidget {
  const ScreenType({super.key});

  @override
  State<ScreenType> createState() => _ScreenTypeState();
}

class _ScreenTypeState extends State<ScreenType> {
  double mobileSize = 433;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    context
        .read<ScreenTypeCubit>()
        .iSMobileScreen(screenWidth > mobileSize ? false : true);

    context.read<PageRoutingCubit>().currentPage(
        screenWidth < mobileSize
            ? const MobileLandingPage()
            : const LandingPage(),
        screenWidth < mobileSize ? 'MobileLandingPage' : 'LandingPage');

    return screenWidth < mobileSize ? MobileAppBar() : const AppBarMain();
  }
}
