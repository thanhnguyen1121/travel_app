import 'package:flutter/material.dart';

import 'message_search_header_with_anim_widget.dart';

class MessageSearchHeaderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const MessageSearchHeaderWithAnimWidget();
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
