import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/constants/app_enum.dart';
import 'package:flutter_application/domain/entity/user_message_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

class UserStatusWidget extends StatelessWidget {
  final UserMessageModel model;

  const UserStatusWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 55,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  model.userAvatar ?? S.current.default_image,
                  width: 55,
                  height: 55,
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 2,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: model.userStatus == UserStatus.busy
                      ? AppColors.hFFD336
                      : model.userStatus == UserStatus.offline
                          ? AppColors.hFE2352
                          : AppColors.h19B000,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.solid,
                      spreadRadius: 2,
                      color: context.colorScheme.primary,
                      offset: const Offset(0, 0),
                    ),
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 2,
                      color: context.colorScheme.onTertiary,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
