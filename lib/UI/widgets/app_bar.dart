import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/Cubit/SrollPosition/scroll_position_cubit.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

import '../const.dart';
import 'navigation_bar.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({super.key});

  @override
  State<AppBarMain> createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  bool isMousePad = false;

  void _handlePointerEvent(PointerEvent event) {
    if (event.kind == PointerDeviceKind.mouse) {
      setState(() {
        isMousePad = false;
      });
    } else if (event.kind == PointerDeviceKind.touch) {
      setState(() {
        isMousePad = true;
      });
    } else {
      setState(() {
        isMousePad = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Listener(
            onPointerDown: _handlePointerEvent,
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification) {
                  context
                      .read<ScrollPositionCubit>()
                      .scrollPosition(notification.metrics.pixels);
                }

                return true;
              },
              child: isMousePad
                  ? const SingleChildScrollView(
                      child: Column(
                        children: [
                          LandingPage(),
                        ],
                      ),
                    )
                  : DynMouseScroll(
                      durationMS: 600,
                      builder: (context, controller, physics) {
                        return ListView(
                          controller: controller,
                          physics: physics,
                          children: const [
                            LandingPage(),
                          ],
                        );
                      }),
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
                      Image.asset(
                        'assets/images/logo/istasherni_logo.png',
                        width: 180,
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
