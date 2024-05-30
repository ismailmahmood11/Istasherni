import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/Cubit/PageRouting/page_routing_cubit.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';

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
                          'assets/images/logo/istasherni_logo.png',
                          width: 180,
                        ),
                      ),
                      AppBarNavigationBar(),
                      Container(
                        height: 40,
                        decoration: ShapeDecoration(
                          color: textColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(Icons.phone,
                                    color: Colors.white, size: 17),
                                Gap(7),
                                Text(
                                  'Call us',
                                  style: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
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
