import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:istasherni/UI/Screens/Landing_Page/Mobile/mobile_landing_page.dart';

import '../../Cubit/PageRouting/page_routing_cubit.dart';
import '../../Cubit/SrollPosition/scroll_position_cubit.dart';
import '../const.dart';

class MobileAppBar extends StatelessWidget {
  MobileAppBar({super.key});

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<PageRoutingCubit>()
                              .currentPage(const MobileLandingPage());
                        },
                        child: Image.asset(
                          'assets/images/logo/logo_simple.png',
                        ),
                      ),
                      const Icon(
                        Icons.list,
                        color: textColor,
                        size: 30,
                      ),
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
