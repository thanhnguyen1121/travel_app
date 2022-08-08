import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_title_and_view_all_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

class MessageTitleHeaderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.theme.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: AppTitleAndViewAllWidget(
        title: S.current.messages,
        showViewAll: false,
        trailingIcon: Assets.icons.icEdit.svg(width: 24, height: 24),
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
