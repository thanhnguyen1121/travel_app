import 'package:flutter/material.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

import '../../../constants/app_colors.dart';

class AppTitleAndViewAllWidget extends StatefulWidget {
  final String title;
  final bool showViewAll;

  const AppTitleAndViewAllWidget(
      {Key? key, required this.title, this.showViewAll = true})
      : super(key: key);

  @override
  State<AppTitleAndViewAllWidget> createState() =>
      _AppTitleAndViewAllWidgetState();
}

class _AppTitleAndViewAllWidgetState extends State<AppTitleAndViewAllWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1000));

  late final Animation<Offset> offset =
      Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(
    CurvedAnimation(parent: animationController, curve: Curves.easeIn),
  );

  @override
  initState() {
    super.initState();
    repeatOne();
  }

  @override
  void dispose() {
    animationController.forward();
    super.dispose();
  }

  Future<void> repeatOne() async {
    await animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: context.textTheme.bodyText1
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          if (widget.showViewAll == true)
            Text(
              S.current.view_all,
              style: context.textTheme.subtitle2?.copyWith(
                  color: AppColors.h0D6EFD, fontWeight: FontWeight.w300),
            )
        ],
      ),
    );
  }
}
