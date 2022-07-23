import 'package:flutter/material.dart';

import 'date_weekly_widget.dart';

class HeaderWeeklyCalenderWidget extends SliverPersistentHeaderDelegate {
  final ValueChanged<DateTime>? onSelectedTime;

  HeaderWeeklyCalenderWidget({this.onSelectedTime});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
      child: DateWeeklyWidget(onSelectedTime: onSelectedTime),
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
