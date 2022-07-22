import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/utils/context_extension.dart';

import 'item_bottom_widget.dart';

class BottomNavigation extends StatelessWidget {
  final StreamController<int> builderController;
  final colorSelected = const Color(0xff0D6EFD);
  final colorUnSelected = const Color(0xff7D848D);

  const BottomNavigation({Key? key, required this.builderController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.elliptical(200, 30),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.tertiary,
            offset: const Offset(-6, 0),
            blurRadius: 16,
          )
        ],
        color: context.colorScheme.secondaryContainer,
      ),
      child: StreamBuilder<int>(
        stream: builderController.stream,
        builder: (context, snapshot) {
          int currentIndex = 0;
          if (snapshot.hasData) {
            currentIndex = snapshot.requireData;
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemBottomWidget(
                icon: Assets.icons.icHome.svg(
                  color: currentIndex == 0 ? colorSelected : colorUnSelected,
                ),
                title: S.current.home,
                isSelected: currentIndex == 0,
                colorSelected: colorSelected,
                colorUnselected: colorUnSelected,
                onTap: () {
                  builderController.sink.add(0);
                },
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: ItemBottomWidget(
                  icon: Assets.icons.icCalendar.svg(
                    color: currentIndex == 1 ? colorSelected : colorUnSelected,
                  ),
                  title: S.current.calendar,
                  isSelected: currentIndex == 1,
                  colorSelected: colorSelected,
                  colorUnselected: colorUnSelected,
                  onTap: () {
                    builderController.sink.add(1);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff0D6EFD)),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkResponse(
                    onTap: () {
                      builderController.sink.add(2);
                    },
                    radius: 26,
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      child: Assets.icons.icSearch.svg(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: ItemBottomWidget(
                  icon: Assets.icons.icMessage.svg(
                    color: currentIndex == 3 ? colorSelected : colorUnSelected,
                  ),
                  title: S.current.messages,
                  isSelected: currentIndex == 3,
                  colorSelected: colorSelected,
                  colorUnselected: colorUnSelected,
                  onTap: () {
                    builderController.sink.add(3);
                  },
                ),
              ),
              ItemBottomWidget(
                icon: Assets.icons.icProfile.svg(
                  color: currentIndex == 4 ? colorSelected : colorUnSelected,
                ),
                title: S.current.profile,
                isSelected: currentIndex == 4,
                colorSelected: colorSelected,
                colorUnselected: colorUnSelected,
                onTap: () {
                  builderController.sink.add(4);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
