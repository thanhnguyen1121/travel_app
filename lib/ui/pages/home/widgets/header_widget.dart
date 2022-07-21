import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(duration: const Duration(seconds: 1), vsync: this);
  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: const Offset(-1.5, 0), end: const Offset(0, 0))
          .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

  Future<void> repeatOne() async {
    await controller.forward();
  }

  @override
  void initState() {
    super.initState();
    repeatOne();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: context.colorScheme.primaryContainer),
                  padding: const EdgeInsets.all(4).copyWith(right: 12),
                  child: Row(
                    children: [
                      Assets.images.imgUser.image(width: 37, height: 37),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Leonardo",
                        style: context.textTheme.bodyText2?.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Assets.icons.icNotication.svg(width: 24, height: 24),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              S.current.explore_the,
              style: context.textTheme.headline3
                  ?.copyWith(fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.beautiful,
                  style: context.textTheme.headline3
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      S.current.world,
                      style: context.textTheme.headline3?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.hFF7029),
                    ),
                    SizedBox(
                      width: 98,
                      child: Assets.icons.icOnboard
                          .svg(width: 98, fit: BoxFit.fitWidth),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
