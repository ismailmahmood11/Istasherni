import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';

import '../Screens/Landing_Page/Widgets/navigation_bar.dart';
import '../const.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({super.key});

  @override
  State<AppBarMain> createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  double scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          NotificationListener(
            onNotification: (notification) {
              if (notification is ScrollUpdateNotification) {
                setState(() {
                  scrollPosition = notification.metrics.pixels;
                });
              }

              return true;
            },
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  LandingPage(),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            duration: const Duration(milliseconds: animationDuration),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: scrollPosition == 0
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
              padding: EdgeInsets.symmetric(horizontal: screenWidth / padding1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/istasherni_logo.png',
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
                            Icon(Icons.phone, color: Colors.white, size: 17),
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
          ),
        ],
      ),
    );
  }
}
