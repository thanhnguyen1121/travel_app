import 'package:flutter/material.dart';

class AppPageRoute extends MaterialPageRoute {
  AppPageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    late final Animation<Offset> _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ));
    // return FadeTransition(
    //   opacity: animation,
    //   child: SlideTransition(
    //     position: _offsetAnimation,
    //     child: child,
    //   ),
    // );
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
