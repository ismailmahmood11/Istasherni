import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:istasherni/UI/Screens/Cases_Page/Mobile/mobile_cases_page.dart';
import 'package:istasherni/UI/Screens/Landing_Page/Mobile/mobile_landing_page.dart';
import 'package:istasherni/UI/Screens/Services/Mobile/mobile_services.dart';

import '../../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../../Cubit/SrollPosition/scroll_position_cubit.dart';
import '../../Screens/Clients/Mobile/mobile_clients_page.dart';
import '../../const.dart';
import 'mobile_navbar.dart';

class MobileAppBar extends StatelessWidget {
  MobileAppBar({super.key});

  final ScrollController scrollController = ScrollController();

  bool showNavBar = false;

  TextStyle navBarStyle = GoogleFonts.inter(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BlocListener<PageRoutingCubit, PageRoutingInitial>(
            listener: (context, state) {
              scrollController.jumpTo(0);
            },
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification) {
                  context
                      .read<ScrollPositionCubit>()
                      .scrollPosition(notification.metrics.pixels);
                }

                return true;
              },
              child: BlocBuilder<PageRoutingCubit, PageRoutingInitial>(
                builder: (context, state) {
                  return Expanded(
                    child: ListView(
                      controller: scrollController,
                      children: [
                        BlocBuilder<ScrollPositionCubit, ScrollPositionInitial>(
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  BlocBuilder<PageRoutingCubit,
                                      PageRoutingInitial>(
                                    builder: (context, state) {
                                      return AnimatedContainer(
                                        duration: const Duration(
                                            milliseconds: animationDuration),
                                        height:
                                            state.isMobileNavPressed ? 50 : 0,
                                        child: AnimatedOpacity(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          opacity: state.isMobileNavPressed
                                              ? 1
                                              : 0.0000000001,
                                          child: Visibility(
                                            visible: state.isMobileNavPressed
                                                ? true
                                                : false,
                                            child: BlocBuilder<PageRoutingCubit,
                                                PageRoutingInitial>(
                                              builder: (context, state) {
                                                return Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Gap(15),
                                                    MobileNavbarWidgets(
                                                      title: 'Home',
                                                      style:
                                                          navBarStyle.copyWith(
                                                        color: state.pageName ==
                                                                'MobileLandingPage'
                                                            ? mainThemeColor
                                                            : textColor,
                                                      ),
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .isMobileNavPressed(
                                                                false);
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .currentPage(
                                                                const MobileLandingPage(),
                                                                'MobileLandingPage');
                                                      },
                                                    ),
                                                    const SizedBox(width: 23),
                                                    MobileNavbarWidgets(
                                                      title: 'Services',
                                                      style:
                                                          navBarStyle.copyWith(
                                                        color: state.pageName ==
                                                                'MobileServices'
                                                            ? mainThemeColor
                                                            : textColor,
                                                      ),
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .currentPage(
                                                                const MobileServices(),
                                                                'MobileServices');
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .isMobileNavPressed(
                                                                false);
                                                      },
                                                    ),
                                                    const SizedBox(width: 23),
                                                    MobileNavbarWidgets(
                                                      title: 'Cases',
                                                      style:
                                                          navBarStyle.copyWith(
                                                        color: state.pageName ==
                                                                'MobileCasesPage'
                                                            ? mainThemeColor
                                                            : textColor,
                                                      ),
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .currentPage(
                                                                const MobileCasesPage(),
                                                                'MobileCasesPage');
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .isMobileNavPressed(
                                                              false,
                                                            );
                                                      },
                                                    ),
                                                    const SizedBox(width: 23),
                                                    MobileNavbarWidgets(
                                                      title: 'Clients',
                                                      style:
                                                          navBarStyle.copyWith(
                                                        color: state.pageName ==
                                                                'MobileClientsPage'
                                                            ? mainThemeColor
                                                            : textColor,
                                                      ),
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .currentPage(
                                                                const MobileClientsPage(),
                                                                'MobileClientsPage');
                                                        context
                                                            .read<
                                                                PageRoutingCubit>()
                                                            .isMobileNavPressed(
                                                              false,
                                                            );
                                                      },
                                                    ),
                                                    const Gap(15),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            context
                                                .read<PageRoutingCubit>()
                                                .currentPage(
                                                    const MobileLandingPage(),
                                                    'MobileLandingPage');
                                          },
                                          child: Image.asset(
                                            'assets/images/logo/logo_simple.png',
                                          ),
                                        ),
                                        BlocBuilder<PageRoutingCubit,
                                            PageRoutingInitial>(
                                          builder: (context, state) {
                                            return GestureDetector(
                                              onTap: () {
                                                context
                                                    .read<PageRoutingCubit>()
                                                    .isMobileNavPressed(!state
                                                        .isMobileNavPressed);
                                              },
                                              child: SizedBox(
                                                height: 30,
                                                width: 200,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Icon(
                                                    state.isMobileNavPressed
                                                        ? Icons.close
                                                        : Icons.menu,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        state.currentPage,
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
