import 'package:flutter/material.dart';

import 'date_weekly_widget.dart';

class HeaderWeeklyCalenderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
      child: DateWeeklyWidget(),
    );
  }

  @override
  double get maxExtent => 208;

  @override
  double get minExtent => 208;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
