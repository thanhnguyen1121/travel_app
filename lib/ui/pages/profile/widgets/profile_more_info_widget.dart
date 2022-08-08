import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/profile/widgets/item_more_info_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class ProfileMoreInfoWidget extends StatelessWidget {
  const ProfileMoreInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.hBDC6D3.withOpacity(0.12),
            blurRadius: 16,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Column(
        children: [
          ItemMoreInfoWidget(
              icon: Assets.icons.icProfile.path, title: "Profile"),
          Divider(
            height: 1,
            thickness: 1,
            color: context.theme.colorScheme.onTertiaryContainer,
          ),
          ItemMoreInfoWidget(
              icon: Assets.icons.icBookmark.path, title: "Bookmarked"),
          Divider(
            height: 1,
            thickness: 1,
            color: context.theme.colorScheme.onTertiaryContainer,
          ),
          ItemMoreInfoWidget(
              icon: Assets.icons.icPreviousTrips.path, title: "Previous Trips"),
          Divider(
            height: 1,
            thickness: 1,
            color: context.theme.colorScheme.onTertiaryContainer,
          ),
          ItemMoreInfoWidget(
              icon: Assets.icons.icSettings.path, title: "Settings"),
          Divider(
            height: 1,
            thickness: 1,
            color: context.theme.colorScheme.onTertiaryContainer,
          ),
          ItemMoreInfoWidget(
              icon: Assets.icons.icVersion.path, title: "Version"),
        ],
      ),
    );
  }
}
