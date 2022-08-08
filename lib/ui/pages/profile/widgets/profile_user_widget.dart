import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/domain/entity/user_model.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

class ProfileUserWidget extends StatelessWidget {
  final UserModel userModel;

  const ProfileUserWidget({Key? key, required this.userModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: Image.asset(
            userModel.userAvatar ?? S.current.default_image,
            width: 96,
            height: 96,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          userModel.userName ?? S.current.no_data,
          style: context.textTheme.headline6,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          userModel.userEmail ?? S.current.no_data,
          style: context.textTheme.bodyText2,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            color: context.theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(
              16,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.hBDC6D3.withOpacity(0.12),
                blurRadius: 16,
                offset: const Offset(0, 6),
              )
            ],
          ),
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Reward Points",
                      style:
                          context.textTheme.bodyText1?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      (userModel.userRewardPoint ?? 0).toString(),
                      style: context.textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.h0D6EFD),
                    )
                  ],
                ),
              ),
              VerticalDivider(
                thickness: 2,
                color: context.theme.colorScheme.onTertiaryContainer,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Travel Trips",
                      style:
                          context.textTheme.bodyText1?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      (userModel.userRewardPoint ?? 0).toString(),
                      style: context.textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.h0D6EFD),
                    )
                  ],
                ),
              ),
              VerticalDivider(
                thickness: 2,
                color: context.theme.colorScheme.onTertiaryContainer,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bucket List",
                      style:
                          context.textTheme.bodyText1?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      (userModel.userRewardPoint ?? 0).toString(),
                      style: context.textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.h0D6EFD),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
