import 'package:flutter/material.dart';
import 'package:flutter_application/constants/app_colors.dart';
import 'package:flutter_application/utils/context_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemMoreInfoWidget extends StatelessWidget {
  final String icon;
  final String title;

  const ItemMoreInfoWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24)
          .copyWith(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 14,
          ),
          Text(
            title,
            style: context.textTheme.bodyText1,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: AppColors.h7D848D,
          )
        ],
      ),
    );
  }
}
