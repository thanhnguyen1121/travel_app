import 'package:flutter/material.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

import '../../../constants/app_colors.dart';

class AppTitleAndViewAllWidget extends StatelessWidget {
  final String title;
  const AppTitleAndViewAllWidget({Key? key, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.textTheme.bodyText1
              ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Text(
          S.current.view_all,
          style: context.textTheme.subtitle2
              ?.copyWith(color: AppColors.h0D6EFD, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
