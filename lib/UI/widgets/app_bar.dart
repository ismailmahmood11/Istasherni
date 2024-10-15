import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';

import '../../Cubit/Language Selector/language_cubit.dart';
import '../const.dart';
import 'navigation_bar.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                  return ListView(
                    controller: scrollController,
                    children: [
                      state.currentPage,
                    ],
                  );
                },
              ),
            ),
          ),
          BlocBuilder<ScrollPositionCubit, ScrollPositionInitial>(
            builder: (context, state) {
              return AnimatedContainer(
                padding: const EdgeInsets.symmetric(vertical: 15),
                duration: const Duration(milliseconds: animationDuration),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: state.scrollPosition == 0
                      ? []
                      : [
                          const BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10,
                            spreadRadius: 0,
                          ),
                        ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth / padding1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<PageRoutingCubit>()
                              .currentPage(const LandingPage(), 'LandingPage');
                        },
                        child: Image.asset(
                          'assets/images/logo/full_logo.png',
                          width: 250,
                        ),
                      ),
                      AppBarNavigationBar(),
                      Container(
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Center(
                            child: BlocBuilder<LanguageCubit, LanguageInitial>(
                              builder: (context, state) {
                                return FadeIn(
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (state.language == 'ar') {
                                            context
                                                .read<LanguageCubit>()
                                                .languageSelector('en');
                                          } else {
                                            context
                                                .read<LanguageCubit>()
                                                .languageSelector('ar');
                                          }
                                        },
                                        child: Text(
                                          state.language == "ar" ? "EN" : 'AR',
                                          style: const TextStyle(
                                            color: textColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        '  /  ',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          if (state.language == 'es') {
                                            context
                                                .read<LanguageCubit>()
                                                .languageSelector('en');
                                          } else {
                                            context
                                                .read<LanguageCubit>()
                                                .languageSelector('es');
                                          }
                                        },
                                        child: Text(
                                          state.language == "es" ? 'EN' : 'ES',
                                          style: const TextStyle(
                                            color: textColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
