import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/lib.dart';

class UserLikeWidget extends StatelessWidget {
  final int count;

  const UserLikeWidget({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          right: 50,
          child: Align(
            alignment: Alignment.topRight,
            child: Assets.images.imgUserOne.image(width: 24, height: 24),
          ),
        ),
        Positioned.fill(
          right: 38,
          child: Align(
            alignment: Alignment.topRight,
            child: Assets.images.imgUserTwo.image(width: 24, height: 24),
          ),
        ),
        Positioned.fill(
          right: 26,
          child: Align(
            alignment: Alignment.topRight,
            child: Assets.images.imgUserThree.image(width: 24, height: 24),
          ),
        ),
        Positioned.fill(
          right: 14,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: AppColors.hE5F4FF,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "+$count",
                textAlign: TextAlign.center,
                style: context.textTheme.caption
                    ?.copyWith(fontSize: 11, height: 13 / 11),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
