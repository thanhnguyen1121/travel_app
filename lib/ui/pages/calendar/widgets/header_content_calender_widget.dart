import 'package:flutter/material.dart';
import 'package:flutter_application/ui/widgets/app_widgets/app_title_and_view_all_widget.dart';
import 'package:flutter_application/utils/context_extension.dart';

import '../../../../generated/l10n.dart';

class HeaderContentCalenderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.theme.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 16),
      child: AppTitleAndViewAllWidget(
        title: S.current.my_schedule,
      ),
    );
  }

  @override
  double get maxExtent => 44;

  @override
  double get minExtent => 44;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
