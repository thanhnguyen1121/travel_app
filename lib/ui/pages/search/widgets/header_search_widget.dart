import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/widgets/design_system/search_text_form_field.dart';

class HeaderSearchWidget extends SliverPersistentHeaderDelegate {
  final ValueChanged<String>? onValueChange;
  final TextEditingController searchTextController;
  Timer debounce;

  HeaderSearchWidget(
      {required this.debounce,
      required this.searchTextController,
      this.onValueChange});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: SearchTextFormField(
        textEditingController: searchTextController,
        onChanged: _onSearchChanged,
        suffixIcon: Assets.icons.icMicrophone.svg(width: 24, height: 24),
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  _onSearchChanged(String query) {
    if (debounce.isActive) {
      debounce.cancel();
    }
    debounce = Timer(const Duration(milliseconds: 800), () {
      // do something with query
      onValueChange?.call(query);
    });
  }
}
