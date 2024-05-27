import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/MobileScreen/screen_type_cubit.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/UI/Screens/Landing_Page/Mobile/mobile_landing_page.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';
import 'package:istasherni/UI/widgets/app_bar.dart';
import 'package:istasherni/UI/widgets/mobile_app_bar.dart';

class ScreenType extends StatefulWidget {
  const ScreenType({super.key});

  @override
  State<ScreenType> createState() => _ScreenTypeState();
}

class _ScreenTypeState extends State<ScreenType> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    context
        .read<ScreenTypeCubit>()
        .iSMobileScreen(screenWidth > 390 ? false : true);

    context.read<PageRoutingCubit>().currentPage(
        screenWidth < 380 ? MobileLandingPage() : const LandingPage());

    return screenWidth < 380 ? MobileAppBar() : const AppBarMain();
  }
}
