import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/calendar/calendar_page.dart';
import 'package:flutter_application/ui/pages/home/home_page.dart';
import 'package:flutter_application/ui/pages/messages/message_page.dart';
import 'package:flutter_application/ui/pages/profile/profile_page.dart';
import 'package:flutter_application/ui/pages/search/search_page.dart';
import 'package:flutter_application/ui/widgets/bottom_navigation/bottom_navigation.dart';

class MainPage extends StatelessWidget {
  static const String routerName = "MainPage";
  int _currentPage = 0;

  MainPage({Key? key}) : super(key: key);
  final PageController pageController = PageController();
  late final StreamController<int> bottomNavController =
      StreamController.broadcast()
        ..stream.listen(
          (event) {
            if (_currentPage != event) {
              pageController.animateToPage(event,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.decelerate);
            }
          },
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          if (_currentPage != index) {
            bottomNavController.sink.add(index);
            _currentPage = index;
          }
        },
        children: const [
          HomePage(),
          CalendarPage(),
          SearchPage(),
          MessagePage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar:
          BottomNavigation(builderController: bottomNavController),
    );
  }
}
